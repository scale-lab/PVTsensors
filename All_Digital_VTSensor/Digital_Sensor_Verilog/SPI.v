`timescale 1ps / 100fs

module SPI_top_64bit(
input wire SPICLK,
input wire SHREGIN,
input wire RSTHIGH,
input wire SPICS,
input wire [63:0] TXDATA,
input wire TXDV,

output wire SHREGOUT,
output wire [63:0] RXDATA
);

////////////// declaring wires //////////////
wire XClk_Conn;
wire SPI_Clk;

////////////// assigning controlling logic //////////////
assign SPI_Clk = SPICS ? ( XClk_Conn | ~TXDV) : SPICLK;

////////////// calling modules //////////////

XClk XClk1(
.SIGLONGPRD(SPICS),
.SIGSHORTPRD(TXDV),
.RSTHIGH(RSTHIGH),
.FLAGOUT(XClk_Conn)
);

SPI_64bit SPI_1(
.i_SPI_Clk(SPI_Clk),
.i_SPI_MOSI(SHREGIN),
.o_SPI_MISO(SHREGOUT),
.i_SPI_CS_n(SPICS),
.i_Rst_H(RSTHIGH),
.o_RX_Data(RXDATA),
.i_TX_Data(TXDATA)
);

endmodule



module XClk(
input wire SIGLONGPRD,
input wire SIGSHORTPRD,
input wire RSTHIGH,
output wire FLAGOUT
);

reg DIV1;
reg DIV2;
wire w_DIV1;
wire w_DIV2;

assign w_DIV1 = DIV1;
assign w_DIV2 = DIV2;
assign FLAGOUT = w_DIV1 ^ w_DIV2;

always@(posedge SIGLONGPRD or posedge RSTHIGH)
begin
  if(RSTHIGH)
    DIV1 <= 0;
  else 
    DIV1 <= ~DIV1;
end

always@(posedge SIGSHORTPRD or posedge RSTHIGH)
begin
  if(RSTHIGH)
    DIV2 <= 0;
  else 
    DIV2 <= w_DIV1;
end

endmodule


module SPI_64bit(
// SPI interface
input wire i_SPI_Clk,
input wire i_SPI_MOSI,
output wire o_SPI_MISO,
input wire i_SPI_CS_n,

// Control Signals
input wire i_Rst_H,
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
assign MUX_out[63:0] = i_SPI_CS_n ? i_TX_Data[63:0] : SPI_Conn[63:0];

////////////// Declare register behaviors //////////////
always@(posedge i_SPI_Clk or posedge i_Rst_H)
begin
  if(i_Rst_H)
    SPI_pos[63:0] <= 64'b0;
  else
  begin
    SPI_pos[0] <= i_SPI_MOSI;
    SPI_pos[63:1] <= SPI_neg[62:0];
  end
end

always@(negedge i_SPI_Clk or posedge i_Rst_H)
begin
  if(i_Rst_H)
    SPI_neg[63:0] <= 64'b0;
  else
    SPI_neg[63:0] <= MUX_out[63:0];
end

always@(posedge i_SPI_CS_n or posedge i_Rst_H)
begin
  if(i_Rst_H)
    o_RX_Data[63:0] <= 64'b0;
  else
    o_RX_Data[63:0] <= SPI_Conn;
end

endmodule