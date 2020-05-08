`timescale 1ps / 100fs

module Ripple_Counter_SPIClkCnt(
input wire SPI_CS,
input wire SPI_Clk,
input wire RSTLOW,
input wire [7:0] End_Cnt,

output reg ENOUT,
output reg ROCNT_Rst
);

/////////// Wire & Register Assignments ///////////
wire [0:7] CNT;
reg Overflow_flag;
wire SPICNT_RST;

/////////// RST Logic ///////////
assign SPICNT_RST = RSTLOW & (~SPI_CS);

/////////// Case Machine ///////////
always @ (negedge SPI_Clk or negedge SPICNT_RST) // or negedge RSTLOW
if(!SPICNT_RST)
begin
  Overflow_flag <= 1'b0;
  ROCNT_Rst <= 1'b1;    // The initial state is 1(not reseting RO counter), since the RO counter needs to store the value during when SPI_CS is high; Initial reset of the RO counter value is done while the whole chip is reseting
  ENOUT <= 1'b0;
end
else
  if (Overflow_flag == 1'b0)
  begin
    case(CNT)
      8'b00000001:
      begin
        ROCNT_Rst <= 1'b0;
      end
      8'b00000010:
      begin
        ROCNT_Rst <= 1'b1;
      end
      8'b00000011:
      begin
        ENOUT <= 1'b1;
      end
      End_Cnt:
      begin
        ENOUT <= 1'b0;
      end
      8'b11111110:
      begin
        Overflow_flag <= 1'b1;
      end
    endcase
  end

/////////// Insert counter module ///////////
Ripple_Counter_8bit CNT_D(
.i_Sig(SPI_Clk),
.i_Rst(SPICNT_RST),
.o_Cnt(CNT)
);

endmodule


/////////// Declare Ripple_Counter Module ///////////
module Ripple_Counter_8bit(
  input  wire i_Sig,
  input  wire i_Rst,
  
  output wire [7:0] o_Cnt 
);

wire [7:0] w_DFF;
reg  [7:0] r_DFF;

assign o_Cnt = ~w_DFF;
assign w_DFF = r_DFF;

always @ (negedge i_Sig or negedge i_Rst) // first block is negative edge triggered, so the enable starts at the first lower edge
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

endmodule