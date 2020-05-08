`timescale 1ps / 100fs

module Ripple_Counter_16bit(
input wire ENIN,
input wire CLK,
input wire RSTHIGH,

output wire [15:0]CNT,
output wire ENOUT,
output wire TXDV,
output wire TDCCAPTURE
);

reg EN2;
reg EN3;
wire RST2;
wire RSTHIGH_CNT;

/////////// Dividing clocks /////////// 

always@(posedge ENIN or posedge RSTHIGH)
begin
  if(RSTHIGH == 1)
    EN2 <= 0;
  else
    EN2 <= ~EN2;
end

always@(posedge EN2 or posedge RSTHIGH)
begin
  if(RSTHIGH == 1)
    EN3 <= 0;
  else
    EN3 <= ~EN3;
end

/////////// control logic assignments /////////// 
assign TXDV = ~(ENIN | EN2 | ~EN3);
assign RST2 = ~(ENIN | ~EN2 | EN3);
assign RSTHIGH_CNT = RST2 | RSTHIGH;
assign ENOUT = EN2 & EN3;
assign TDCCAPTURE = EN2 | ~EN3;

/////////// Insert counter module ///////////
counter_sync CNT1(
.i_Sig(CLK),
.i_Rst(RSTHIGH_CNT),
.o_Cnt(CNT)
);

endmodule



module counter_sync(
  
  input  wire i_Sig,
  input  wire i_Rst,
  
  output wire [15:0] o_Cnt 
  
);

wire [15:0] w_DFF;
reg  [15:0] r_DFF;

assign o_Cnt = ~w_DFF;
assign w_DFF = r_DFF;

always @ (posedge i_Sig or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[0] <= 0;
  else
    r_DFF[0] <= ~r_DFF[0];
  
end

always @ (posedge w_DFF[0] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[1] <= 0;
  else
    r_DFF[1] <= ~r_DFF[1];
  
end

always @ (posedge w_DFF[1] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[2] <= 0;
  else
    r_DFF[2] <= ~r_DFF[2];
  
end

always @ (posedge w_DFF[2] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[3] <= 0;
  else
    r_DFF[3] <= ~r_DFF[3];
  
end

always @ (posedge w_DFF[3] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[4] <= 0;
  else
    r_DFF[4] <= ~r_DFF[4];
  
end

always @ (posedge w_DFF[4] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[5] <= 0;
  else
    r_DFF[5] <= ~r_DFF[5];
  
end

always @ (posedge w_DFF[5] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[6] <= 0;
  else
    r_DFF[6] <= ~r_DFF[6];
  
end

always @ (posedge w_DFF[6] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[7] <= 0;
  else
    r_DFF[7] <= ~r_DFF[7];
  
end

always @ (posedge w_DFF[7] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[8] <= 0;
  else
    r_DFF[8] <= ~r_DFF[8];
  
end

always @ (posedge w_DFF[8] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[9] <= 0;
  else
    r_DFF[9] <= ~r_DFF[9];
  
end

always @ (posedge w_DFF[9] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[10] <= 0;
  else
    r_DFF[10] <= ~r_DFF[10];
  
end

always @ (posedge w_DFF[10] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[11] <= 0;
  else
    r_DFF[11] <= ~r_DFF[11];
  
end

always @ (posedge w_DFF[11] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[12] <= 0;
  else
    r_DFF[12] <= ~r_DFF[12];
  
end

always @ (posedge w_DFF[12] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[13] <= 0;
  else
    r_DFF[13] <= ~r_DFF[13];
  
end

always @ (posedge w_DFF[13] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[14] <= 0;
  else
    r_DFF[14] <= ~r_DFF[14];
  
end

always @ (posedge w_DFF[14] or posedge i_Rst)
begin
  
  if(i_Rst)
    r_DFF[15] <= 0;
  else
    r_DFF[15] <= ~r_DFF[15];
  
end

endmodule