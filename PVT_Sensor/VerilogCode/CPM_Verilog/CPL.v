//Critical Path Logic
//This module creates a programmable replica of the critical path for generating propergation delays of the input clock signal
//parameter 'NR3_TPLH', 'NR3_TPHL', 'ND4_TPLH', 'ND4_TPHL' are extracted propergation delay numbers from spice model. Please refer to your own process techonolgy model/datasheet for customized simulation
///////////////////////////////////////////

`timescale 10ps / 1ps 

module CPL ( D1, D2, D3, OUT, R1, R2, R3, IN, S1, S2, S3, S4 );

output D1, D2, D3, R1, R2, R3;	// These are probing output ports
output OUT; 			// delayed-clock signal output

input S1, S2, S3, S4;		// Control signals, come from scan-chain
input IN;			// clock signal input

parameter NR3_TPLH = 8; 	// low-to-high propergation delay for NOR3 gate
parameter NR3_TPHL = 6; 	// high-to-low propergation delay for NOR3 gate
parameter ND4_TPLH = 6; 	// low-to-high propergation delay for NAND4 gate
parameter ND4_TPHL = 8; 	// high-to-low propergation delay for NAND4 gate

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

assign S1B = ~S1;
assign S2B = ~S2;
assign S3B = ~S3;
assign C3_NOR = ~(S4|S3B);
assign C2_NOR = ~(S3|S2B);
assign C1_NOR = ~(S2|S1B);
assign C1_NAND = ~(S2&S1B);
assign C2_NAND = ~(S3&S2B);
assign C3_NAND = ~(S4&S3B);
assign NRND_IN = NET040&NET033;
assign NET033 = ~OUT;
assign NET040 = IN;
assign MUX_D[0] = OUT_NOR;
assign MUX_D[1] = OUT_NAND;

///////////////////Critical Path Logic///////////////////

assign #(NR3_TPLH,NR3_TPHL) NR1_NR2 = ~(S1|NRND_IN|S1);
assign #(NR3_TPLH,NR3_TPHL) R1 = ~(NR1_NR2|NR1_NR2|C1_NOR);
assign #(NR3_TPLH,NR3_TPHL) NR3_NR4 = ~(R1|D1|S2);
assign #(NR3_TPLH,NR3_TPHL) R2 = ~(NR3_NR4|NR3_NR4|C2_NOR);
assign #(NR3_TPLH,NR3_TPHL) NR5_NR6 = ~(R2|D2|S3);
assign #(NR3_TPLH,NR3_TPHL) R3 = ~(NR5_NR6|NR5_NR6|C3_NOR);
assign #(NR3_TPLH,NR3_TPHL) NR7_NR8 = ~(R3|D3|S4);
assign #(NR3_TPLH,NR3_TPHL) OUT_NOR = ~(NR7_NR8|NR7_NR8|S4);

assign #(ND4_TPLH,ND4_TPHL) ND1_ND2 = ~(S1&NRND_IN&S1&S1);
assign #(ND4_TPLH,ND4_TPHL) D1 = ~(ND1_ND2&ND1_ND2&ND1_ND2&C1_NAND);
assign #(ND4_TPLH,ND4_TPHL) ND3_ND4 = ~(D1&R1&D1&S2);
assign #(ND4_TPLH,ND4_TPHL) D2 = ~(ND3_ND4&ND3_ND4&ND3_ND4&C2_NAND);
assign #(ND4_TPLH,ND4_TPHL) ND5_ND6 = ~(D2&R2&D2&S3);
assign #(ND4_TPLH,ND4_TPHL) D3 = ~(ND5_ND6&ND5_ND6&ND5_ND6&C3_NAND);
assign #(ND4_TPLH,ND4_TPHL) ND7_ND8 = ~(D3&R3&D3&S4);
assign #(ND4_TPLH,ND4_TPHL) OUT_NAND = ~(ND7_ND8&ND7_ND8&ND7_ND8&S4);

assign OUT = MUX_D[S4];

endmodule


