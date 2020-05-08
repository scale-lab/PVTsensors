/////////////////// Please synthesize this TDC with rvt library /////////////////// 
/////////////////// This TDC contains 48 steps /////////////////// 

`timescale 1ps / 100fs

module TDC_48steps_65(
input wire i_CLK_Target,
input wire i_Clk_Ref,
input wire i_RST_n,
output wire [47:0] o_TDC_out
);

/////////////////// Declare wires between cells ///////////////////
wire [47:0]w_Clk_Conn;

TDC_cell U0(
.i_CLK_Target(i_CLK_Target),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[0]),
.o_TDC_out(o_TDC_out[0])
);

TDC_cell U1(
.i_CLK_Target(w_Clk_Conn[0]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[1]),
.o_TDC_out(o_TDC_out[1])
);

TDC_cell U2(
.i_CLK_Target(w_Clk_Conn[1]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[2]),
.o_TDC_out(o_TDC_out[2])
);

TDC_cell U3(
.i_CLK_Target(w_Clk_Conn[2]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[3]),
.o_TDC_out(o_TDC_out[3])
);

TDC_cell U4(
.i_CLK_Target(w_Clk_Conn[3]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[4]),
.o_TDC_out(o_TDC_out[4])
);

TDC_cell U5(
.i_CLK_Target(w_Clk_Conn[4]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[5]),
.o_TDC_out(o_TDC_out[5])
);

TDC_cell U6(
.i_CLK_Target(w_Clk_Conn[5]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[6]),
.o_TDC_out(o_TDC_out[6])
);

TDC_cell U7(
.i_CLK_Target(w_Clk_Conn[6]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[7]),
.o_TDC_out(o_TDC_out[7])
);

TDC_cell U8(
.i_CLK_Target(w_Clk_Conn[7]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[8]),
.o_TDC_out(o_TDC_out[8])
);

TDC_cell U9(
.i_CLK_Target(w_Clk_Conn[8]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[9]),
.o_TDC_out(o_TDC_out[9])
);

TDC_cell U10(
.i_CLK_Target(w_Clk_Conn[9]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[10]),
.o_TDC_out(o_TDC_out[10])
);

TDC_cell U11(
.i_CLK_Target(w_Clk_Conn[10]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[11]),
.o_TDC_out(o_TDC_out[11])
);

TDC_cell U12(
.i_CLK_Target(w_Clk_Conn[11]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[12]),
.o_TDC_out(o_TDC_out[12])
);

TDC_cell U13(
.i_CLK_Target(w_Clk_Conn[12]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[13]),
.o_TDC_out(o_TDC_out[13])
);

TDC_cell U14(
.i_CLK_Target(w_Clk_Conn[13]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[14]),
.o_TDC_out(o_TDC_out[14])
);

TDC_cell U15(
.i_CLK_Target(w_Clk_Conn[14]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[15]),
.o_TDC_out(o_TDC_out[15])
);

TDC_cell U16(
.i_CLK_Target(w_Clk_Conn[15]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[16]),
.o_TDC_out(o_TDC_out[16])
);

TDC_cell U17(
.i_CLK_Target(w_Clk_Conn[16]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[17]),
.o_TDC_out(o_TDC_out[17])
);

TDC_cell U18(
.i_CLK_Target(w_Clk_Conn[17]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[18]),
.o_TDC_out(o_TDC_out[18])
);

TDC_cell U19(
.i_CLK_Target(w_Clk_Conn[18]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[19]),
.o_TDC_out(o_TDC_out[19])
);

TDC_cell U20(
.i_CLK_Target(w_Clk_Conn[19]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[20]),
.o_TDC_out(o_TDC_out[20])
);

TDC_cell U21(
.i_CLK_Target(w_Clk_Conn[20]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[21]),
.o_TDC_out(o_TDC_out[21])
);

TDC_cell U22(
.i_CLK_Target(w_Clk_Conn[21]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[22]),
.o_TDC_out(o_TDC_out[22])
);

TDC_cell U23(
.i_CLK_Target(w_Clk_Conn[22]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[23]),
.o_TDC_out(o_TDC_out[23])
);

TDC_cell U24(
.i_CLK_Target(w_Clk_Conn[23]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[24]),
.o_TDC_out(o_TDC_out[24])
);

TDC_cell U25(
.i_CLK_Target(w_Clk_Conn[24]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[25]),
.o_TDC_out(o_TDC_out[25])
);

TDC_cell U26(
.i_CLK_Target(w_Clk_Conn[25]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[26]),
.o_TDC_out(o_TDC_out[26])
);

TDC_cell U27(
.i_CLK_Target(w_Clk_Conn[26]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[27]),
.o_TDC_out(o_TDC_out[27])
);

TDC_cell U28(
.i_CLK_Target(w_Clk_Conn[27]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[28]),
.o_TDC_out(o_TDC_out[28])
);

TDC_cell U29(
.i_CLK_Target(w_Clk_Conn[28]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[29]),
.o_TDC_out(o_TDC_out[29])
);

TDC_cell U30(
.i_CLK_Target(w_Clk_Conn[29]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[30]),
.o_TDC_out(o_TDC_out[30])
);

TDC_cell U31(
.i_CLK_Target(w_Clk_Conn[30]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[31]),
.o_TDC_out(o_TDC_out[31])
);

TDC_cell U32(
.i_CLK_Target(w_Clk_Conn[31]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[32]),
.o_TDC_out(o_TDC_out[32])
);

TDC_cell U33(
.i_CLK_Target(w_Clk_Conn[32]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[33]),
.o_TDC_out(o_TDC_out[33])
);

TDC_cell U34(
.i_CLK_Target(w_Clk_Conn[33]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[34]),
.o_TDC_out(o_TDC_out[34])
);

TDC_cell U35(
.i_CLK_Target(w_Clk_Conn[34]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[35]),
.o_TDC_out(o_TDC_out[35])
);

TDC_cell U36(
.i_CLK_Target(w_Clk_Conn[35]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[36]),
.o_TDC_out(o_TDC_out[36])
);

TDC_cell U37(
.i_CLK_Target(w_Clk_Conn[36]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[37]),
.o_TDC_out(o_TDC_out[37])
);

TDC_cell U38(
.i_CLK_Target(w_Clk_Conn[37]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[38]),
.o_TDC_out(o_TDC_out[38])
);

TDC_cell U39(
.i_CLK_Target(w_Clk_Conn[38]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[39]),
.o_TDC_out(o_TDC_out[39])
);

TDC_cell U40(
.i_CLK_Target(w_Clk_Conn[39]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[40]),
.o_TDC_out(o_TDC_out[40])
);

TDC_cell U41(
.i_CLK_Target(w_Clk_Conn[40]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[41]),
.o_TDC_out(o_TDC_out[41])
);

TDC_cell U42(
.i_CLK_Target(w_Clk_Conn[41]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[42]),
.o_TDC_out(o_TDC_out[42])
);

TDC_cell U43(
.i_CLK_Target(w_Clk_Conn[42]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[43]),
.o_TDC_out(o_TDC_out[43])
);

TDC_cell U44(
.i_CLK_Target(w_Clk_Conn[43]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[44]),
.o_TDC_out(o_TDC_out[44])
);

TDC_cell U45(
.i_CLK_Target(w_Clk_Conn[44]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[45]),
.o_TDC_out(o_TDC_out[45])
);

TDC_cell U46(
.i_CLK_Target(w_Clk_Conn[45]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[46]),
.o_TDC_out(o_TDC_out[46])
);

TDC_cell U47(
.i_CLK_Target(w_Clk_Conn[46]),
.i_Clk_Ref(i_Clk_Ref),
.i_RST_n(i_RST_n),
.o_Clk_Target(w_Clk_Conn[47]),
.o_TDC_out(o_TDC_out[47])
);

endmodule

module TDC_cell(
input wire i_CLK_Target,
input wire i_Clk_Ref,
input wire i_RST_n,
output wire o_Clk_Target,
output reg o_TDC_out
); 

assign #200 o_Clk_Target = ~i_CLK_Target;

always @ (posedge i_Clk_Ref or negedge i_RST_n)
begin
    if(!i_RST_n)
        o_TDC_out <= 1'b0;
    else
        o_TDC_out <= o_Clk_Target;
end 

endmodule 

