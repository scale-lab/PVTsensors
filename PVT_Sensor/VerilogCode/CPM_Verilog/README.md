# Read before use

This folder contains behavioral verilog codes for Critical Path Logic, Scan-chain and TDC. 

CPL.v ==> Verilog Code for Critical Path Logic;

TDC.v ==> Verilog Code for Edge Detector;

SC.v ==> Verilog Code for Scan-chain;

CPM.v ==> Verilog Code for Top module, contains all other three;


## Acknowledgements:

These codes are for __ideal__ simulation/function verification only! NOT meant for RTL synthesis.

All delay numbers are extracted from spice model/datasheet of applied process technology. Users are free to change parameters based on their own process technology.


## Introduction:

- __Schematic__:


![](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/Images/CPM_Sch_WhBG.png)

- __CPM.v__: This is the top module.

  - Pin list:
    - SC_DIN: Serial data input
    - SC_CLK: Scan-chain clock input
    - SC_LEN: Latch enable signal input, scan-chain would latch parallel data when this is given high
    - RST: Reset input, reset all DFF to 0 when low
    - S[1:4]: Parallel data output, these are supposed to connect to the control intput of Critical Path Logic
    - CPL_CLK, TDC_CLK: clock inputs for Critical Path Logic and Edge Detector
    - P_CPL_D[1:3], P_CPL_R[1:3], P_TDC_D[1:6]: outputs for probing
    - CPM_OUT[1:16]: Data output, connects to processing module

- __SC.v__: This is a scan-chain module, which converts serial data into parallel and latches it.

  - Pin list:
    - SC_DIN: Serial data input
    - SC_CLK: Scan-chain clock input
    - SC_LATCH: Latch enable signal input, scan-chain would latch parallel data when this is given high, connects to SC_LEN
    - rst: Reset input, reset all DFF to 0 when low
    - S[1:4]: Parallel data output, these are supposed to connect to the control intput of Critical Path Logic

- __CPL.v__: This is a Critical Path Logic module. It can be programmed through scna-chain to replicate a critical path to create a tunable delay.

  - Pin list:
    - S[1:4]: Control data input, these are supposed to connect to the output of scan-chain
    - IN: Clock signal input, connects to CPL_CLK
    - D[1:3], R[1:3]: output for probing
    - OUT: delayed clock signal output

- __TDC.v__: This is a edge dtector module. Another consistant clock signal input latches the location of the delayed clock signal from CPL. Location of the edge is indicated with themormeter code by 16-bit output.

  - Pin list:
    - CLK: Triggers DFF to latch the location of the edge, connects to TDC_CLK
    - DELAY_IN: Inputs the clock-signal-under-detecting
    - D[1:6]: outputs for probing delayed CPL_CLK for first 6 delay cells
    - rst: Reset input, reset all DFF to 0 when low
    - EDGE_OUT[1:16]: Data output, connects to CPM_OUT[1:16]
