# General Overview

This folder contains the following files:

- genann.c : C library file 
- genann.h : header library file 
- pidnn.c :  PID neural network C file 

# PID NN hyperparameters

- throtling_threshold : temperature throttling threshold 
- sampling_rate : controller update rate in us
- save_samp : saving rate of the NN weights 
- PATHsx : path to the sensors 
- PATHfreq: path to the file that is used to control the operating frequency 

# Prerequisites

GCC should be used as a compiler, the GCC  version to be used depends on the microarchitecture of the target platform.

# Adapting the code
To integrate the code to your own system, the following parameters in the pidnn.c file should be edited: 
- PATHs1 to PATHs4: these files should indicate the path to the sensors to be used for the control 
- PATHfreq : this file should indicate the path to the file used to scale the frequency  
- freq : this table within the command_freq function should indicate the available frequency levels

# Compilation 

Open terminal, change direction to your target folder and type the following code:

```
git clone https://github.com/scale-lab/PVTsensors
cd PVTsensors/Software/PIDNN/
```
then to compile the code you can use the following line : gcc  -lm -o pidnn pidnn.c genann.c 
