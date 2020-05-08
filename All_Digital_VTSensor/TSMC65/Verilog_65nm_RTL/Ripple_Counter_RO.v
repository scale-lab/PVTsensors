`timescale 1ps / 100fs

module Ripple_Counter_RO(
input wire ENIN,
input wire CLK,
input wire RSTLOW,
input wire RSTLOW_CNT,

output wire [15:0]CNT
);

/////////// Declaring Wires ///////////
wire CNT_CLK;
wire CNT_RST;

/////////// Enable and RST Logic ///////////
assign CNT_CLK = CLK & ENIN;
assign CNT_RST = RSTLOW & RSTLOW_CNT;

/////////// Insert counter module ///////////
counter_sync_D CNT_D(
.i_Sig(CNT_CLK),
.i_Rst(CNT_RST),
.o_Cnt(CNT)
);

endmodule


module counter_sync_D(
  
  input  wire i_Sig,
  input  wire i_Rst,
  
  output wire [15:0] o_Cnt 
  
);

wire [15:0] w_DFF;
reg  [15:0] r_DFF;

assign o_Cnt = ~w_DFF;
assign w_DFF = r_DFF;

always @ (posedge i_Sig or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[0] <= 0;
  else
    r_DFF[0] <= ~r_DFF[0];
  
end

always @ (posedge w_DFF[0] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[1] <= 0;
  else
    r_DFF[1] <= ~r_DFF[1];
  
end

always @ (posedge w_DFF[1] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[2] <= 0;
  else
    r_DFF[2] <= ~r_DFF[2];
  
end

always @ (posedge w_DFF[2] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[3] <= 0;
  else
    r_DFF[3] <= ~r_DFF[3];
  
end

always @ (posedge w_DFF[3] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[4] <= 0;
  else
    r_DFF[4] <= ~r_DFF[4];
  
end

always @ (posedge w_DFF[4] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[5] <= 0;
  else
    r_DFF[5] <= ~r_DFF[5];
  
end

always @ (posedge w_DFF[5] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[6] <= 0;
  else
    r_DFF[6] <= ~r_DFF[6];
  
end

always @ (posedge w_DFF[6] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[7] <= 0;
  else
    r_DFF[7] <= ~r_DFF[7];
  
end

always @ (posedge w_DFF[7] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[8] <= 0;
  else
    r_DFF[8] <= ~r_DFF[8];
  
end

always @ (posedge w_DFF[8] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[9] <= 0;
  else
    r_DFF[9] <= ~r_DFF[9];
  
end

always @ (posedge w_DFF[9] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[10] <= 0;
  else
    r_DFF[10] <= ~r_DFF[10];
  
end

always @ (posedge w_DFF[10] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[11] <= 0;
  else
    r_DFF[11] <= ~r_DFF[11];
  
end

always @ (posedge w_DFF[11] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[12] <= 0;
  else
    r_DFF[12] <= ~r_DFF[12];
  
end

always @ (posedge w_DFF[12] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[13] <= 0;
  else
    r_DFF[13] <= ~r_DFF[13];
  
end

always @ (posedge w_DFF[13] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[14] <= 0;
  else
    r_DFF[14] <= ~r_DFF[14];
  
end

always @ (posedge w_DFF[14] or negedge i_Rst)
begin
  
  if(!i_Rst)
    r_DFF[15] <= 0;
  else
    r_DFF[15] <= ~r_DFF[15];
  
end

endmodule