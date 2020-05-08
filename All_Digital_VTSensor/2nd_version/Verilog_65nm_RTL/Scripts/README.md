
# General Overview

This folder contains python scripts for generating required Verilog files. Please run under pyhton 3 environment.

## Script_Dummy_RO_Top.py

This script generates the top module of dummy ROs. User can change the number of dummy ROs they would like to include.

- dummy_cnt:

Defines how many number of stages in top dummy ROs, default is 512. This number has a maximum of 32*8 = 512

## Script_Main_RO_Writing.py

This script generates the main ROs for the sensor module. User can change the number of stages of each type of RO.

- num_of_stages_inv:

Defines how many number of stages in each inverter ROs, default is 383

- num_of_stages_nand4:

Defines how many number of stages in each nand4 ROs, default is 127

- num_of_stages_NOR3:

Defines how many number of stages in each nor3 ROs, default is 127

## Script_TDC.py

This script generates the TDC module for the sensor. User can change the number of stages in the TDC in necessary.

- num_of_stages_TDC:

Defines how many number of stages in the TDC, default is 48

## Script_testbench.py

This script genreates the testbench for the sensor.

- sensor_cnt:

Defines how many sensors are daisy chained, default is 4.

- dummy_cnt:

Defines how many chunks of dummy RO to turn on. One chunk contains 8 dummy RO. Default is 32 (all of the dummy ROs). 

- spi_cnt:

Defines the where the enable signal will stop. Default is 18. ___This number should be larger than 3.__

- RO_num:

Selects from R1 - R9, default is 3

- time:

Offsets the time in testbench. Default to 0. Initialized to 0. Unit is ps

- number_of_turns:

Define how many SPI communication would appear in the simulation, default is 3. To achieve proper result, this number should be at least 3.

- scale:

Scale up the timing. By 1000, the timing is scaled from ps to ns. Default is 1000