# SPI Sensor Overview

This module is used to transmit the sensor output to a Master SPI, it is composed of an SPI slave and a counter that measures the output frequency of the PVT sensors. The module is depicted below: 

![alt text](https://github.com/scale-lab/PVTsensors/blob/master/Sensors/SPI/SPI_Sensor.png)


The frequency counter transmits the measured frequency to the SPI slave throught the tx_load_data wire, then the SPI slave and master communicate using the regular SPI protocol, using the four signals: sclk (clock), Master Out, Slave In (mosi), Master In, Slave Out (miso) and select slave (ss_n). 


The frequency counter and the SPI slave can communicate simply using the tx_load_data wire, as the communication can be established using different wires/signals that offer other features. The port description of these signals is described in the following link <a href="https://www.digikey.com/eewiki/pages/viewpage.action?pageId=7569477#SerialPeripheralInterface(SPI)Slave(VHDL)-CodeDownload"> port description </a>. The previously mentioned signals might be used in the future versions of the module.  
