

# General Overview

This folder contains 3 folders:

- Hard_Macro: Verilog and LEF file for GF12 of an already built Voltage/Temperature sensor module. Area is 50um X 100um

- HspiceNetlist: Hspice of the VT sensor tile

- Digital_Sensor_Verilog: Verilog files of the All-digital Voltage/Temperature sensor only, compatible for synthesis, place and route.


# Voltage/Temperature Sensor Tile Overview

The VT sensor tile contains 3 functional modules:

- Analog Voltage/Temperature Sensor

- Digital Voltage/Temperature Sensor

- SPI 


## __Analog Voltage/Temperature Sensor__:

The analog sensors are ported from the previous design from 180nm to 12nm. The sensor contains:

- __Temperature Sensor__:

The temperature sensor produces a square wave output whose period decreases linearly with temperature. Based on the simulation results, under 0.8V of power supply, the output period ranges from XXns at -20C, to XXns at 120C.

- __Supply Voltage Sensor__:

The supply voltage sensor produces a square wave output whose period increases linearly with supply voltage. At room temperature(300K), the output period ranges from XXns at 0.6V, to XXns at 0.96V.

- __Bandgap Refernece Circuit__:
The bandgap reference circtui provides a consistent current reference across XXC - XXC, 0.6V - 0.96V. The variance of the output current is 8nA based on simulation results

- __16-bit Ripple Counter__:
The 16-bit Ripple Counter transfers the square wave signal from the analog sensors to 16-bit digital output. 

## __Digital Voltage/Temperature Sensor__:

The digital voltage/temperature sensor is based on 12nm ARM standard cell library, compatible to 14nm libraries. This sensor contains:

- __Ring-oscillators__:
The ring-oscillators(RO) produces a square wave output whose period decreases when temperature increases or voltage increases. Total of 9 RO are included, the output is selected through a multiplexer.

- __16-bit Ripple Counter__:
The 16-bit Ripple Counter transfers the square wave signal from the analog sensors to 16-bit digital output. 

- __48-step Time-to-digital Converter__:
The Time-to-digital Converter(TDC) captures the indicates the phase of the clock signal and acts as fine-readout.

## __SPI__:

The SPI module is not a generalized SPI. The module is customized to reduce area consumption. SPI can be daizy-chained with other SPI modules that have the same operating mode.

- __CPOL = 0__:

SPI clock idles at 0, the leading edge is a rising edge.

- __CPHA = 0__:

The data change happens at the trailing edge.

# Prerequisites

These circuits were designed using Cadence® Virtuoso®. You must also separately obtain the Global Foundries 12/14nm PDK and ARM 12/14nm standard cell library, through MOSIS or a commercial license.

# Setup

Open terminal, change direction to your target folder and type the following code:

```
git clone https://github.com/scale-lab/PVTsensors
```

Detailed instruction will be included in each folder


# Pin List
Complete pin list of the sensor tile goes as following:
- o_SPI_MISO: SPI master in, slave out
- i_SPI_MOSI: SPI master out, slave in
- i_SPI_Clk: SPI clock signal
- i_SPI_CS_n: SPI slave select signal
- i_Rst_n: Low reset signal
- i_CntWin: decides the counting window of analog sensors
- i_Clk: decides the counting window of digital sensors
- A_BGR_PS: Seperate analog power pin for bandgap reference
- GND: Ground
- DVDD: power supply for digital circuits
- AVDD: power supply for analog circuits

# Testbench

## Analog sensors

To obtain the period change from the output of both analog sensors, please build the testbench stated as follow, and simulate using the GF12 PDK.
- Power supply voltage: 0.8V 
- Temperature: room temperature (300K/27C)
- Process corner: nomial_iddq (tt_iddq)

__Please Be Aware:__ make sure to set the model library to '__tt/ss/ff-iddq__', rather than 'tt/ss/ff', before any further testing. Simulation results run under 'tt/ss/ff' corner gives inaccurate results due to the heavy leakage current of the 12nm FinFET devices. 

The bandgap reference is included in the sensor tile, thus no additional current reference is required. However, please remain the power supply voltage of bandgap reference constant at 0.8V.

To test the voltage sensor, keep the temperature constant to 300K and sweep the power supply voltage from 0.6V to 0.96V.
- Votlage sensor changes period from 121ns to 129.8ns
- Temperature sensor changes period from 96ns to 146.8ns	


To test the temperature sensor, keep the power supply voltage constant to 1.8V and sweep the temperature from -20C to 120C. You should get the following result:
- Votlage sensor changes period from 121ns to 129.8ns
- Temperature sensor changes period from 152.7ns to 103.5ns

## Digital Sensors
To obtain training and testing data from the ring-oscillators, please build the testbench stated as follow, and simulate using the GF12 PDK.
- Power supply voltage: 0.8V 
- Temperature: room temperature (300K/27C)
- Process corner: nomial (tt)

__Please Be Aware:__ make sure to change the model library back to 'tt/ff/ss' before any further simulating.

To generate data for digital sensors, keep the processing corner constant, and sweep for both voltage change(0.6V-0.96V) and temeprature change(-20C - 130C).
