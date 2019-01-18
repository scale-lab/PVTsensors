# PVT Sensor Overview

## General Overview

This folder contains three sensors: 

- __Temperature Sensor__:

The temperature sensor produces a square wave output whose period decreases linearly with temperature. When powered at 1.8V, the output period ranges from 90ns at -20C, to 70ns at 100C.

The schematic is shown below:


![](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/Images/uW_TSensor.JPG)


- __Supply Voltage Sensor__:

The supply voltage sensor produces a square wave output whose period increases linearly with supply voltage. At room temperature, the output period ranges from 90ns at 1.2V, to 110ns at 1.8V.

The schematic is shown below:


![](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/Images/uW_VSensor.JPG)


This folder contains: Spice netlists and Verilog AMS netlists.

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

## Pin list
- __Temperature/Voltage Sensor__:
  - vdd: 1.8V analog power;
  - vdd_pin: 1.8V digital power;
  - gnd: ground;
  - IREF: PTAT reference current input (1uA for temperature sensor, 250nA for voltage sensor);
  - Q, QB: differential square wave output;
  - QP, QBP: for probing;

