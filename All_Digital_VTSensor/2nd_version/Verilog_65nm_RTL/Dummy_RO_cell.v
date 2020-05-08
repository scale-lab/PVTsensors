/////////////////// Please synthesize this RO with lvt library /////////////////// 
/////////////////// This RO contains 31 stages /////////////////// 

`timescale 1ps / 100fs

module Dummy_RO_cell(
input wire i_Enable,
input wire i_Sel
);

/////////////////// Define wires between inverters ///////////////////
wire [14:0] w_inv_Conn;

// RTL for NAND3 with imaginary delay numbers
// always@(w_inv_Conn[13] or i_Sel or i_Enable)
assign #80 w_inv_Conn[14] =  ~(w_inv_Conn[13] & i_Sel & i_Enable);

// NAND3X6MA10TL U0(
// .A(i_Enable),
// .B(i_Sel),
// .C(w_inv_Conn[13]),
// .Y(w_inv_Conn[14])
// );

inv_lvt_d U1(
.in(w_inv_Conn[14]),
.out(w_inv_Conn[0])
);

inv_lvt_d U2(
.in(w_inv_Conn[0]),
.out(w_inv_Conn[1])
);

inv_lvt_d U3(
.in(w_inv_Conn[1]),
.out(w_inv_Conn[2])
);

inv_lvt_d U4(
.in(w_inv_Conn[2]),
.out(w_inv_Conn[3])
);

inv_lvt_d U5(
.in(w_inv_Conn[3]),
.out(w_inv_Conn[4])
);

inv_lvt_d U6(
.in(w_inv_Conn[4]),
.out(w_inv_Conn[5])
);

inv_lvt_d U7(
.in(w_inv_Conn[5]),
.out(w_inv_Conn[6])
);

inv_lvt_d U8(
.in(w_inv_Conn[6]),
.out(w_inv_Conn[7])
);

inv_lvt_d U9(
.in(w_inv_Conn[7]),
.out(w_inv_Conn[8])
);

inv_lvt_d U10(
.in(w_inv_Conn[8]),
.out(w_inv_Conn[9])
);

inv_lvt_d U11(
.in(w_inv_Conn[9]),
.out(w_inv_Conn[10])
);

inv_lvt_d U12(
.in(w_inv_Conn[10]),
.out(w_inv_Conn[11])
);

inv_lvt_d U13(
.in(w_inv_Conn[11]),
.out(w_inv_Conn[12])
);

inv_lvt_d U14(
.in(w_inv_Conn[12]),
.out(w_inv_Conn[13])
);

endmodule

module inv_lvt_d(
input wire in,
output wire out
); 

// RTL for inverter with imaginary delay numbers
// always@(in)
assign #20 out = ~in;

// INVX9MA10TL U0(
// .A(in),
// .Y(out)
// );

endmodule 

