# General Overview

This folder contains:
- Verilog file and LEF file needed for sensor integration
- The python code of sensor compiler

# Sensor Compiler Introduction

In order to run the python code type
```
python Sensor_Compiler_Demo.py [coordinates of desired sensors]
```

## Sensor Locations
Coordinates of the sensors should be typed in pairs, split with space and in the form of:

```
python Sensor_Compiler.py X0 Y0 X1 Y1 X2 Y2 ...
```

Unit of the coordinate input is um.

__Please make sure that the gaps between sensors are larger than the size of the sensor(100um X 50um)__

If odd number of cooerdinates were typed, the code will give a error message and quit. 

If no coordinates were given, the code will give default values. The default number of sensor is 1, the default coordinate is (0.000 0.000)

## Number of Sensors
The code will determine the number of sensors based on the coordinate input automatically

## SPI
SPI modules are daisy-chained between each sensor. SPI module is customized to reduce area consumption. Dtails available in 'Sesnor Tile Overview' from README file in the upper level directory.

## Output Files
The code will print out the coordinate of each sensor.
The output file will be:

- __Verilog file__:
The verilog file declares every sensor tiles and wire connection between each sensor

- __DEF file__:
A DEF will be generated with the coordinates of the sensors and location of the pins
