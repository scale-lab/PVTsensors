// Generated for: spectre
// Design view name: schematic
simulator lang=spectre
global 0 vdd!
parameters VDD
// insest target netlist here
I9 (net2 0) isource dc=250n type=dc
I0 (net2 Q QB QBP QP 0 vdd! vdd!) Layout_vdd_sensor_SN
V0 (vdd! 0) vsource type=pwl wave=[ 0 0 50n 0 50.05n VDD 52n VDD 52.05n 0 \
        70n 0 70.05n VDD ]
simulatorOptions options reltol=1e-3 vabstol=1e-6 iabstol=1e-12 temp=27 \
    tnom=25 scalem=1.0 scale=1.0 gmin=1e-12 rforce=1 maxnotes=5 maxwarns=5 \
    digits=5 cols=80 pivrel=1e-3 sensfile="../psf/sens.output" \
    checklimitdest=psf 
modelParameter info what=models where=rawfile
element info what=inst where=rawfile
outputParameter info what=output where=rawfile
designParamVals info what=parameters where=rawfile
primitives info what=primitives where=rawfile
subckts info what=subckts  where=rawfile
saveOptions options save=allpub
