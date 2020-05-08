`timescale 1ps / 100fs

module RO_MUX(
input wire [5:0]RO_IN,
input wire [3:1]S,
output wire RO_OUT
);

wire [4:0]MUX_Conn;

/// S1
assign MUX_Conn[0] = S[1] ? RO_IN[0] : RO_IN[1];
assign MUX_Conn[1] = S[1] ? RO_IN[2] : RO_IN[3];
assign MUX_Conn[2] = S[1] ? RO_IN[4] : RO_IN[5];
/// S2
assign MUX_Conn[3] = S[2] ? MUX_Conn[0] : MUX_Conn[1];
assign MUX_Conn[4] = S[2] ? MUX_Conn[2] : 1'b0;
/// S3
assign RO_OUT = S[3] ? MUX_Conn[3] : MUX_Conn[4];

endmodule
