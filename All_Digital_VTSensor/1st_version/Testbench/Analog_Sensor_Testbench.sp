// Generated for: spectre
// Design view name: schematic
simulator lang=spectre
global 0
parameters vdd=0.8 wireopt=9
// insest target netlist here
I0 (GND IREFT TOsc_TB\<0\> TOsc_TB\<1\> TOsc_TB\<2\> TOsc_TB\<3\> \
        OSCTOUT RST TOsc_TB\<0\> TOsc_TB\<1\> TOsc_TB\<2\> TOsc_TB\<3\> \
        TSen_TB\<0\> TSen_TB\<1\> TSen_TB\<2\> TSen_TB\<3\> \
        TIref_TB\<0\> TIref_TB\<1\> TIref_TB\<2\> TIref_TB\<3\> VDD) \
        Module_Tosc_Top
I1 (GND IREFV OSCVOUT RST VDD VOsc_TB\<0\> VOsc_TB\<1\> VOsc_TB\<2\> \
        VOsc_TB\<3\> VSen_TB\<0\> VSen_TB\<1\> VSen_TB\<2\> \
        VSen_TB\<3\> VIref_TB\<0\> VIref_TB\<1\> VIref_TB\<2\> \
        VIref_TB\<3\>) Module_Vosc_Top
V36 (net043 0) vsource dc=800.0m type=dc
V35 (VOsc_TB\<3\> 0) vsource dc=0 type=dc
V34 (VSen_TB\<3\> 0) vsource dc=0 type=dc
V33 (VIref_TB\<3\> 0) vsource dc=0 type=dc
V14\<0\> (VIref_TB\<0\> 0) vsource dc=vdd type=dc
V14\<1\> (VIref_TB\<1\> 0) vsource dc=vdd type=dc
V14\<2\> (VIref_TB\<2\> 0) vsource dc=vdd type=dc
V13\<0\> (VOsc_TB\<0\> 0) vsource dc=vdd type=dc
V13\<1\> (VOsc_TB\<1\> 0) vsource dc=vdd type=dc
V13\<2\> (VOsc_TB\<2\> 0) vsource dc=vdd type=dc
V9\<0\> (VSen_TB\<0\> 0) vsource dc=vdd type=dc
V9\<1\> (VSen_TB\<1\> 0) vsource dc=vdd type=dc
V9\<2\> (VSen_TB\<2\> 0) vsource dc=vdd type=dc
V2 (TIref_TB\<2\> 0) vsource dc=vdd type=dc
V3 (TSen_TB\<0\> 0) vsource dc=0 type=dc
V4 (TOsc_TB\<3\> 0) vsource dc=0 type=dc
V1 (TIref_TB\<3\> 0) vsource dc=0 type=dc
V7\<0\> (TOsc_TB\<0\> 0) vsource dc=vdd type=dc
V7\<1\> (TOsc_TB\<1\> 0) vsource dc=vdd type=dc
V7\<2\> (TOsc_TB\<2\> 0) vsource dc=vdd type=dc
V6\<0\> (TSen_TB\<1\> 0) vsource dc=vdd type=dc
V6\<1\> (TSen_TB\<2\> 0) vsource dc=vdd type=dc
V6\<2\> (TSen_TB\<3\> 0) vsource dc=vdd type=dc
V5\<0\> (TIref_TB\<0\> 0) vsource dc=vdd type=dc
V5\<1\> (TIref_TB\<1\> 0) vsource dc=vdd type=dc
V0 (GND 0) vsource dc=0 type=dc
V10 (VDD 0) vsource dc=vdd type=dc
V11 (RESTRIM\<2\> 0) vsource dc=vdd type=dc
V12 (RESTRIM\<0\> 0) vsource dc=0 type=dc
V28 (AMPRESTRIM\<3\> 0) vsource dc=0 type=dc
V17 (RESTRIM\<4\> 0) vsource dc=vdd type=dc
V15 (RESTRIM\<1\> 0) vsource dc=vdd type=dc
V16 (RESTRIM\<3\> 0) vsource dc=vdd type=dc
V32 (AMPRESTRIM\<2\> 0) vsource dc=vdd type=dc
V31 (AMPRESTRIM\<0\> 0) vsource dc=0 type=dc
V30 (AMPRESTRIM\<4\> 0) vsource dc=vdd type=dc
V29 (AMPRESTRIM\<1\> 0) vsource dc=vdd type=dc
V19 (RESTRIMB\<1\> 0) vsource dc=0 type=dc
V18 (RESTRIMB\<3\> 0) vsource dc=0 type=dc
V22 (RESTRIMB\<2\> 0) vsource dc=0 type=dc
V25 (AMPRESTRIMB\<2\> 0) vsource dc=0 type=dc
V21 (RESTRIMB\<0\> 0) vsource dc=vdd type=dc
V24 (AMPRESTRIMB\<0\> 0) vsource dc=vdd type=dc
V20 (RESTRIMB\<4\> 0) vsource dc=0 type=dc
V26 (AMPRESTRIMB\<3\> 0) vsource dc=vdd type=dc
V27 (AMPRESTRIMB\<1\> 0) vsource dc=0 type=dc
V23 (AMPRESTRIMB\<4\> 0) vsource dc=0 type=dc
I4 (AMPRESTRIMB\<0\> AMPRESTRIMB\<1\> AMPRESTRIMB\<2\> AMPRESTRIMB\<3\> \
        AMPRESTRIMB\<4\> AMPRESTRIMB\<0\> AMPRESTRIMB\<1\> \
        AMPRESTRIMB\<2\> AMPRESTRIMB\<3\> AMPRESTRIMB\<4\> \
        AMPRESTRIM\<0\> AMPRESTRIM\<1\> AMPRESTRIM\<2\> AMPRESTRIM\<3\> \
        AMPRESTRIM\<4\> AMPRESTRIM\<0\> AMPRESTRIM\<1\> AMPRESTRIM\<2\> \
        AMPRESTRIM\<3\> AMPRESTRIM\<4\> GND IREFT IREFV RESTRIM\<0\> \
        RESTRIM\<1\> RESTRIM\<2\> RESTRIM\<3\> RESTRIM\<4\> \
        RESTRIMB\<0\> RESTRIMB\<1\> RESTRIMB\<2\> RESTRIMB\<3\> \
        RESTRIMB\<4\> net043) Module_BGR_Top_V2_kp
V8 (RST 0) vsource dc=vdd type=pulse val0=0 val1=vdd period=100u \
        delay=0 rise=10p fall=10p width=100.0n
simulatorOptions options reltol=1e-3 vabstol=1e-6 iabstol=1e-12 temp=25.0 \
    tnom=27 scalem=1.0 scale=1.0 gmin=1e-12 rforce=1 maxnotes=5 maxwarns=5 \
    digits=5 cols=80 pivrel=1e-3 sensfile="../psf/sens.output" \
    checklimitdest=psf 
dcOp dc write="spectre.dc" maxiters=150 maxsteps=10000 annotate=status
dcOpInfo info what=oppoint where=rawfile
dc dc param=temp start=-20 stop=120 oppoint=rawfile maxiters=150 \
    maxsteps=10000 annotate=status
modelParameter info what=models where=rawfile
element info what=inst where=rawfile
outputParameter info what=output where=rawfile
designParamVals info what=parameters where=rawfile
primitives info what=primitives where=rawfile
subckts info what=subckts where=rawfile
save I4:22 I4:23 I4:34 I0:21 I1:5 V10:p I4.I1:2 I4.I6:12 I4.I0:5 I4.I0:6 \
    I1:2 V36:p I4.I7:6 I4.I5:24 I4.I0:4 I4.I2:3 I4.I6:14 
saveOptions options save=allpub
