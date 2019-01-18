# PVTsensors
This repository contains a collection of open-source circuits and software tools for PVT monitoring in custom ICs. 

## Hardware Sensor Designs
The Sensors folder contains CMOS circuit designs for (1) an area- and power-efficient temperature sensor and (2) an area- and power-efficient CMOS supply voltage monitor.

## Digital Infrastructure
The PVT system contains both the sensor designs and an embedded lightweight RISC-V core based on the PULPino. The Microcontroller/FPGA folder contains a tutorial on how to implement this microcontroller on a Xilinx development board.

## System Software
The Microcontroller/Interface folder contains a preliminary proposed specification for an external interface to the PVT system.

## Acknowledgements
This work was supported by the DARPA POSH open-source hardware program, under the umbrella of the Electronics Resurgence Initiative. Contributors include:

- Sherief Reda (PI)   (http://scale.engin.brown.edu/)
- Jacob Rosenstein (Co-PI)   (http://rosenstein.engin.brown.edu)
- Shanshan Dai (PhD student)
- Sofiane Chetoui (PhD student)
- Steven Lian (PhD student)
- Caleb Tulloss (summer research assistant)
