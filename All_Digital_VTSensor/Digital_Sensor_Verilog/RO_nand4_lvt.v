/////////////////// Please synthesize this RO with lvt library /////////////////// 
/////////////////// This RO contains 127 stages /////////////////// 

`timescale 1ps / 100fs

module RO_nand4_lvt(
input wire i_Enable,
input i_Sel,
output wire o_RO_out
);

/////////////////// Define wires between nand gates ///////////////////
wire [126:0] w_nd_Conn;

nand4_lvt U0(
.i_nd_1(i_Enable),
.i_nd_2(i_Sel),
.i_nd_3(o_RO_out),
.i_nd_4(o_RO_out),
.out(w_nd_Conn[0])
);

nand4_lvt U1(
.i_nd_1(w_nd_Conn[0]),
.i_nd_2(w_nd_Conn[0]),
.i_nd_3(w_nd_Conn[0]),
.i_nd_4(w_nd_Conn[0]),
.out(w_nd_Conn[1])
);

nand4_lvt U2(
.i_nd_1(w_nd_Conn[1]),
.i_nd_2(w_nd_Conn[1]),
.i_nd_3(w_nd_Conn[1]),
.i_nd_4(w_nd_Conn[1]),
.out(w_nd_Conn[2])
);

nand4_lvt U3(
.i_nd_1(w_nd_Conn[2]),
.i_nd_2(w_nd_Conn[2]),
.i_nd_3(w_nd_Conn[2]),
.i_nd_4(w_nd_Conn[2]),
.out(w_nd_Conn[3])
);

nand4_lvt U4(
.i_nd_1(w_nd_Conn[3]),
.i_nd_2(w_nd_Conn[3]),
.i_nd_3(w_nd_Conn[3]),
.i_nd_4(w_nd_Conn[3]),
.out(w_nd_Conn[4])
);

nand4_lvt U5(
.i_nd_1(w_nd_Conn[4]),
.i_nd_2(w_nd_Conn[4]),
.i_nd_3(w_nd_Conn[4]),
.i_nd_4(w_nd_Conn[4]),
.out(w_nd_Conn[5])
);

nand4_lvt U6(
.i_nd_1(w_nd_Conn[5]),
.i_nd_2(w_nd_Conn[5]),
.i_nd_3(w_nd_Conn[5]),
.i_nd_4(w_nd_Conn[5]),
.out(w_nd_Conn[6])
);

nand4_lvt U7(
.i_nd_1(w_nd_Conn[6]),
.i_nd_2(w_nd_Conn[6]),
.i_nd_3(w_nd_Conn[6]),
.i_nd_4(w_nd_Conn[6]),
.out(w_nd_Conn[7])
);

nand4_lvt U8(
.i_nd_1(w_nd_Conn[7]),
.i_nd_2(w_nd_Conn[7]),
.i_nd_3(w_nd_Conn[7]),
.i_nd_4(w_nd_Conn[7]),
.out(w_nd_Conn[8])
);

nand4_lvt U9(
.i_nd_1(w_nd_Conn[8]),
.i_nd_2(w_nd_Conn[8]),
.i_nd_3(w_nd_Conn[8]),
.i_nd_4(w_nd_Conn[8]),
.out(w_nd_Conn[9])
);

nand4_lvt U10(
.i_nd_1(w_nd_Conn[9]),
.i_nd_2(w_nd_Conn[9]),
.i_nd_3(w_nd_Conn[9]),
.i_nd_4(w_nd_Conn[9]),
.out(w_nd_Conn[10])
);

nand4_lvt U11(
.i_nd_1(w_nd_Conn[10]),
.i_nd_2(w_nd_Conn[10]),
.i_nd_3(w_nd_Conn[10]),
.i_nd_4(w_nd_Conn[10]),
.out(w_nd_Conn[11])
);

nand4_lvt U12(
.i_nd_1(w_nd_Conn[11]),
.i_nd_2(w_nd_Conn[11]),
.i_nd_3(w_nd_Conn[11]),
.i_nd_4(w_nd_Conn[11]),
.out(w_nd_Conn[12])
);

nand4_lvt U13(
.i_nd_1(w_nd_Conn[12]),
.i_nd_2(w_nd_Conn[12]),
.i_nd_3(w_nd_Conn[12]),
.i_nd_4(w_nd_Conn[12]),
.out(w_nd_Conn[13])
);

nand4_lvt U14(
.i_nd_1(w_nd_Conn[13]),
.i_nd_2(w_nd_Conn[13]),
.i_nd_3(w_nd_Conn[13]),
.i_nd_4(w_nd_Conn[13]),
.out(w_nd_Conn[14])
);

nand4_lvt U15(
.i_nd_1(w_nd_Conn[14]),
.i_nd_2(w_nd_Conn[14]),
.i_nd_3(w_nd_Conn[14]),
.i_nd_4(w_nd_Conn[14]),
.out(w_nd_Conn[15])
);

nand4_lvt U16(
.i_nd_1(w_nd_Conn[15]),
.i_nd_2(w_nd_Conn[15]),
.i_nd_3(w_nd_Conn[15]),
.i_nd_4(w_nd_Conn[15]),
.out(w_nd_Conn[16])
);

nand4_lvt U17(
.i_nd_1(w_nd_Conn[16]),
.i_nd_2(w_nd_Conn[16]),
.i_nd_3(w_nd_Conn[16]),
.i_nd_4(w_nd_Conn[16]),
.out(w_nd_Conn[17])
);

nand4_lvt U18(
.i_nd_1(w_nd_Conn[17]),
.i_nd_2(w_nd_Conn[17]),
.i_nd_3(w_nd_Conn[17]),
.i_nd_4(w_nd_Conn[17]),
.out(w_nd_Conn[18])
);

nand4_lvt U19(
.i_nd_1(w_nd_Conn[18]),
.i_nd_2(w_nd_Conn[18]),
.i_nd_3(w_nd_Conn[18]),
.i_nd_4(w_nd_Conn[18]),
.out(w_nd_Conn[19])
);

nand4_lvt U20(
.i_nd_1(w_nd_Conn[19]),
.i_nd_2(w_nd_Conn[19]),
.i_nd_3(w_nd_Conn[19]),
.i_nd_4(w_nd_Conn[19]),
.out(w_nd_Conn[20])
);

nand4_lvt U21(
.i_nd_1(w_nd_Conn[20]),
.i_nd_2(w_nd_Conn[20]),
.i_nd_3(w_nd_Conn[20]),
.i_nd_4(w_nd_Conn[20]),
.out(w_nd_Conn[21])
);

nand4_lvt U22(
.i_nd_1(w_nd_Conn[21]),
.i_nd_2(w_nd_Conn[21]),
.i_nd_3(w_nd_Conn[21]),
.i_nd_4(w_nd_Conn[21]),
.out(w_nd_Conn[22])
);

nand4_lvt U23(
.i_nd_1(w_nd_Conn[22]),
.i_nd_2(w_nd_Conn[22]),
.i_nd_3(w_nd_Conn[22]),
.i_nd_4(w_nd_Conn[22]),
.out(w_nd_Conn[23])
);

nand4_lvt U24(
.i_nd_1(w_nd_Conn[23]),
.i_nd_2(w_nd_Conn[23]),
.i_nd_3(w_nd_Conn[23]),
.i_nd_4(w_nd_Conn[23]),
.out(w_nd_Conn[24])
);

nand4_lvt U25(
.i_nd_1(w_nd_Conn[24]),
.i_nd_2(w_nd_Conn[24]),
.i_nd_3(w_nd_Conn[24]),
.i_nd_4(w_nd_Conn[24]),
.out(w_nd_Conn[25])
);

nand4_lvt U26(
.i_nd_1(w_nd_Conn[25]),
.i_nd_2(w_nd_Conn[25]),
.i_nd_3(w_nd_Conn[25]),
.i_nd_4(w_nd_Conn[25]),
.out(w_nd_Conn[26])
);

nand4_lvt U27(
.i_nd_1(w_nd_Conn[26]),
.i_nd_2(w_nd_Conn[26]),
.i_nd_3(w_nd_Conn[26]),
.i_nd_4(w_nd_Conn[26]),
.out(w_nd_Conn[27])
);

nand4_lvt U28(
.i_nd_1(w_nd_Conn[27]),
.i_nd_2(w_nd_Conn[27]),
.i_nd_3(w_nd_Conn[27]),
.i_nd_4(w_nd_Conn[27]),
.out(w_nd_Conn[28])
);

nand4_lvt U29(
.i_nd_1(w_nd_Conn[28]),
.i_nd_2(w_nd_Conn[28]),
.i_nd_3(w_nd_Conn[28]),
.i_nd_4(w_nd_Conn[28]),
.out(w_nd_Conn[29])
);

nand4_lvt U30(
.i_nd_1(w_nd_Conn[29]),
.i_nd_2(w_nd_Conn[29]),
.i_nd_3(w_nd_Conn[29]),
.i_nd_4(w_nd_Conn[29]),
.out(w_nd_Conn[30])
);

nand4_lvt U31(
.i_nd_1(w_nd_Conn[30]),
.i_nd_2(w_nd_Conn[30]),
.i_nd_3(w_nd_Conn[30]),
.i_nd_4(w_nd_Conn[30]),
.out(w_nd_Conn[31])
);

nand4_lvt U32(
.i_nd_1(w_nd_Conn[31]),
.i_nd_2(w_nd_Conn[31]),
.i_nd_3(w_nd_Conn[31]),
.i_nd_4(w_nd_Conn[31]),
.out(w_nd_Conn[32])
);

nand4_lvt U33(
.i_nd_1(w_nd_Conn[32]),
.i_nd_2(w_nd_Conn[32]),
.i_nd_3(w_nd_Conn[32]),
.i_nd_4(w_nd_Conn[32]),
.out(w_nd_Conn[33])
);

nand4_lvt U34(
.i_nd_1(w_nd_Conn[33]),
.i_nd_2(w_nd_Conn[33]),
.i_nd_3(w_nd_Conn[33]),
.i_nd_4(w_nd_Conn[33]),
.out(w_nd_Conn[34])
);

nand4_lvt U35(
.i_nd_1(w_nd_Conn[34]),
.i_nd_2(w_nd_Conn[34]),
.i_nd_3(w_nd_Conn[34]),
.i_nd_4(w_nd_Conn[34]),
.out(w_nd_Conn[35])
);

nand4_lvt U36(
.i_nd_1(w_nd_Conn[35]),
.i_nd_2(w_nd_Conn[35]),
.i_nd_3(w_nd_Conn[35]),
.i_nd_4(w_nd_Conn[35]),
.out(w_nd_Conn[36])
);

nand4_lvt U37(
.i_nd_1(w_nd_Conn[36]),
.i_nd_2(w_nd_Conn[36]),
.i_nd_3(w_nd_Conn[36]),
.i_nd_4(w_nd_Conn[36]),
.out(w_nd_Conn[37])
);

nand4_lvt U38(
.i_nd_1(w_nd_Conn[37]),
.i_nd_2(w_nd_Conn[37]),
.i_nd_3(w_nd_Conn[37]),
.i_nd_4(w_nd_Conn[37]),
.out(w_nd_Conn[38])
);

nand4_lvt U39(
.i_nd_1(w_nd_Conn[38]),
.i_nd_2(w_nd_Conn[38]),
.i_nd_3(w_nd_Conn[38]),
.i_nd_4(w_nd_Conn[38]),
.out(w_nd_Conn[39])
);

nand4_lvt U40(
.i_nd_1(w_nd_Conn[39]),
.i_nd_2(w_nd_Conn[39]),
.i_nd_3(w_nd_Conn[39]),
.i_nd_4(w_nd_Conn[39]),
.out(w_nd_Conn[40])
);

nand4_lvt U41(
.i_nd_1(w_nd_Conn[40]),
.i_nd_2(w_nd_Conn[40]),
.i_nd_3(w_nd_Conn[40]),
.i_nd_4(w_nd_Conn[40]),
.out(w_nd_Conn[41])
);

nand4_lvt U42(
.i_nd_1(w_nd_Conn[41]),
.i_nd_2(w_nd_Conn[41]),
.i_nd_3(w_nd_Conn[41]),
.i_nd_4(w_nd_Conn[41]),
.out(w_nd_Conn[42])
);

nand4_lvt U43(
.i_nd_1(w_nd_Conn[42]),
.i_nd_2(w_nd_Conn[42]),
.i_nd_3(w_nd_Conn[42]),
.i_nd_4(w_nd_Conn[42]),
.out(w_nd_Conn[43])
);

nand4_lvt U44(
.i_nd_1(w_nd_Conn[43]),
.i_nd_2(w_nd_Conn[43]),
.i_nd_3(w_nd_Conn[43]),
.i_nd_4(w_nd_Conn[43]),
.out(w_nd_Conn[44])
);

nand4_lvt U45(
.i_nd_1(w_nd_Conn[44]),
.i_nd_2(w_nd_Conn[44]),
.i_nd_3(w_nd_Conn[44]),
.i_nd_4(w_nd_Conn[44]),
.out(w_nd_Conn[45])
);

nand4_lvt U46(
.i_nd_1(w_nd_Conn[45]),
.i_nd_2(w_nd_Conn[45]),
.i_nd_3(w_nd_Conn[45]),
.i_nd_4(w_nd_Conn[45]),
.out(w_nd_Conn[46])
);

nand4_lvt U47(
.i_nd_1(w_nd_Conn[46]),
.i_nd_2(w_nd_Conn[46]),
.i_nd_3(w_nd_Conn[46]),
.i_nd_4(w_nd_Conn[46]),
.out(w_nd_Conn[47])
);

nand4_lvt U48(
.i_nd_1(w_nd_Conn[47]),
.i_nd_2(w_nd_Conn[47]),
.i_nd_3(w_nd_Conn[47]),
.i_nd_4(w_nd_Conn[47]),
.out(w_nd_Conn[48])
);

nand4_lvt U49(
.i_nd_1(w_nd_Conn[48]),
.i_nd_2(w_nd_Conn[48]),
.i_nd_3(w_nd_Conn[48]),
.i_nd_4(w_nd_Conn[48]),
.out(w_nd_Conn[49])
);

nand4_lvt U50(
.i_nd_1(w_nd_Conn[49]),
.i_nd_2(w_nd_Conn[49]),
.i_nd_3(w_nd_Conn[49]),
.i_nd_4(w_nd_Conn[49]),
.out(w_nd_Conn[50])
);

nand4_lvt U51(
.i_nd_1(w_nd_Conn[50]),
.i_nd_2(w_nd_Conn[50]),
.i_nd_3(w_nd_Conn[50]),
.i_nd_4(w_nd_Conn[50]),
.out(w_nd_Conn[51])
);

nand4_lvt U52(
.i_nd_1(w_nd_Conn[51]),
.i_nd_2(w_nd_Conn[51]),
.i_nd_3(w_nd_Conn[51]),
.i_nd_4(w_nd_Conn[51]),
.out(w_nd_Conn[52])
);

nand4_lvt U53(
.i_nd_1(w_nd_Conn[52]),
.i_nd_2(w_nd_Conn[52]),
.i_nd_3(w_nd_Conn[52]),
.i_nd_4(w_nd_Conn[52]),
.out(w_nd_Conn[53])
);

nand4_lvt U54(
.i_nd_1(w_nd_Conn[53]),
.i_nd_2(w_nd_Conn[53]),
.i_nd_3(w_nd_Conn[53]),
.i_nd_4(w_nd_Conn[53]),
.out(w_nd_Conn[54])
);

nand4_lvt U55(
.i_nd_1(w_nd_Conn[54]),
.i_nd_2(w_nd_Conn[54]),
.i_nd_3(w_nd_Conn[54]),
.i_nd_4(w_nd_Conn[54]),
.out(w_nd_Conn[55])
);

nand4_lvt U56(
.i_nd_1(w_nd_Conn[55]),
.i_nd_2(w_nd_Conn[55]),
.i_nd_3(w_nd_Conn[55]),
.i_nd_4(w_nd_Conn[55]),
.out(w_nd_Conn[56])
);

nand4_lvt U57(
.i_nd_1(w_nd_Conn[56]),
.i_nd_2(w_nd_Conn[56]),
.i_nd_3(w_nd_Conn[56]),
.i_nd_4(w_nd_Conn[56]),
.out(w_nd_Conn[57])
);

nand4_lvt U58(
.i_nd_1(w_nd_Conn[57]),
.i_nd_2(w_nd_Conn[57]),
.i_nd_3(w_nd_Conn[57]),
.i_nd_4(w_nd_Conn[57]),
.out(w_nd_Conn[58])
);

nand4_lvt U59(
.i_nd_1(w_nd_Conn[58]),
.i_nd_2(w_nd_Conn[58]),
.i_nd_3(w_nd_Conn[58]),
.i_nd_4(w_nd_Conn[58]),
.out(w_nd_Conn[59])
);

nand4_lvt U60(
.i_nd_1(w_nd_Conn[59]),
.i_nd_2(w_nd_Conn[59]),
.i_nd_3(w_nd_Conn[59]),
.i_nd_4(w_nd_Conn[59]),
.out(w_nd_Conn[60])
);

nand4_lvt U61(
.i_nd_1(w_nd_Conn[60]),
.i_nd_2(w_nd_Conn[60]),
.i_nd_3(w_nd_Conn[60]),
.i_nd_4(w_nd_Conn[60]),
.out(w_nd_Conn[61])
);

nand4_lvt U62(
.i_nd_1(w_nd_Conn[61]),
.i_nd_2(w_nd_Conn[61]),
.i_nd_3(w_nd_Conn[61]),
.i_nd_4(w_nd_Conn[61]),
.out(w_nd_Conn[62])
);

nand4_lvt U63(
.i_nd_1(w_nd_Conn[62]),
.i_nd_2(w_nd_Conn[62]),
.i_nd_3(w_nd_Conn[62]),
.i_nd_4(w_nd_Conn[62]),
.out(w_nd_Conn[63])
);

nand4_lvt U64(
.i_nd_1(w_nd_Conn[63]),
.i_nd_2(w_nd_Conn[63]),
.i_nd_3(w_nd_Conn[63]),
.i_nd_4(w_nd_Conn[63]),
.out(w_nd_Conn[64])
);

nand4_lvt U65(
.i_nd_1(w_nd_Conn[64]),
.i_nd_2(w_nd_Conn[64]),
.i_nd_3(w_nd_Conn[64]),
.i_nd_4(w_nd_Conn[64]),
.out(w_nd_Conn[65])
);

nand4_lvt U66(
.i_nd_1(w_nd_Conn[65]),
.i_nd_2(w_nd_Conn[65]),
.i_nd_3(w_nd_Conn[65]),
.i_nd_4(w_nd_Conn[65]),
.out(w_nd_Conn[66])
);

nand4_lvt U67(
.i_nd_1(w_nd_Conn[66]),
.i_nd_2(w_nd_Conn[66]),
.i_nd_3(w_nd_Conn[66]),
.i_nd_4(w_nd_Conn[66]),
.out(w_nd_Conn[67])
);

nand4_lvt U68(
.i_nd_1(w_nd_Conn[67]),
.i_nd_2(w_nd_Conn[67]),
.i_nd_3(w_nd_Conn[67]),
.i_nd_4(w_nd_Conn[67]),
.out(w_nd_Conn[68])
);

nand4_lvt U69(
.i_nd_1(w_nd_Conn[68]),
.i_nd_2(w_nd_Conn[68]),
.i_nd_3(w_nd_Conn[68]),
.i_nd_4(w_nd_Conn[68]),
.out(w_nd_Conn[69])
);

nand4_lvt U70(
.i_nd_1(w_nd_Conn[69]),
.i_nd_2(w_nd_Conn[69]),
.i_nd_3(w_nd_Conn[69]),
.i_nd_4(w_nd_Conn[69]),
.out(w_nd_Conn[70])
);

nand4_lvt U71(
.i_nd_1(w_nd_Conn[70]),
.i_nd_2(w_nd_Conn[70]),
.i_nd_3(w_nd_Conn[70]),
.i_nd_4(w_nd_Conn[70]),
.out(w_nd_Conn[71])
);

nand4_lvt U72(
.i_nd_1(w_nd_Conn[71]),
.i_nd_2(w_nd_Conn[71]),
.i_nd_3(w_nd_Conn[71]),
.i_nd_4(w_nd_Conn[71]),
.out(w_nd_Conn[72])
);

nand4_lvt U73(
.i_nd_1(w_nd_Conn[72]),
.i_nd_2(w_nd_Conn[72]),
.i_nd_3(w_nd_Conn[72]),
.i_nd_4(w_nd_Conn[72]),
.out(w_nd_Conn[73])
);

nand4_lvt U74(
.i_nd_1(w_nd_Conn[73]),
.i_nd_2(w_nd_Conn[73]),
.i_nd_3(w_nd_Conn[73]),
.i_nd_4(w_nd_Conn[73]),
.out(w_nd_Conn[74])
);

nand4_lvt U75(
.i_nd_1(w_nd_Conn[74]),
.i_nd_2(w_nd_Conn[74]),
.i_nd_3(w_nd_Conn[74]),
.i_nd_4(w_nd_Conn[74]),
.out(w_nd_Conn[75])
);

nand4_lvt U76(
.i_nd_1(w_nd_Conn[75]),
.i_nd_2(w_nd_Conn[75]),
.i_nd_3(w_nd_Conn[75]),
.i_nd_4(w_nd_Conn[75]),
.out(w_nd_Conn[76])
);

nand4_lvt U77(
.i_nd_1(w_nd_Conn[76]),
.i_nd_2(w_nd_Conn[76]),
.i_nd_3(w_nd_Conn[76]),
.i_nd_4(w_nd_Conn[76]),
.out(w_nd_Conn[77])
);

nand4_lvt U78(
.i_nd_1(w_nd_Conn[77]),
.i_nd_2(w_nd_Conn[77]),
.i_nd_3(w_nd_Conn[77]),
.i_nd_4(w_nd_Conn[77]),
.out(w_nd_Conn[78])
);

nand4_lvt U79(
.i_nd_1(w_nd_Conn[78]),
.i_nd_2(w_nd_Conn[78]),
.i_nd_3(w_nd_Conn[78]),
.i_nd_4(w_nd_Conn[78]),
.out(w_nd_Conn[79])
);

nand4_lvt U80(
.i_nd_1(w_nd_Conn[79]),
.i_nd_2(w_nd_Conn[79]),
.i_nd_3(w_nd_Conn[79]),
.i_nd_4(w_nd_Conn[79]),
.out(w_nd_Conn[80])
);

nand4_lvt U81(
.i_nd_1(w_nd_Conn[80]),
.i_nd_2(w_nd_Conn[80]),
.i_nd_3(w_nd_Conn[80]),
.i_nd_4(w_nd_Conn[80]),
.out(w_nd_Conn[81])
);

nand4_lvt U82(
.i_nd_1(w_nd_Conn[81]),
.i_nd_2(w_nd_Conn[81]),
.i_nd_3(w_nd_Conn[81]),
.i_nd_4(w_nd_Conn[81]),
.out(w_nd_Conn[82])
);

nand4_lvt U83(
.i_nd_1(w_nd_Conn[82]),
.i_nd_2(w_nd_Conn[82]),
.i_nd_3(w_nd_Conn[82]),
.i_nd_4(w_nd_Conn[82]),
.out(w_nd_Conn[83])
);

nand4_lvt U84(
.i_nd_1(w_nd_Conn[83]),
.i_nd_2(w_nd_Conn[83]),
.i_nd_3(w_nd_Conn[83]),
.i_nd_4(w_nd_Conn[83]),
.out(w_nd_Conn[84])
);

nand4_lvt U85(
.i_nd_1(w_nd_Conn[84]),
.i_nd_2(w_nd_Conn[84]),
.i_nd_3(w_nd_Conn[84]),
.i_nd_4(w_nd_Conn[84]),
.out(w_nd_Conn[85])
);

nand4_lvt U86(
.i_nd_1(w_nd_Conn[85]),
.i_nd_2(w_nd_Conn[85]),
.i_nd_3(w_nd_Conn[85]),
.i_nd_4(w_nd_Conn[85]),
.out(w_nd_Conn[86])
);

nand4_lvt U87(
.i_nd_1(w_nd_Conn[86]),
.i_nd_2(w_nd_Conn[86]),
.i_nd_3(w_nd_Conn[86]),
.i_nd_4(w_nd_Conn[86]),
.out(w_nd_Conn[87])
);

nand4_lvt U88(
.i_nd_1(w_nd_Conn[87]),
.i_nd_2(w_nd_Conn[87]),
.i_nd_3(w_nd_Conn[87]),
.i_nd_4(w_nd_Conn[87]),
.out(w_nd_Conn[88])
);

nand4_lvt U89(
.i_nd_1(w_nd_Conn[88]),
.i_nd_2(w_nd_Conn[88]),
.i_nd_3(w_nd_Conn[88]),
.i_nd_4(w_nd_Conn[88]),
.out(w_nd_Conn[89])
);

nand4_lvt U90(
.i_nd_1(w_nd_Conn[89]),
.i_nd_2(w_nd_Conn[89]),
.i_nd_3(w_nd_Conn[89]),
.i_nd_4(w_nd_Conn[89]),
.out(w_nd_Conn[90])
);

nand4_lvt U91(
.i_nd_1(w_nd_Conn[90]),
.i_nd_2(w_nd_Conn[90]),
.i_nd_3(w_nd_Conn[90]),
.i_nd_4(w_nd_Conn[90]),
.out(w_nd_Conn[91])
);

nand4_lvt U92(
.i_nd_1(w_nd_Conn[91]),
.i_nd_2(w_nd_Conn[91]),
.i_nd_3(w_nd_Conn[91]),
.i_nd_4(w_nd_Conn[91]),
.out(w_nd_Conn[92])
);

nand4_lvt U93(
.i_nd_1(w_nd_Conn[92]),
.i_nd_2(w_nd_Conn[92]),
.i_nd_3(w_nd_Conn[92]),
.i_nd_4(w_nd_Conn[92]),
.out(w_nd_Conn[93])
);

nand4_lvt U94(
.i_nd_1(w_nd_Conn[93]),
.i_nd_2(w_nd_Conn[93]),
.i_nd_3(w_nd_Conn[93]),
.i_nd_4(w_nd_Conn[93]),
.out(w_nd_Conn[94])
);

nand4_lvt U95(
.i_nd_1(w_nd_Conn[94]),
.i_nd_2(w_nd_Conn[94]),
.i_nd_3(w_nd_Conn[94]),
.i_nd_4(w_nd_Conn[94]),
.out(w_nd_Conn[95])
);

nand4_lvt U96(
.i_nd_1(w_nd_Conn[95]),
.i_nd_2(w_nd_Conn[95]),
.i_nd_3(w_nd_Conn[95]),
.i_nd_4(w_nd_Conn[95]),
.out(w_nd_Conn[96])
);

nand4_lvt U97(
.i_nd_1(w_nd_Conn[96]),
.i_nd_2(w_nd_Conn[96]),
.i_nd_3(w_nd_Conn[96]),
.i_nd_4(w_nd_Conn[96]),
.out(w_nd_Conn[97])
);

nand4_lvt U98(
.i_nd_1(w_nd_Conn[97]),
.i_nd_2(w_nd_Conn[97]),
.i_nd_3(w_nd_Conn[97]),
.i_nd_4(w_nd_Conn[97]),
.out(w_nd_Conn[98])
);

nand4_lvt U99(
.i_nd_1(w_nd_Conn[98]),
.i_nd_2(w_nd_Conn[98]),
.i_nd_3(w_nd_Conn[98]),
.i_nd_4(w_nd_Conn[98]),
.out(w_nd_Conn[99])
);

nand4_lvt U100(
.i_nd_1(w_nd_Conn[99]),
.i_nd_2(w_nd_Conn[99]),
.i_nd_3(w_nd_Conn[99]),
.i_nd_4(w_nd_Conn[99]),
.out(w_nd_Conn[100])
);

nand4_lvt U101(
.i_nd_1(w_nd_Conn[100]),
.i_nd_2(w_nd_Conn[100]),
.i_nd_3(w_nd_Conn[100]),
.i_nd_4(w_nd_Conn[100]),
.out(w_nd_Conn[101])
);

nand4_lvt U102(
.i_nd_1(w_nd_Conn[101]),
.i_nd_2(w_nd_Conn[101]),
.i_nd_3(w_nd_Conn[101]),
.i_nd_4(w_nd_Conn[101]),
.out(w_nd_Conn[102])
);

nand4_lvt U103(
.i_nd_1(w_nd_Conn[102]),
.i_nd_2(w_nd_Conn[102]),
.i_nd_3(w_nd_Conn[102]),
.i_nd_4(w_nd_Conn[102]),
.out(w_nd_Conn[103])
);

nand4_lvt U104(
.i_nd_1(w_nd_Conn[103]),
.i_nd_2(w_nd_Conn[103]),
.i_nd_3(w_nd_Conn[103]),
.i_nd_4(w_nd_Conn[103]),
.out(w_nd_Conn[104])
);

nand4_lvt U105(
.i_nd_1(w_nd_Conn[104]),
.i_nd_2(w_nd_Conn[104]),
.i_nd_3(w_nd_Conn[104]),
.i_nd_4(w_nd_Conn[104]),
.out(w_nd_Conn[105])
);

nand4_lvt U106(
.i_nd_1(w_nd_Conn[105]),
.i_nd_2(w_nd_Conn[105]),
.i_nd_3(w_nd_Conn[105]),
.i_nd_4(w_nd_Conn[105]),
.out(w_nd_Conn[106])
);

nand4_lvt U107(
.i_nd_1(w_nd_Conn[106]),
.i_nd_2(w_nd_Conn[106]),
.i_nd_3(w_nd_Conn[106]),
.i_nd_4(w_nd_Conn[106]),
.out(w_nd_Conn[107])
);

nand4_lvt U108(
.i_nd_1(w_nd_Conn[107]),
.i_nd_2(w_nd_Conn[107]),
.i_nd_3(w_nd_Conn[107]),
.i_nd_4(w_nd_Conn[107]),
.out(w_nd_Conn[108])
);

nand4_lvt U109(
.i_nd_1(w_nd_Conn[108]),
.i_nd_2(w_nd_Conn[108]),
.i_nd_3(w_nd_Conn[108]),
.i_nd_4(w_nd_Conn[108]),
.out(w_nd_Conn[109])
);

nand4_lvt U110(
.i_nd_1(w_nd_Conn[109]),
.i_nd_2(w_nd_Conn[109]),
.i_nd_3(w_nd_Conn[109]),
.i_nd_4(w_nd_Conn[109]),
.out(w_nd_Conn[110])
);

nand4_lvt U111(
.i_nd_1(w_nd_Conn[110]),
.i_nd_2(w_nd_Conn[110]),
.i_nd_3(w_nd_Conn[110]),
.i_nd_4(w_nd_Conn[110]),
.out(w_nd_Conn[111])
);

nand4_lvt U112(
.i_nd_1(w_nd_Conn[111]),
.i_nd_2(w_nd_Conn[111]),
.i_nd_3(w_nd_Conn[111]),
.i_nd_4(w_nd_Conn[111]),
.out(w_nd_Conn[112])
);

nand4_lvt U113(
.i_nd_1(w_nd_Conn[112]),
.i_nd_2(w_nd_Conn[112]),
.i_nd_3(w_nd_Conn[112]),
.i_nd_4(w_nd_Conn[112]),
.out(w_nd_Conn[113])
);

nand4_lvt U114(
.i_nd_1(w_nd_Conn[113]),
.i_nd_2(w_nd_Conn[113]),
.i_nd_3(w_nd_Conn[113]),
.i_nd_4(w_nd_Conn[113]),
.out(w_nd_Conn[114])
);

nand4_lvt U115(
.i_nd_1(w_nd_Conn[114]),
.i_nd_2(w_nd_Conn[114]),
.i_nd_3(w_nd_Conn[114]),
.i_nd_4(w_nd_Conn[114]),
.out(w_nd_Conn[115])
);

nand4_lvt U116(
.i_nd_1(w_nd_Conn[115]),
.i_nd_2(w_nd_Conn[115]),
.i_nd_3(w_nd_Conn[115]),
.i_nd_4(w_nd_Conn[115]),
.out(w_nd_Conn[116])
);

nand4_lvt U117(
.i_nd_1(w_nd_Conn[116]),
.i_nd_2(w_nd_Conn[116]),
.i_nd_3(w_nd_Conn[116]),
.i_nd_4(w_nd_Conn[116]),
.out(w_nd_Conn[117])
);

nand4_lvt U118(
.i_nd_1(w_nd_Conn[117]),
.i_nd_2(w_nd_Conn[117]),
.i_nd_3(w_nd_Conn[117]),
.i_nd_4(w_nd_Conn[117]),
.out(w_nd_Conn[118])
);

nand4_lvt U119(
.i_nd_1(w_nd_Conn[118]),
.i_nd_2(w_nd_Conn[118]),
.i_nd_3(w_nd_Conn[118]),
.i_nd_4(w_nd_Conn[118]),
.out(w_nd_Conn[119])
);

nand4_lvt U120(
.i_nd_1(w_nd_Conn[119]),
.i_nd_2(w_nd_Conn[119]),
.i_nd_3(w_nd_Conn[119]),
.i_nd_4(w_nd_Conn[119]),
.out(w_nd_Conn[120])
);

nand4_lvt U121(
.i_nd_1(w_nd_Conn[120]),
.i_nd_2(w_nd_Conn[120]),
.i_nd_3(w_nd_Conn[120]),
.i_nd_4(w_nd_Conn[120]),
.out(w_nd_Conn[121])
);

nand4_lvt U122(
.i_nd_1(w_nd_Conn[121]),
.i_nd_2(w_nd_Conn[121]),
.i_nd_3(w_nd_Conn[121]),
.i_nd_4(w_nd_Conn[121]),
.out(w_nd_Conn[122])
);

nand4_lvt U123(
.i_nd_1(w_nd_Conn[122]),
.i_nd_2(w_nd_Conn[122]),
.i_nd_3(w_nd_Conn[122]),
.i_nd_4(w_nd_Conn[122]),
.out(w_nd_Conn[123])
);

nand4_lvt U124(
.i_nd_1(w_nd_Conn[123]),
.i_nd_2(w_nd_Conn[123]),
.i_nd_3(w_nd_Conn[123]),
.i_nd_4(w_nd_Conn[123]),
.out(w_nd_Conn[124])
);

nand4_lvt U125(
.i_nd_1(w_nd_Conn[124]),
.i_nd_2(w_nd_Conn[124]),
.i_nd_3(w_nd_Conn[124]),
.i_nd_4(w_nd_Conn[124]),
.out(w_nd_Conn[125])
);

nand4_lvt U126(
.i_nd_1(w_nd_Conn[125]),
.i_nd_2(w_nd_Conn[125]),
.i_nd_3(w_nd_Conn[125]),
.i_nd_4(w_nd_Conn[125]),
.out(o_RO_out)
);

endmodule

module nand4_lvt(
input wire i_nd_1,
input wire i_nd_2,
input wire i_nd_3,
input wire i_nd_4,
output wire out);

NAND4_X2R_A9PP84TL_C14 U0(
.A(i_nd_1),
.B(i_nd_2),
.C(i_nd_3),
.D(i_nd_4),
.Y(out)
);

endmodule 

