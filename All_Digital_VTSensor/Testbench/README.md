

# General Overview

This folder contains testbench SPICE files for the analog sensor and digital sensor seperately.

# Setup 

There are 2 ways to use the testbench:
- __Copy the spice netlist__:

The first option is to copy the netlist the corresponding blocks


To run the analog sensor testbench, please copy the netlist from 'BGR.sp', 'Tosc.sp' and 'Vosc.sp' into Analog_Sensor_Testbench.sp between
```
parameters vdd=0.8 wireopt=9
```
and
```
I0 (GND IREFT TOsc_TB\<0\> TOsc_TB\<1\> TOsc_TB\<2\> TOsc_TB\<3\> \
```


To run the digital sensor testbench, please copy the netlist in DigitalSensor.sp from
```
subckt INV_X0P5N_A9PP84TR_C14 A VDD VNW VPW VSS Y
```
to
```
VDD VSS VTMUX) Module_RippleCnt_A_V2
```
and insert the netlist into Digital_Sensor_Testbench.sp between
```
parameters DLYD=90n vdd=0.8 wireopt=9
```
and
```
I0 (RO_EN net016 RO_OUT\<2\> RO_Sel\<2\> VDD VSS) \
```


- __Add sensor as sub-circuit__:

If you are using Virtuoso(or similar simulator), you can import both the sensor and its testbench, and add the sensor block into the testbench as a subcircuit.
