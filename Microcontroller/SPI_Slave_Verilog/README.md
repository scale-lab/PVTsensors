This directory contains 2 modules in seperate Verilog files. One is frequency-counter for counting output from voltage/temperature sensors, the other one is SPI slave. Two modules can be used independently. Fig.1 presents the diagram of connection between counter and SPI slave.

![](https://github.com/scale-lab/PVTsensors-Dev/blob/master/Sensors/Counter%20%2B%20SPI%20Slave/Cnt_SPI_diagram.PNG)
**Figure 1** Counter and SPI slave diagram

# Counter Introduction:

## Features
- User definable output data length
- User definable counting window length
- Counts the number of posditive edges of input signal in certain counting window
- Data Valid pulse for SPI slave 

<!---
- Wave cleaning, by using DFF and AND gates to filter out noise
This is where the system clock (*i_Clk*) used to come in
-->

## Port Descriptions

Table I describes the counter’s ports.

**Port** | **Width** | **Mode** | **Interface** | **Decription** 
| --- | :-: | :-: | :-: | --- |
i_En_H | 1 | input | user logic | Set high to enable counter
i_Signal | 1 | input | sensor output | Input the signal under counting
i_cnt_window | 1 | input | user logic | User defined interuption signal
i_Rst_L | 1 | input | user logic | Set low to reset counter
o_Data | user defined (16) | output | user logic, SPI slave | Presents the counting result from last counting window
o_TX_DV | 1 | output | user logic, SPI slave | Sends a Data Valid pulse to SPI after wach counting window is finished

**Table I** Port Description of the Counter Module

## Counting Window Input

User needs to input a seperate interupt signal to define the length of the counting window. At every positive edge of *i_cnt_window*, the counter would store the result from previous counting window to *o_Data* and restart counting from 1.

## Data Output Register

The transmit register is a buffer that holds the counting result from last counting window, intended to be transmitted to SPI slave. When the current counting window is finished, counter will store the result to *o_Data* and send a Data Valid pulse to SPI slave.


# SPI Introduction:

## Features:
- Status register available to user logic
- User definable data width

## Port Descriptions

Table II describes the counter’s ports.

**Port** | **Width** | **Mode** | **Interface** | **Decription** 
| --- | :-: | :-: | :-: | --- |
i_Rst_L | 1 | input | user logic | Set low to reset SPI slave
i_Clk | 1 | input | user logic | System clock (at least 4X faster than SPI clock)
o_RX_DV  | 1 | output | user logic | Outputs Data Valid pulse
o_RX_Data | user defined (16) | output | user logic | 	Presents the last received data from the master
i_TX_DV | 1 | input | user logic, counter | captures data from *i_TX_Data* (fi slave is not be busy)
i_TX_Data | user defined (16) | input | user logic, counter | Data to be latched into the transmit register
i_SPI_Clk | 1 | input | SPI Master | SPI clock
o_SPI_MISO | 1 | output | SPI Master | Master in, slave out data line
i_SPI_MOSI | 1 | input | SPI Master | Master out, slave in data line
i_SPI_CS_n | 1 | input | SPI Master | Set low to select slave


**Table II** Port Description of the SPI Slave Module

## SPI Mode

Clock Polarity and Phase is defined by user with *SPI_MODE* parameter. Table III presents clock polarity and phase choice. Fig. 2 shows a timing diagram of different SPI Mode selections. More details can be found in [1]

Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA) 
| :-: | :-: | :-: |
 0   |             0             |        0
1   |             0             |        1
 2   |             1             |        0
3   |             1             |        1

**Table III** Clock Polarity and Phase if SPI Slave

![](https://upload.wikimedia.org/wikipedia/commons/6/6b/SPI_timing_diagram2.svg)

**Figure 1** Timing Diagram of Different SPI Modes [1]


## Receiver Register

The receive register is a buffer that holds data received from the master over the MOSI line. Once the transmission is over, *o_RX_DV* will send out a pulse to trigger user logic to receive SPI output from *o_RX_Data* port.

## Transmit Register

The transmit register is a buffer that holds the data intended to be transmitted by the slave to the master over the MISO line. User logic would present the data on *i_TX_Data* port, and pulse the *i_TX_DV* input. If SPI slave is not busy (*i_SPI_CS_n* is high), it will load the data into *i_TX_Data* register.

## Reset

Set *i_Rst_L* input port low to reset SPI slave. Set this port high for SPI to work.

#Reference

[1] https://en.wikipedia.org/wiki/Serial_Peripheral_Interface
