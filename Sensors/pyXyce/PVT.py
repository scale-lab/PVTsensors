import os
import csv
import numpy as np
import matplotlib.pyplot as plt


class BrownPVT:

    def __init__(self, netlist_filename, model_filename, vsupply=1.8, iref=1e-06, temp=27, **kwargs):
        """Initializes object with netlist file, model file (.lib)
        and text input vsupply and iref parameters"""
        self.netlist_filename = netlist_filename
        self.model_filename = model_filename
        self.temperature = temp
        self.vsupply = vsupply
        self.iref = iref
        self.xyce_dir = kwargs.get('xyce_dir',r'C:\Program Files\Xyce 6.10 OPENSOURCE\bin')

    def info(self):
        """ Prints the files used to initialize the object"""
        print('Netlist Filename: ', self.netlist_filename)
        print('Model Filename: ', self.model_filename)
        print('Sensor Vsupply: ', self.vsupply)
        print('Sensor Iref: ', self.iref)
        print('Sensor Temperature: ', self.temperature)
        print('Xyce directory: ', self.xyce_dir)


    def _runanalysis(self, printnodes=None, params=None, meas=None, sweep=None):
        """Creates an Analysis.inc file which is then included in the
        netlist to run transient or temperature step w/transient analysis using xyce"""

        # ~~~~~~~~~~~~~~~~~~~~~~~~~
        if printnodes is None:
            # defaults
            printnodes = ['V(*)', 'I(*)', 'TEMP', 'Q_freq']
        print_line = '.print tran format=csv '+' '.join(printnodes)

        # ~~~~~~~~~~~~~~~~~~~~~~~~~
        if params is None:
            # defaults
            params={'initial_time':0.1e-9,
                    'final_time':1e-6,
                    'start_time':0,
                    'step_ceil':1e-9
                    }
        transient_line = ' '.join(['.TRAN',
                                   str(params['initial_time']),
                                   str(params['final_time']),
                                   str(params['start_time']),
                                   str(params['step_ceil'])
                                   ])

        # ~~~~~~~~~~~~~~~~~~~~~~~~~
        if meas is None:
            # defaults
            measure_line = ';No MEAS command'
            measure_options_line = ';No MEAS command'
        else:
            measure_line = ' '.join(['.MEASURE TRAN',
                                     meas['name'],
                                     meas['type'],
                                     meas['signal'],
                                     meas['other']
                                     ]);
            measure_options_line = '.OPTIONS MEASURE MEASPRINT=STDOUT'

        # ~~~~~~~~~~~~~~~~~~~~~~~~~
        if sweep is None:
            step_line = ';No STEP command'
            result_line=';no RESULT command'
        else:
            if sweep == {}:
                #defaults
                sweep={'type':'LIN',
                       'var':'TEMP',
                       'initial':0,
                       'final':100,
                       'step':20,
                       'result':'TEMP'
                       }
            step_line = ' '.join(['.STEP',
                                  str(sweep['type']),
                                  str(sweep['var']),
                                  str(sweep['initial']),
                                  str(sweep['final']),
                                  str(sweep['step'])
                                  ])
            result_line = ' '.join(['.RESULT',
                                    sweep['result']
                                    ])


        # Writing a few additional lines to the analysis file
        vsupply_line = 'V1 vdd gnd ' + str(self.vsupply)
        vdigital_supply_line = 'V2 vdd_pin gnd ' + str(self.vsupply)
        iref_line = 'I1 iref gnd ' + str(self.iref)
        model_include_line = '.INCLUDE ' + self.model_filename
        device_options_line = '.OPTIONS DEVICE TEMP='+str(self.temperature)



        # Opening csv and splittling lines to be able to write to each individual line
        with open('ANALYSIS.inc', 'r') as fin:
            ANALYSIS_inc = fin.read().splitlines(True)

        # Determining what each line in the overwritten ANALYSIS.inc will contain
        ANALYSIS_inc[0] = step_line + '\n'
        ANALYSIS_inc[1] = transient_line + '\n'
        ANALYSIS_inc[2] = measure_line + '\n'
        ANALYSIS_inc[3] = model_include_line + '\n'
        ANALYSIS_inc[4] = print_line + '\n'
        ANALYSIS_inc[5] = vsupply_line + '\n'
        ANALYSIS_inc[6] = vdigital_supply_line + '\n'
        ANALYSIS_inc[7] = iref_line + '\n'
        ANALYSIS_inc[8] = measure_options_line + '\n'
        ANALYSIS_inc[9] = device_options_line + '\n'
        ANALYSIS_inc[10] = result_line + '\n'
        fin.close()

        # writing lines to ANALYSIS.inc
        with open('ANALYSIS.inc', 'w') as fout:
            fout.writelines(ANALYSIS_inc[0:])
        fout.close()

        # running xyce with the new ANALYSIS.inc file
        print('"' + self.xyce_dir + '\\xyce" ' + self.netlist_filename)
        os.system('"' + self.xyce_dir + '\\xyce" ' + self.netlist_filename)



    def _read_analysis_csv(self):
        # parsing the output csv
        with open(self.netlist_filename + '.csv', 'r') as f:
            reader = csv.reader(f, delimiter=',')
            # get header from first row
            headers = next(reader)
            data = []
            start_indices = []
            # finding indices where transient analysis for new temperature starts
            for i, line in enumerate(reader):
                for j in range(len(line)):
                    if line[j]=='-nan(ind)':
                        line[j]='0'
                #print(i,line,float(line[0]))
                if float(line[0]) == float('0'):
                    start_indices.append(i)
                data.append(line)
            data = np.array(data).astype(float)
            f.close()
        return headers,data


    def _read_sweep_results(self):
        # parsing the sweep results output
        with open(self.netlist_filename + '.res', 'r') as f:
            reader = csv.reader(f, delimiter=' ',skipinitialspace=True)
            # get header from first row
            headers = next(reader)
            data = []
            # finding indices where transient analysis for new temperature starts
            for i, line in enumerate(reader):
                line = line[:-1]   #remove trailing whitespace
                if line[0] != 'End':
                    data.append(line)
            data = np.array(data).astype(float)
            f.close()
        return headers,data



    def transient(self, printnodes=None, params=None, meas=None, sweep=None, plotall=True):
        """Runs transient analysis. Pass in simulation parameters"""

        # updating the analysis file with transient parameters
        self._runanalysis(printnodes=printnodes, params=params, meas=meas, sweep=sweep)

        # read the output csv
        headers,data = self._read_analysis_csv()


        if plotall:
            # plotting every printed node
            t = data[:, 0]
            for i in range(1,len(headers)):
                fig = plt.figure(figsize=[8,2])
                plt.plot(t*1e6, data[:, i])
                plt.title(headers[i], fontsize=23)
                plt.xlabel('Time (us)',fontsize=20)
                if headers[i][0]=='V':
                    plt.ylabel('Voltage (V)',fontsize=20)
                elif headers[i][0]=='I':
                    plt.ylabel('Current (A)',fontsize=20)
                else:
                    plt.ylabel('Measurement (Amplitude)',fontsize=20)
                plt.show()


        if sweep:
            # read the sweep results
            headers,data = self._read_sweep_results()

            if sweep.get('plot'):
                # plotting sweep results
                fig = plt.figure(figsize=[8,2])
                plt.plot(data[:, headers.index(sweep['var'])],
                         data[:, headers.index(sweep['result'])],
                         'o-')
                plt.title('sweep', fontsize=23)
                plt.xlabel(sweep['var'],fontsize=20)
                plt.ylabel(sweep['result'],fontsize=20)
                plt.show()


        return headers,data
