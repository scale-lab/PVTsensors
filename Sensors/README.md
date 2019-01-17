# PVT Sensor Overview

## General Overview

This folder contains three sensors: 

- __Temperature Sensor__:

The temperature sensor produces a square wave output whose period decreases linearly with temperature. When powered at 1.8V, the output period ranges from 90ns at -20C, to 70ns at 100C.

- __Supply Voltage Sensor__:

The supply voltage sensor produces a square wave output whose period increases linearly with supply voltage. At room temperature, the output period ranges from 90ns at 1.2V, to 110ns at 1.8V.

- __Critical Path Monitor__:

The critical path monitor produces a 16-bit thermometer-coded output. The output corresponds to the propagation delay of the critical logic path under test, which can be used to track logic speed fluctuations due to transient VDD droop or changes in temperature. The resolution is adjustable by programming different logic paths and allowing multiple propagation periods. The timing resolution of one propagation path corresponds to approxiately 50mV supply voltage droop.

This folder contains: Spice netlists and Verilog AMS netlists.

## Prerequisites

These circuits were designed using Cadence® Virtuoso®. You must also separately obtain the TSMC 180nm PDK and standard cell library, through MOSIS or a commercial license.

## Setup

Open terminal, change direction to your target folder ("tsmc18", assuming TSMC 180nm PDK is obtained) and type the following code:

```
gitclone https://github.com/scale-lab/PVTsensors/tree/master/Sensors/
```

## Top Cellviews

The top cellview of the temperature sensor is “uW_TSensor”;

The top cellview of the voltage sensor is “uW_VSensor”;

The top cellview of the Critical Path Monitor is “CPM”.

## Pin list
- __Temperature/Voltage Sensor__:
  - vdd: 1.8V analog power;
  - vdd_pin: 1.8V digital power;
  - gnd: ground;
  - IREF: PTAT reference current input (1uA for temperature sensor, 250nA for voltage sensor);
  - Q, QB: differential square wave output;
  - QP, QBP: for probing;

- __Critical Path Monitor__:
  - VDD: 1.8V digital power;
  - GND: ground connection;
  - RST: negative reset;
  - CTRLDATA_IN: scan-chain data input port;
  - CTRLDATA_OUT: scan-chain data output;
  - SCANCHAIN_CLK_IN: scan-chain clock input;
  - SCANCHAIN_CLK_OUT: scan-chain clock output test pin;
  - LATCH_EN: enables data latching in scan-chain;
  - LSD_CLK, TDC_CLK: clock input port for Critical Path Replica and Edge Detector;
  - LSD<1:16>: 16-bit output data bus;
  - S1, S2, S3, S4: scan-chain output probing port;
  - D1, D2, D3, R1, R2, R3: Critical Path Replica delay probing port;
  - TDC1, TDC2, TDC3, TDC4, TDC5, TDC6: Edge detector delay probing port;
  - TDC_CLK_IN: probing port for TDC_CLK signal after pre-delay;


