`timescale 10ps / 1ps 

module Brown_PVTSensor(
input i_Clk,
input A_BGR_PS,
input i_CntWin,
input i_Rst_n,
input i_SPI_CS_n,
input i_SPI_Clk,
input i_SPI_MOSI,

output o_SPI_MISO,

inout AVDD,
inout DVDD,
inout GND
);

endmodule
