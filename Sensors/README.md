# PVT Sensor Overview

## General Overview

This folder contains three sensors and the SPI module: 

- __Temperature Sensor__:

The temperature sensor produces a square wave output whose period decreases linearly with temperature. When powered at 1.8V, the output period ranges from 90ns at -20C, to 70ns at 100C.

The schematic is shown below:


![](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/Images/uW_TSensor.JPG)


- __Supply Voltage Sensor__:

The supply voltage sensor produces a square wave output whose period increases linearly with supply voltage. At room temperature, the output period ranges from 90ns at 1.2V, to 110ns at 1.8V.

The schematic is shown below:


![](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/Images/uW_VSensor.JPG)


- __Critical Path Monitor__:

The critical path monitor produces a 16-bit thermometer-coded output. The output corresponds to the propagation delay of the critical logic path under test, which can be used to track logic speed fluctuations due to transient VDD droop or changes in temperature. The resolution is adjustable by programming different logic paths and allowing multiple propagation periods. The timing resolution of one propagation path corresponds to approxiately 50mV supply voltage droop.

![](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/Images/CPM_Sch_WhBG.png)

- __This folder contains__:
    - Spice netlists for the voltage and temperature sensor;
    - Verilog AMS netlists for the voltage and temperature sensor;
    - Verilog for the critical path monitor sensor (ideal simulation only);


- __SPI module__:

The PVT sensors are connected to the SPI module to measure their output frequency, then the module transmits the sensor output to a Master SPI, so it is composed of an SPI slave and a counter. The directory contains the vhdl code of the module, as well as its corresponding scheme. 





## Prerequisites

These circuits were designed using Cadence® Virtuoso®. You must also separately obtain the TSMC 180nm PDK and standard cell library, through MOSIS or a commercial license.

## Setup

Open terminal, change direction to your target folder and type the following code:

```
gitclone https://github.com/scale-lab/PVTsensors/tree/master/Sensors/
```

## Top Cellviews

The top cellview of the temperature sensor is “uW_TSensor”;

The top cellview of the voltage sensor is “uW_VSensor”;

The top module of the critical path monitor is “CPM”;

## Pin list
- __Temperature/Voltage Sensor__:
  - vdd: 1.8V analog power;
  - vdd_pin: 1.8V digital power;
  - gnd: ground;
  - IREF: PTAT reference current input (1uA for temperature sensor, 250nA for voltage sensor);
  - Q, QB: differential square wave output;
  - QP, QBP: for probing;
  
- __Critical Path Monitor__: 
  - SC_DIN: Serial data input
  - SC_CLK: Scan-chain clock input
  - SC_LEN: Latch enable signal input, scan-chain would latch parallel data when this is given high
  - RST: Reset input, reset all DFF to 0 when low
  - S[1:4]: Parallel data output, these are supposed to connect to the control intput of Critical Path Logic
  - CPL_CLK, TDC_CLK: clock inputs for Critical Path Logic and Edge Detector
  - P_CPL_D[1:3], P_CPL_R[1:3], P_TDC_D[1:6]: outputs for probing
  - CPM_OUT[1:16]: Data output, connects to processing module

