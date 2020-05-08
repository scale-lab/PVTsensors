`timescale 1ps / 100fs

module SPI_top_64bit(
input wire SPICLK,
input wire SHREGIN,
input wire RSTLOW,
input wire SPICS,
input wire [63:0] TXDATA,

output wire SHREGOUT,
output wire [63:0] RXDATA
);

////////////// declaring wires and registers //////////////
wire SPI_Clk_pos;
wire SPI_Clk_neg;
wire MUX_S;
wire XClk_out;

reg CS_D;
reg XClk_D;

////////////// assigning controlling logic //////////////

assign SPI_Clk_pos = (~SPICS) & SPICLK;
assign SPI_Clk_neg = SPICS ^ SPICLK;
assign MUX_S = ~( CS_D ^ XClk_D );

always @ (posedge SPICS or negedge RSTLOW)
begin
  if(!RSTLOW)
    CS_D <= 0;
  else
    CS_D <= ~CS_D;
end

always @ (negedge XClk_out or negedge RSTLOW)
begin
  if(!RSTLOW)
    XClk_D <= 0;
  else
    XClk_D <= ~XClk_D;
end

////////////// calling modules //////////////

XClk XClk1(
.SIGLONGPRD(~SPICS),
.SIGSHORTPRD(SPICLK),
.RSTLOW(RSTLOW),
.FLAGOUT(XClk_out)
);

SPI_64bit SPI_1(
.i_SPI_Clk_pos(SPI_Clk_pos),
.i_SPI_Clk_neg(SPI_Clk_neg),
.i_SPI_MOSI(SHREGIN),
.o_SPI_MISO(SHREGOUT),
.i_SPI_CS_n(SPICS),
.MUX_S(MUX_S),
.i_Rst_L(RSTLOW),
.o_RX_Data(RXDATA),
.i_TX_Data(TXDATA)
);

endmodule


////////////// Declaring XClk Module //////////////
module XClk(
input wire SIGLONGPRD,
input wire SIGSHORTPRD,
input wire RSTLOW,
output wire FLAGOUT
);

reg DIV1;
reg DIV2;
wire w_DIV1;
wire w_DIV2;

assign w_DIV1 = DIV1;
assign w_DIV2 = DIV2;
assign FLAGOUT = w_DIV1 ^ w_DIV2;

always@(posedge SIGLONGPRD or negedge RSTLOW)
begin
  if(!RSTLOW)
    DIV1 <= 0;
  else 
    DIV1 <= ~DIV1;
end

always@(posedge SIGSHORTPRD or negedge RSTLOW)
begin
  if(!RSTLOW)
    DIV2 <= 0;
  else 
    DIV2 <= w_DIV1;
end

endmodule

////////////// Declaring Shift Register Module //////////////

module SPI_64bit(
// SPI interface
input wire i_SPI_Clk_pos,
input wire i_SPI_Clk_neg,
input wire i_SPI_MOSI,
output wire o_SPI_MISO,
input wire i_SPI_CS_n,

// Control Signals
input wire MUX_S,
input wire i_Rst_L,
output reg [63:0] o_RX_Data,  // Data received on i_SPI_MOSI
input wire [63:0] i_TX_Data  // Data to serialize to o_SPI_MISO
);

////////////// declaring wires //////////////
wire [63:0] SPI_Conn;
wire [63:0] MUX_out;
reg [63:0] SPI_pos;
reg [63:0] SPI_neg;

////////////// assigning wires and muxes //////////////
assign o_SPI_MISO = SPI_neg[63];
assign SPI_Conn[63:0] = SPI_pos[63:0];
assign MUX_out[63:0] = MUX_S ? i_TX_Data[63:0] : SPI_Conn[63:0];

////////////// Declare register behaviors //////////////
always@(posedge i_SPI_Clk_pos or negedge i_Rst_L)
begin
  if(!i_Rst_L)
    SPI_pos[63:0] <= 64'b0;
  else
  begin
    SPI_pos[0] <= i_SPI_MOSI;
    SPI_pos[63:1] <= SPI_neg[62:0];
  end
end

always@(negedge i_SPI_Clk_neg or negedge i_Rst_L)
begin
  if(!i_Rst_L)
    SPI_neg[63:0] <= 64'b0;
  else
    SPI_neg[63:0] <= MUX_out[63:0];
end

always@(posedge i_SPI_CS_n or negedge i_Rst_L)
begin
  if(!i_Rst_L)
    o_RX_Data[63:0] <= 64'b0;
  else
    o_RX_Data[63:0] <= SPI_Conn;
end

endmodule