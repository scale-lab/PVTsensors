//Scan-chain
//scan-chain converts a serial data into parallel, by shifting the data each clock cycle

//Since scan-chain gives only control signals and is supposed to be pre-loaded in advance, no delay is added to the simulation
//User can refer to your own process techonolgy model/datasheet for customized simulation
///////////////////////////////////////////

`timescale 10ps / 1ps 

module SCANCHAIN_B ( SC_DIN, SC_CLK, SC_LATCH, S1, S2, S3, S4, RST );

input SC_DIN, SC_CLK, SC_LATCH, RST;	// SC_DIN for serial data input; SC_CLK provide clock input; SC_LATCH latches the data from DFF to output registers when high
output S1, S2, S3, S4;			// parallel data output

wire SC_DIN, SC_CLK, SC_LATCH, RST;
reg S1, S2, S3, S4;

reg [1:4] SC_POS_REG; 			// positive-edge-triggered DFF
reg [1:4] SC_NEG_REG; 			// negative-edge-triggered DFF

always @ (posedge SC_CLK or negedge SC_CLK or negedge RST or posedge SC_LATCH)
begin

if (RST == 0) 				// reset
begin
S1 <= 0;
S2 <= 0;
S3 <= 0;
S4 <= 0;
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

S1 <= SC_POS_REG[1];
S2 <= SC_POS_REG[2];
S3 <= SC_POS_REG[3];
S4 <= SC_POS_REG[4];

end

end

end

endmodule
