

# General Overview

This folder contains testbench SPICE files for the voltage sensor and temperature sensor seperately.

# Setup 

There are 2 ways to use the testbench:
- __Copy the spice netlist__:

The first option is to copy the netlist of the corresponding sensor to its testbench. For example, to run the testbench for temperature sensor, you can copy the spice netlist of the temperature sensor from 

```
.subckt NOR2 a1 a2 zn vdd vss
```

to

```
xc4 iref vdd mimcap lt=10e-6 wt=10e-6 mf=1 
```

into the testbench spice file between
```
parameters vdd
```
and
```
V1 (gnd 0) vsource dc=0 type=dc
```

The same applies for the voltage sensor

- __Add sensor as sub-circuit__:
If you are using Virtuoso(or similar simulator), you can import both the sensor and its testbench, and add the sensor block into the testbench as a subcircuit.