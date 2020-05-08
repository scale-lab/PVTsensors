`timescale 1ps / 100fs

module DigitalVTSensor_Top(
//input wire CNTWIN,
input wire ENABLE_IN,
input wire RSTHIGH,
input wire SPI_MOSI,
input wire SPI_CLK,
input wire SPI_CS,

output wire SPI_MISO
);

//////////////// Declaring wire connections ////////////////
wire [63:0] RXDATA;
wire [63:0] TXDATA;
wire [5:0] RO_out_MUX;
wire RO_EN;
wire ROMUX_out;
wire TDC_Cap;
wire TXDV;

//////////////// Insert modules ////////////////
RO_inv_slvt R1(
.i_Enable(RO_EN),
.i_Sel(RXDATA[0]),
.o_RO_out(RO_out_MUX[0])
);

RO_inv_lvt R2(
.i_Enable(RO_EN),
.i_Sel(RXDATA[1]),
.o_RO_out(RO_out_MUX[1])
);

RO_inv_rvt R3(
.i_Enable(RO_EN),
.i_Sel(RXDATA[2]),
.o_RO_out(RO_out_MUX[2])
);

RO_nand4_slvt R4(
.i_Enable(RO_EN),
.i_Sel(RXDATA[3]),
.o_RO_out(RO_out_MUX[3])
);

RO_nand4_lvt R5(
.i_Enable(RO_EN),
.i_Sel(RXDATA[4]),
.o_RO_out(RO_out_MUX[4])
);

RO_nand4_rvt R6(
.i_Enable(RO_EN),
.i_Sel(RXDATA[5]),
.o_RO_out(RO_out_MUX[5])
);

RO_MUX M1(
.RO_IN(RO_out_MUX),
.S(RXDATA[8:6]),
.RO_OUT(ROMUX_out)
);

TDC_48steps TDC(
.i_CLK_Target(ROMUX_out),
.i_Clk_Ref(TDC_Cap),
.i_RST_p(RSTHIGH),
.o_TDC_out(TXDATA[63:16])
);

Ripple_Counter_16bit RC(
.ENIN(ENABLE_IN),
.CLK(ROMUX_out),
.RSTHIGH(RSTHIGH),
.CNT(TXDATA[15:0]),
.ENOUT(RO_EN),
.TXDV(TXDV),
.TDCCAPTURE(TDC_Cap)
);

SPI_top_64bit SPI(
.SPICLK(SPI_CLK),
.SHREGIN(SPI_MOSI),
.RSTHIGH(RSTHIGH),
.SPICS(SPI_CS),
.TXDATA(TXDATA),
.TXDV(TXDV),
.SHREGOUT(SPI_MISO),
.RXDATA(RXDATA)
);


endmodule