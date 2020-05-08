`timescale 1ps / 100fs

module RO_MUX(
input wire [15:0]RO_IN,
input wire [4:1]S,
output wire RO_OUT
);

///////////////// 2^3 + 2^2 + 2 = 14 connection wires needed /////////////////
wire [13:0]MUX_Conn;

/// S1
assign MUX_Conn[0] = S[1] ? RO_IN[1] : RO_IN[0];
assign MUX_Conn[1] = S[1] ? RO_IN[3] : RO_IN[2];
assign MUX_Conn[2] = S[1] ? RO_IN[5] : RO_IN[4];
assign MUX_Conn[3] = S[1] ? RO_IN[7] : RO_IN[6];
assign MUX_Conn[4] = S[1] ? RO_IN[9] : RO_IN[8];
assign MUX_Conn[5] = S[1] ? RO_IN[11] : RO_IN[10];
assign MUX_Conn[6] = S[1] ? RO_IN[13] : RO_IN[12];
assign MUX_Conn[7] = S[1] ? RO_IN[15] : RO_IN[14];
/// S2
assign MUX_Conn[8] = S[2] ? MUX_Conn[1] : MUX_Conn[0];
assign MUX_Conn[9] = S[2] ? MUX_Conn[3] : MUX_Conn[2];
assign MUX_Conn[10] = S[2] ? MUX_Conn[5] : MUX_Conn[4];
assign MUX_Conn[11] = S[2] ? MUX_Conn[7] : MUX_Conn[6];
/// S3
assign MUX_Conn[12] = S[3] ? MUX_Conn[9] : MUX_Conn[8];
assign MUX_Conn[13] = S[3] ? MUX_Conn[11] : MUX_Conn[10];
/// S4
assign RO_OUT = S[4] ? MUX_Conn[13] : MUX_Conn[12];

endmodule
