//// Verilog code for Critical Path Monitor
//// Acknowledgements: This is a ideal model for simulation/functional verification only. NOT meant for RTL synthesis.
//// All delay numbers are extracted from spice model/datasheet of applied process technology. Users are free to change parameters based on their own process technology.



///////////////////////////////////////////Critical Path Monitor Top Module///////////////////////////////////////////
//This is the top module of includes Critical Path logic, edge detector and scan-chain
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//`include "./CPL.v"
//`include "./SC.v"
//`include "./TDC.v"

`timescale 10ps / 1ps 

module CPM ( CPL_CLK, TDC_CLK, RST, SC_DIN, SC_CLK, SC_LEN, P_CPL_D, P_CPL_R, P_TDC_D, CPM_OUT );

input CPL_CLK, TDC_CLK;					// clock signal input for Critical Path Logic and edge detector
input SC_DIN, SC_CLK, SC_LEN;				// Serial data input, clk, latch enable pin for scan-chain
input RST;						// reset

output [1:3] P_CPL_D;					// probing ports for Critical Path Logic NAND4 outputs
output [1:3] P_CPL_R;					// probing ports for Critical Path Logic NOR3 outputs
output [1:6] P_TDC_D;					// probing ports for edge detector first 6 delay cell outputs
output [1:16] CPM_OUT;					// data output

///////////////////Define inner connection wires///////////////////

wire [1:4] S;						// Select Signal from scan-chain to CPL, S1 - S4
wire TDC_DELAY;

///////////////////Model connection///////////////////

CPL CPL ( .D(P_CPL_D), .OUT(TDC_DELAY), .R(P_CPL_R), .IN(CPL_CLK), .S(S) );

SCANCHAIN SC ( .SC_DIN(SC_DIN), .SC_CLK(SC_CLK), .SC_LATCH(SC_LEN), .S(S), .RST(RST) );

TDC TDC ( .D(P_TDC_D), .EDGE_OUT(CPM_OUT), .CLK(TDC_CLK), .DELAY_IN(TDC_DELAY), .RST(RST) );

endmodule


///////////////////////////////////////////Critical Path Logic///////////////////////////////////////////
//This module creates a programmable replica of the critical path for generating propergation delays of the input clock signal
//parameter 'NR3_TPLH', 'NR3_TPHL', 'ND4_TPLH', 'ND4_TPHL' are extracted propergation delay numbers from spice model. Please refer to your own process techonolgy model/datasheet for customized simulation
/////////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 10ps / 1ps 

module CPL ( D, OUT, R, IN, S );

output [1:3] D;				// These are probing output ports for NAND4 outputs
output [1:3] R;				// These are probing output ports for NOR3 outputs
output OUT; 				// delayed-clock signal output	

input [1:4] S;				// Control signals, come from scan-chain
input IN;				// clock signal input

parameter NR3_TPLH = 8; 		// low-to-high propergation delay for NOR3 gate
parameter NR3_TPHL = 6; 		// high-to-low propergation delay for NOR3 gate
parameter ND4_TPLH = 6; 		// low-to-high propergation delay for NAND4 gate
parameter ND4_TPHL = 8; 		// high-to-low propergation delay for NAND4 gate

///////////////////Define control wires///////////////////

wire S1B;
wire S2B;
wire S3B;
wire C1_NOR;
wire C1_NAND;
wire C2_NOR;
wire C2_NAND;
wire C3_NOR;
wire C3_NAND;
wire OUT_NOR;
wire OUT_NAND;

///////////////////Define connection wires within critical path logic///////////////////

wire NR1_NR2;
wire NRND_IN;
wire NR3_NR4;
wire NR7_NR8;
wire NR5_NR6;
wire ND1_ND2;
wire ND7_ND8;
wire ND5_ND6;
wire NET033;
wire NET040;
wire ND3_ND4;

wire [1:0] MUX_D;

///////////////////Assign Control Logic///////////////////

assign S1B = ~S[1];
assign S2B = ~S[2];
assign S3B = ~S[3];
assign C3_NOR = ~(S[4] | S3B);
assign C2_NOR = ~(S[3] | S2B);
assign C1_NOR = ~(S[2] | S1B);
assign C1_NAND = ~(S[2] & S1B);
assign C2_NAND = ~(S[3] & S2B);
assign C3_NAND = ~(S[4] & S3B);
assign NRND_IN = NET040 & NET033;
assign NET033 = ~OUT;
assign NET040 = IN;
assign MUX_D[0] = OUT_NOR;
assign MUX_D[1] = OUT_NAND;

///////////////////Critical Path Logic///////////////////

assign #(NR3_TPLH,NR3_TPHL) NR1_NR2 = ~(S[1] | NRND_IN | S[1]);
assign #(NR3_TPLH,NR3_TPHL) R[1] = ~(NR1_NR2 | NR1_NR2 | C1_NOR);
assign #(NR3_TPLH,NR3_TPHL) NR3_NR4 = ~(R[1] | D[1] | S[2]);
assign #(NR3_TPLH,NR3_TPHL) R[2] = ~(NR3_NR4 | NR3_NR4 | C2_NOR);
assign #(NR3_TPLH,NR3_TPHL) NR5_NR6 = ~(R[2] | D[2] | S[3]);
assign #(NR3_TPLH,NR3_TPHL) R[3] = ~(NR5_NR6 | NR5_NR6 | C3_NOR);
assign #(NR3_TPLH,NR3_TPHL) NR7_NR8 = ~(R[3] | D[3] | S[4]);
assign #(NR3_TPLH,NR3_TPHL) OUT_NOR = ~(NR7_NR8 | NR7_NR8 | S[4]);

assign #(ND4_TPLH,ND4_TPHL) ND1_ND2 = ~(S[1] & NRND_IN & S[1] & S[1]);
assign #(ND4_TPLH,ND4_TPHL) D[1] = ~(ND1_ND2 & ND1_ND2 & ND1_ND2 & C1_NAND);
assign #(ND4_TPLH,ND4_TPHL) ND3_ND4 = ~(D[1] & R[1] & D[1] & S[2]);
assign #(ND4_TPLH,ND4_TPHL) D[2] = ~(ND3_ND4 & ND3_ND4 & ND3_ND4 & C2_NAND);
assign #(ND4_TPLH,ND4_TPHL) ND5_ND6 = ~(D[2] & R[2] & D[2] & S[3]);
assign #(ND4_TPLH,ND4_TPHL) D[3] = ~(ND5_ND6 & ND5_ND6 & ND5_ND6 & C3_NAND);
assign #(ND4_TPLH,ND4_TPHL) ND7_ND8 = ~(D[3] & R[3] & D[3] & S[4]);
assign #(ND4_TPLH,ND4_TPHL) OUT_NAND = ~(ND7_ND8 & ND7_ND8 & ND7_ND8 & S[4]);

assign OUT = MUX_D[S[4]];

endmodule


///////////////////////////////////////////Scan-chain///////////////////////////////////////////
//scan-chain converts a serial data into parallel, by shifting the data each clock cycle
//Since scan-chain gives only control signals and is supposed to be pre-loaded in advance, no delay is added to the simulation
//User can refer to your own process techonolgy model/datasheet for customized simulation
////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 10ps / 1ps 

module SCANCHAIN ( SC_DIN, SC_CLK, SC_LATCH, S, RST );

input SC_DIN, SC_CLK, SC_LATCH, RST;	// SC_DIN for serial data input; SC_CLK provide clock input; SC_LATCH latches the data from DFF to output registers when high
output reg [1:4] S;			// Parallel data output

wire SC_DIN, SC_CLK, SC_LATCH, RST;

reg [1:4] SC_POS_REG; 			// positive-edge-triggered DFF
reg [1:4] SC_NEG_REG; 			// negative-edge-triggered DFF

always @ (posedge SC_CLK or negedge SC_CLK or negedge RST or posedge SC_LATCH)
begin

if (RST == 0) 				// reset
begin
S[1:4] = "0000";
SC_NEG_REG[1:4] = "0000";
SC_POS_REG[1:4] = "0000";
end

else
begin

if (SC_CLK == 0) 			// when negative edge arrives, negative-edge-triggered DFFs capture the previous data to prevent conflict during shifting
begin

SC_NEG_REG[1] <= SC_POS_REG[1];
SC_NEG_REG[2] <= SC_POS_REG[2];
SC_NEG_REG[3] <= SC_POS_REG[3];
SC_NEG_REG[4] <= SC_POS_REG[4];

end

else if (SC_CLK == 1) 			// when positive edge arrives, data finish shifting for 1 bit
begin

SC_POS_REG[1] <= SC_DIN;
SC_POS_REG[2] <= SC_NEG_REG[1];
SC_POS_REG[3] <= SC_NEG_REG[2];
SC_POS_REG[4] <= SC_NEG_REG[3];

end

if (SC_LATCH == 1) 			// latch the current control data
begin

S[1] <= SC_POS_REG[1];
S[2] <= SC_POS_REG[2];
S[3] <= SC_POS_REG[3];
S[4] <= SC_POS_REG[4];

end

end

end

endmodule



///////////////////////////////////////////Edge Detector///////////////////////////////////////////
//Edge Detector indicates the location of the positive edge of the delayed clock signal from CPL through DELAY_IN
//parameter 'DELAY_CELL' is extracted data from spice model. Please refer to your own process techonolgy model/datasheet for customized simulation
///////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 10ps / 1ps 

module TDC ( D, EDGE_OUT, CLK, DELAY_IN, RST );

output  [1:6] D;			// These outputs are for probing first 6 delay cell outputs

input  CLK, DELAY_IN, RST;		// DELAY_IN inputs the clock-signal-under-detecting; CLK triggers DFF to latch the location of the edge

output reg [1:16]  EDGE_OUT;		// output indicate the location of the delayed clock edge

parameter DELAY_CELL = 7; 		// delay caused by one delay cell.

///////////////////Define connection wires between delay cells///////////////////

wire [7:16] D;

///////////////////Assign connections between delay cells///////////////////

assign #DELAY_CELL D[1] = DELAY_IN;
assign #DELAY_CELL D[2] = D[1];
assign #DELAY_CELL D[3] = D[2];
assign #DELAY_CELL D[4] = D[3];
assign #DELAY_CELL D[5] = D[4];
assign #DELAY_CELL D[6] = D[5];
assign #DELAY_CELL D[7] = D[6];
assign #DELAY_CELL D[8] = D[7];
assign #DELAY_CELL D[9] = D[8];
assign #DELAY_CELL D[10] = D[9];
assign #DELAY_CELL D[11] = D[10];
assign #DELAY_CELL D[12] = D[11];
assign #DELAY_CELL D[13] = D[12];
assign #DELAY_CELL D[14] = D[13];
assign #DELAY_CELL D[15] = D[14];
assign #DELAY_CELL D[16] = D[15];

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

EDGE_OUT [1] <= D[1];
EDGE_OUT [2] <= D[2];
EDGE_OUT [3] <= D[3];
EDGE_OUT [4] <= D[4];
EDGE_OUT [5] <= D[5];
EDGE_OUT [6] <= D[6];
EDGE_OUT [7] <= D[7];
EDGE_OUT [8] <= D[8];
EDGE_OUT [9] <= D[9];
EDGE_OUT [10] <= D[10];
EDGE_OUT [11] <= D[11];
EDGE_OUT [12] <= D[12];
EDGE_OUT [13] <= D[13];
EDGE_OUT [14] <= D[14];
EDGE_OUT [15] <= D[15];
EDGE_OUT [16] <= D[16];

end

endmodule


