`timescale 1ps / 100fs

module DigitalVTSensor_Top_V3_WDummy(
input wire RSTLOW,
input wire SPI_MOSI,
input wire SPI_CLK,
input wire SPI_CS,
input wire Enable_Dummy_RO,

output wire SPI_MISO
);

//////////////// Declaring wire connections ////////////////
wire [63:0] TXDATA;
wire CNT_RST;
wire [15:0] RO_out_MUX;
wire [63:0] RXDATA;
wire ENABLE_Sensor_RO;
wire ROMUX_out;

//////////////// Insert modules ////////////////
//////////////// RO ////////////////
RO_inv_hvt_65 R1(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[32]),
.o_RO_out(RO_out_MUX[0])
);

RO_inv_lvt_65 R2(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[33]),
.o_RO_out(RO_out_MUX[1])
);

RO_inv_rvt_65 R3(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[34]),
.o_RO_out(RO_out_MUX[2])
);

RO_nand4_hvt_65 R4(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[35]),
.o_RO_out(RO_out_MUX[3])
);

RO_nand4_lvt_65 R5(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[36]),
.o_RO_out(RO_out_MUX[4])
);

RO_nand4_rvt_65 R6(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[37]),
.o_RO_out(RO_out_MUX[5])
);

RO_nor4_hvt_65 R7(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[38]),
.o_RO_out(RO_out_MUX[6])
);

RO_nor4_lvt_65 R8(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[39]),
.o_RO_out(RO_out_MUX[7])
);

RO_nor4_rvt_65 R9(
.i_Enable(ENABLE_Sensor_RO),
.i_Sel(RXDATA[40]),
.o_RO_out(RO_out_MUX[8])
);

//////////////// MUX ////////////////
RO_MUX M1(
.RO_IN(RO_out_MUX),
.S(RXDATA[51:48]),
.RO_OUT(ROMUX_out)
);

//////////////// Buffer tree for RSTLOW ////////////////
wire [3:0]RSTLOW_B;

BUFX6MA10TR RSTBUF0(
    .A(RSTLOW),
    .Y(RSTLOW_B[0])
);
BUFX4MA10TR RSTBUF1(
    .A(RSTLOW),
    .Y(RSTLOW_B[1])
);
BUFX4MA10TR RSTBUF2(
    .A(RSTLOW),
    .Y(RSTLOW_B[2])
);
BUFX6MA10TR RSTBUF3(
    .A(RSTLOW),
    .Y(RSTLOW_B[3])
);


//////////////// TDC ////////////////
TDC_48steps_65 TDC(
.i_CLK_Target(ROMUX_out),
.i_Clk_Ref(~ENABLE_Sensor_RO),
.i_RST_n(RSTLOW_B[0]),
.o_TDC_out(TXDATA[47:0])
);

//////////////// Counters ////////////////
Ripple_Counter_RO RC_D(
.ENIN(ENABLE_Sensor_RO),
.CLK(ROMUX_out),
.RSTLOW(RSTLOW_B[1]),
.RSTLOW_CNT(CNT_RST),
.CNT(TXDATA[63:48])
);

Ripple_Counter_SPIClkCnt RC_SPI(
.SPI_CS(SPI_CS),
.SPI_Clk(SPI_CLK),
.RSTLOW(RSTLOW_B[2]),
.End_Cnt(RXDATA[63:56]),
.ENOUT(ENABLE_Sensor_RO),
.ROCNT_Rst(CNT_RST)
);


//////////////// SPI ////////////////
wire SPI_CS_B;
wire SPI_CLK_B;

BUFX9MA10TR SPIBUF0(
    .A(SPI_CS),
    .Y(SPI_CS_B)
);
BUFX9MA10TR SPIBUG1(
    .A(SPI_CLK),
    .Y(SPI_CLK_B)
);

SPI_top_64bit SPI(
.SPICLK(SPI_CLK_B),
.SHREGIN(SPI_MOSI),
.RSTLOW(RSTLOW_B[3]),
.SPICS(SPI_CS_B),
.TXDATA(TXDATA),
.SHREGOUT(SPI_MISO),
.RXDATA(RXDATA)
);

//////////////// Dummy ROs ////////////////
wire Enable_Dummy_RO_B;

BUFX4MA10TR DMYBUF(
    .A(Enable_Dummy_RO),
    .Y(Enable_Dummy_RO_B)
);

Dummy_RO_Top Dummy(
.i_Enable(Enable_Dummy_RO_B),
.i_Sel(RXDATA[31:0])
);

endmodule