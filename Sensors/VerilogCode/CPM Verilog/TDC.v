//Edge Detector
//Edge Detector indicates the location of the positive edge of the delayed clock signal from CPL through DELAY_IN
//parameter 'DELAY_CELL' is extracted data from spice model. Please refer to your own process techonolgy model/datasheet for customized simulation


`timescale 10ps / 1ps 

module TDC ( D1, D2, D3, D4, D5, D6, EDGE_OUT,
     CLK, DELAY_IN, RST );

output  D1, D2, D3, D4, D5, D6;		// These outputs are for probing use only

input  CLK, DELAY_IN, RST;		// DELAY_IN inputs the clock-signal-under-detecting; CLK triggers DFF to latch the location of the edge

output reg [1:16]  EDGE_OUT;		// output indicate the location of the delayed clock edge

parameter DELAY_CELL = 7; 		// delay caused by one delay cell.

///////////////////Define connection wires between delay cells///////////////////

wire D7;
wire D8;
wire D9;
wire D10;
wire D11;
wire D12;
wire D13;
wire D14;
wire D15;
wire D16;

///////////////////Assign connections between delay cells///////////////////

assign #DELAY_CELL D1 = DELAY_IN;
assign #DELAY_CELL D2 = D1;
assign #DELAY_CELL D3 = D2;
assign #DELAY_CELL D4 = D3;
assign #DELAY_CELL D5 = D4;
assign #DELAY_CELL D6 = D5;
assign #DELAY_CELL D7 = D6;
assign #DELAY_CELL D8 = D7;
assign #DELAY_CELL D9 = D8;
assign #DELAY_CELL D10 = D9;
assign #DELAY_CELL D11 = D10;
assign #DELAY_CELL D12 = D11;
assign #DELAY_CELL D13 = D12;
assign #DELAY_CELL D14 = D13;
assign #DELAY_CELL D15 = D14;
assign #DELAY_CELL D16 = D15;

///////////////////Edge Detector///////////////////

always @ (posedge CLK or negedge RST)

if (RST == 0) 				//reset
begin

EDGE_OUT [1] <= 0;
EDGE_OUT [2] <= 0;
EDGE_OUT [3] <= 0;
EDGE_OUT [4] <= 0;
EDGE_OUT [5] <= 0;
EDGE_OUT [6] <= 0;
EDGE_OUT [7] <= 0;
EDGE_OUT [8] <= 0;
EDGE_OUT [9] <= 0;
EDGE_OUT [10] <= 0;
EDGE_OUT [11] <= 0;
EDGE_OUT [12] <= 0;
EDGE_OUT [13] <= 0;
EDGE_OUT [14] <= 0;
EDGE_OUT [15] <= 0;
EDGE_OUT [16] <= 0;

end

else
begin 					// edge capturing

EDGE_OUT [1] <= D1;
EDGE_OUT [2] <= D2;
EDGE_OUT [3] <= D3;
EDGE_OUT [4] <= D4;
EDGE_OUT [5] <= D5;
EDGE_OUT [6] <= D6;
EDGE_OUT [7] <= D7;
EDGE_OUT [8] <= D8;
EDGE_OUT [9] <= D9;
EDGE_OUT [10] <= D10;
EDGE_OUT [11] <= D11;
EDGE_OUT [12] <= D12;
EDGE_OUT [13] <= D13;
EDGE_OUT [14] <= D14;
EDGE_OUT [15] <= D15;
EDGE_OUT [16] <= D16;

end

endmodule

