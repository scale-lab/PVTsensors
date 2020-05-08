/////////////////// Please synthesize this RO with lvt library /////////////////// 
/////////////////// This RO contains 127 stages /////////////////// 

`timescale 1ps / 100fs

module RO_nor4_lvt_65(
input wire i_Enable,
input wire i_Sel,
output wire o_RO_out
);

/////////////////// Define wires between nand gates ///////////////////
wire [125:0] w_nr_Conn;

assign #110 o_RO_out = ~(w_nr_Conn[125] & w_nr_Conn[125] & i_Sel & i_Enable);

NOR3_lvt U1(
.i_nr_1(o_RO_out),
.i_nr_2(o_RO_out),
.i_nr_3(o_RO_out),
.out(w_nr_Conn[0])
);

NOR3_lvt U2(
.i_nr_1(w_nr_Conn[0]),
.i_nr_2(w_nr_Conn[0]),
.i_nr_3(w_nr_Conn[0]),
.out(w_nr_Conn[1])
);

NOR3_lvt U3(
.i_nr_1(w_nr_Conn[1]),
.i_nr_2(w_nr_Conn[1]),
.i_nr_3(w_nr_Conn[1]),
.out(w_nr_Conn[2])
);

NOR3_lvt U4(
.i_nr_1(w_nr_Conn[2]),
.i_nr_2(w_nr_Conn[2]),
.i_nr_3(w_nr_Conn[2]),
.out(w_nr_Conn[3])
);

NOR3_lvt U5(
.i_nr_1(w_nr_Conn[3]),
.i_nr_2(w_nr_Conn[3]),
.i_nr_3(w_nr_Conn[3]),
.out(w_nr_Conn[4])
);

NOR3_lvt U6(
.i_nr_1(w_nr_Conn[4]),
.i_nr_2(w_nr_Conn[4]),
.i_nr_3(w_nr_Conn[4]),
.out(w_nr_Conn[5])
);

NOR3_lvt U7(
.i_nr_1(w_nr_Conn[5]),
.i_nr_2(w_nr_Conn[5]),
.i_nr_3(w_nr_Conn[5]),
.out(w_nr_Conn[6])
);

NOR3_lvt U8(
.i_nr_1(w_nr_Conn[6]),
.i_nr_2(w_nr_Conn[6]),
.i_nr_3(w_nr_Conn[6]),
.out(w_nr_Conn[7])
);

NOR3_lvt U9(
.i_nr_1(w_nr_Conn[7]),
.i_nr_2(w_nr_Conn[7]),
.i_nr_3(w_nr_Conn[7]),
.out(w_nr_Conn[8])
);

NOR3_lvt U10(
.i_nr_1(w_nr_Conn[8]),
.i_nr_2(w_nr_Conn[8]),
.i_nr_3(w_nr_Conn[8]),
.out(w_nr_Conn[9])
);

NOR3_lvt U11(
.i_nr_1(w_nr_Conn[9]),
.i_nr_2(w_nr_Conn[9]),
.i_nr_3(w_nr_Conn[9]),
.out(w_nr_Conn[10])
);

NOR3_lvt U12(
.i_nr_1(w_nr_Conn[10]),
.i_nr_2(w_nr_Conn[10]),
.i_nr_3(w_nr_Conn[10]),
.out(w_nr_Conn[11])
);

NOR3_lvt U13(
.i_nr_1(w_nr_Conn[11]),
.i_nr_2(w_nr_Conn[11]),
.i_nr_3(w_nr_Conn[11]),
.out(w_nr_Conn[12])
);

NOR3_lvt U14(
.i_nr_1(w_nr_Conn[12]),
.i_nr_2(w_nr_Conn[12]),
.i_nr_3(w_nr_Conn[12]),
.out(w_nr_Conn[13])
);

NOR3_lvt U15(
.i_nr_1(w_nr_Conn[13]),
.i_nr_2(w_nr_Conn[13]),
.i_nr_3(w_nr_Conn[13]),
.out(w_nr_Conn[14])
);

NOR3_lvt U16(
.i_nr_1(w_nr_Conn[14]),
.i_nr_2(w_nr_Conn[14]),
.i_nr_3(w_nr_Conn[14]),
.out(w_nr_Conn[15])
);

NOR3_lvt U17(
.i_nr_1(w_nr_Conn[15]),
.i_nr_2(w_nr_Conn[15]),
.i_nr_3(w_nr_Conn[15]),
.out(w_nr_Conn[16])
);

NOR3_lvt U18(
.i_nr_1(w_nr_Conn[16]),
.i_nr_2(w_nr_Conn[16]),
.i_nr_3(w_nr_Conn[16]),
.out(w_nr_Conn[17])
);

NOR3_lvt U19(
.i_nr_1(w_nr_Conn[17]),
.i_nr_2(w_nr_Conn[17]),
.i_nr_3(w_nr_Conn[17]),
.out(w_nr_Conn[18])
);

NOR3_lvt U20(
.i_nr_1(w_nr_Conn[18]),
.i_nr_2(w_nr_Conn[18]),
.i_nr_3(w_nr_Conn[18]),
.out(w_nr_Conn[19])
);

NOR3_lvt U21(
.i_nr_1(w_nr_Conn[19]),
.i_nr_2(w_nr_Conn[19]),
.i_nr_3(w_nr_Conn[19]),
.out(w_nr_Conn[20])
);

NOR3_lvt U22(
.i_nr_1(w_nr_Conn[20]),
.i_nr_2(w_nr_Conn[20]),
.i_nr_3(w_nr_Conn[20]),
.out(w_nr_Conn[21])
);

NOR3_lvt U23(
.i_nr_1(w_nr_Conn[21]),
.i_nr_2(w_nr_Conn[21]),
.i_nr_3(w_nr_Conn[21]),
.out(w_nr_Conn[22])
);

NOR3_lvt U24(
.i_nr_1(w_nr_Conn[22]),
.i_nr_2(w_nr_Conn[22]),
.i_nr_3(w_nr_Conn[22]),
.out(w_nr_Conn[23])
);

NOR3_lvt U25(
.i_nr_1(w_nr_Conn[23]),
.i_nr_2(w_nr_Conn[23]),
.i_nr_3(w_nr_Conn[23]),
.out(w_nr_Conn[24])
);

NOR3_lvt U26(
.i_nr_1(w_nr_Conn[24]),
.i_nr_2(w_nr_Conn[24]),
.i_nr_3(w_nr_Conn[24]),
.out(w_nr_Conn[25])
);

NOR3_lvt U27(
.i_nr_1(w_nr_Conn[25]),
.i_nr_2(w_nr_Conn[25]),
.i_nr_3(w_nr_Conn[25]),
.out(w_nr_Conn[26])
);

NOR3_lvt U28(
.i_nr_1(w_nr_Conn[26]),
.i_nr_2(w_nr_Conn[26]),
.i_nr_3(w_nr_Conn[26]),
.out(w_nr_Conn[27])
);

NOR3_lvt U29(
.i_nr_1(w_nr_Conn[27]),
.i_nr_2(w_nr_Conn[27]),
.i_nr_3(w_nr_Conn[27]),
.out(w_nr_Conn[28])
);

NOR3_lvt U30(
.i_nr_1(w_nr_Conn[28]),
.i_nr_2(w_nr_Conn[28]),
.i_nr_3(w_nr_Conn[28]),
.out(w_nr_Conn[29])
);

NOR3_lvt U31(
.i_nr_1(w_nr_Conn[29]),
.i_nr_2(w_nr_Conn[29]),
.i_nr_3(w_nr_Conn[29]),
.out(w_nr_Conn[30])
);

NOR3_lvt U32(
.i_nr_1(w_nr_Conn[30]),
.i_nr_2(w_nr_Conn[30]),
.i_nr_3(w_nr_Conn[30]),
.out(w_nr_Conn[31])
);

NOR3_lvt U33(
.i_nr_1(w_nr_Conn[31]),
.i_nr_2(w_nr_Conn[31]),
.i_nr_3(w_nr_Conn[31]),
.out(w_nr_Conn[32])
);

NOR3_lvt U34(
.i_nr_1(w_nr_Conn[32]),
.i_nr_2(w_nr_Conn[32]),
.i_nr_3(w_nr_Conn[32]),
.out(w_nr_Conn[33])
);

NOR3_lvt U35(
.i_nr_1(w_nr_Conn[33]),
.i_nr_2(w_nr_Conn[33]),
.i_nr_3(w_nr_Conn[33]),
.out(w_nr_Conn[34])
);

NOR3_lvt U36(
.i_nr_1(w_nr_Conn[34]),
.i_nr_2(w_nr_Conn[34]),
.i_nr_3(w_nr_Conn[34]),
.out(w_nr_Conn[35])
);

NOR3_lvt U37(
.i_nr_1(w_nr_Conn[35]),
.i_nr_2(w_nr_Conn[35]),
.i_nr_3(w_nr_Conn[35]),
.out(w_nr_Conn[36])
);

NOR3_lvt U38(
.i_nr_1(w_nr_Conn[36]),
.i_nr_2(w_nr_Conn[36]),
.i_nr_3(w_nr_Conn[36]),
.out(w_nr_Conn[37])
);

NOR3_lvt U39(
.i_nr_1(w_nr_Conn[37]),
.i_nr_2(w_nr_Conn[37]),
.i_nr_3(w_nr_Conn[37]),
.out(w_nr_Conn[38])
);

NOR3_lvt U40(
.i_nr_1(w_nr_Conn[38]),
.i_nr_2(w_nr_Conn[38]),
.i_nr_3(w_nr_Conn[38]),
.out(w_nr_Conn[39])
);

NOR3_lvt U41(
.i_nr_1(w_nr_Conn[39]),
.i_nr_2(w_nr_Conn[39]),
.i_nr_3(w_nr_Conn[39]),
.out(w_nr_Conn[40])
);

NOR3_lvt U42(
.i_nr_1(w_nr_Conn[40]),
.i_nr_2(w_nr_Conn[40]),
.i_nr_3(w_nr_Conn[40]),
.out(w_nr_Conn[41])
);

NOR3_lvt U43(
.i_nr_1(w_nr_Conn[41]),
.i_nr_2(w_nr_Conn[41]),
.i_nr_3(w_nr_Conn[41]),
.out(w_nr_Conn[42])
);

NOR3_lvt U44(
.i_nr_1(w_nr_Conn[42]),
.i_nr_2(w_nr_Conn[42]),
.i_nr_3(w_nr_Conn[42]),
.out(w_nr_Conn[43])
);

NOR3_lvt U45(
.i_nr_1(w_nr_Conn[43]),
.i_nr_2(w_nr_Conn[43]),
.i_nr_3(w_nr_Conn[43]),
.out(w_nr_Conn[44])
);

NOR3_lvt U46(
.i_nr_1(w_nr_Conn[44]),
.i_nr_2(w_nr_Conn[44]),
.i_nr_3(w_nr_Conn[44]),
.out(w_nr_Conn[45])
);

NOR3_lvt U47(
.i_nr_1(w_nr_Conn[45]),
.i_nr_2(w_nr_Conn[45]),
.i_nr_3(w_nr_Conn[45]),
.out(w_nr_Conn[46])
);

NOR3_lvt U48(
.i_nr_1(w_nr_Conn[46]),
.i_nr_2(w_nr_Conn[46]),
.i_nr_3(w_nr_Conn[46]),
.out(w_nr_Conn[47])
);

NOR3_lvt U49(
.i_nr_1(w_nr_Conn[47]),
.i_nr_2(w_nr_Conn[47]),
.i_nr_3(w_nr_Conn[47]),
.out(w_nr_Conn[48])
);

NOR3_lvt U50(
.i_nr_1(w_nr_Conn[48]),
.i_nr_2(w_nr_Conn[48]),
.i_nr_3(w_nr_Conn[48]),
.out(w_nr_Conn[49])
);

NOR3_lvt U51(
.i_nr_1(w_nr_Conn[49]),
.i_nr_2(w_nr_Conn[49]),
.i_nr_3(w_nr_Conn[49]),
.out(w_nr_Conn[50])
);

NOR3_lvt U52(
.i_nr_1(w_nr_Conn[50]),
.i_nr_2(w_nr_Conn[50]),
.i_nr_3(w_nr_Conn[50]),
.out(w_nr_Conn[51])
);

NOR3_lvt U53(
.i_nr_1(w_nr_Conn[51]),
.i_nr_2(w_nr_Conn[51]),
.i_nr_3(w_nr_Conn[51]),
.out(w_nr_Conn[52])
);

NOR3_lvt U54(
.i_nr_1(w_nr_Conn[52]),
.i_nr_2(w_nr_Conn[52]),
.i_nr_3(w_nr_Conn[52]),
.out(w_nr_Conn[53])
);

NOR3_lvt U55(
.i_nr_1(w_nr_Conn[53]),
.i_nr_2(w_nr_Conn[53]),
.i_nr_3(w_nr_Conn[53]),
.out(w_nr_Conn[54])
);

NOR3_lvt U56(
.i_nr_1(w_nr_Conn[54]),
.i_nr_2(w_nr_Conn[54]),
.i_nr_3(w_nr_Conn[54]),
.out(w_nr_Conn[55])
);

NOR3_lvt U57(
.i_nr_1(w_nr_Conn[55]),
.i_nr_2(w_nr_Conn[55]),
.i_nr_3(w_nr_Conn[55]),
.out(w_nr_Conn[56])
);

NOR3_lvt U58(
.i_nr_1(w_nr_Conn[56]),
.i_nr_2(w_nr_Conn[56]),
.i_nr_3(w_nr_Conn[56]),
.out(w_nr_Conn[57])
);

NOR3_lvt U59(
.i_nr_1(w_nr_Conn[57]),
.i_nr_2(w_nr_Conn[57]),
.i_nr_3(w_nr_Conn[57]),
.out(w_nr_Conn[58])
);

NOR3_lvt U60(
.i_nr_1(w_nr_Conn[58]),
.i_nr_2(w_nr_Conn[58]),
.i_nr_3(w_nr_Conn[58]),
.out(w_nr_Conn[59])
);

NOR3_lvt U61(
.i_nr_1(w_nr_Conn[59]),
.i_nr_2(w_nr_Conn[59]),
.i_nr_3(w_nr_Conn[59]),
.out(w_nr_Conn[60])
);

NOR3_lvt U62(
.i_nr_1(w_nr_Conn[60]),
.i_nr_2(w_nr_Conn[60]),
.i_nr_3(w_nr_Conn[60]),
.out(w_nr_Conn[61])
);

NOR3_lvt U63(
.i_nr_1(w_nr_Conn[61]),
.i_nr_2(w_nr_Conn[61]),
.i_nr_3(w_nr_Conn[61]),
.out(w_nr_Conn[62])
);

NOR3_lvt U64(
.i_nr_1(w_nr_Conn[62]),
.i_nr_2(w_nr_Conn[62]),
.i_nr_3(w_nr_Conn[62]),
.out(w_nr_Conn[63])
);

NOR3_lvt U65(
.i_nr_1(w_nr_Conn[63]),
.i_nr_2(w_nr_Conn[63]),
.i_nr_3(w_nr_Conn[63]),
.out(w_nr_Conn[64])
);

NOR3_lvt U66(
.i_nr_1(w_nr_Conn[64]),
.i_nr_2(w_nr_Conn[64]),
.i_nr_3(w_nr_Conn[64]),
.out(w_nr_Conn[65])
);

NOR3_lvt U67(
.i_nr_1(w_nr_Conn[65]),
.i_nr_2(w_nr_Conn[65]),
.i_nr_3(w_nr_Conn[65]),
.out(w_nr_Conn[66])
);

NOR3_lvt U68(
.i_nr_1(w_nr_Conn[66]),
.i_nr_2(w_nr_Conn[66]),
.i_nr_3(w_nr_Conn[66]),
.out(w_nr_Conn[67])
);

NOR3_lvt U69(
.i_nr_1(w_nr_Conn[67]),
.i_nr_2(w_nr_Conn[67]),
.i_nr_3(w_nr_Conn[67]),
.out(w_nr_Conn[68])
);

NOR3_lvt U70(
.i_nr_1(w_nr_Conn[68]),
.i_nr_2(w_nr_Conn[68]),
.i_nr_3(w_nr_Conn[68]),
.out(w_nr_Conn[69])
);

NOR3_lvt U71(
.i_nr_1(w_nr_Conn[69]),
.i_nr_2(w_nr_Conn[69]),
.i_nr_3(w_nr_Conn[69]),
.out(w_nr_Conn[70])
);

NOR3_lvt U72(
.i_nr_1(w_nr_Conn[70]),
.i_nr_2(w_nr_Conn[70]),
.i_nr_3(w_nr_Conn[70]),
.out(w_nr_Conn[71])
);

NOR3_lvt U73(
.i_nr_1(w_nr_Conn[71]),
.i_nr_2(w_nr_Conn[71]),
.i_nr_3(w_nr_Conn[71]),
.out(w_nr_Conn[72])
);

NOR3_lvt U74(
.i_nr_1(w_nr_Conn[72]),
.i_nr_2(w_nr_Conn[72]),
.i_nr_3(w_nr_Conn[72]),
.out(w_nr_Conn[73])
);

NOR3_lvt U75(
.i_nr_1(w_nr_Conn[73]),
.i_nr_2(w_nr_Conn[73]),
.i_nr_3(w_nr_Conn[73]),
.out(w_nr_Conn[74])
);

NOR3_lvt U76(
.i_nr_1(w_nr_Conn[74]),
.i_nr_2(w_nr_Conn[74]),
.i_nr_3(w_nr_Conn[74]),
.out(w_nr_Conn[75])
);

NOR3_lvt U77(
.i_nr_1(w_nr_Conn[75]),
.i_nr_2(w_nr_Conn[75]),
.i_nr_3(w_nr_Conn[75]),
.out(w_nr_Conn[76])
);

NOR3_lvt U78(
.i_nr_1(w_nr_Conn[76]),
.i_nr_2(w_nr_Conn[76]),
.i_nr_3(w_nr_Conn[76]),
.out(w_nr_Conn[77])
);

NOR3_lvt U79(
.i_nr_1(w_nr_Conn[77]),
.i_nr_2(w_nr_Conn[77]),
.i_nr_3(w_nr_Conn[77]),
.out(w_nr_Conn[78])
);

NOR3_lvt U80(
.i_nr_1(w_nr_Conn[78]),
.i_nr_2(w_nr_Conn[78]),
.i_nr_3(w_nr_Conn[78]),
.out(w_nr_Conn[79])
);

NOR3_lvt U81(
.i_nr_1(w_nr_Conn[79]),
.i_nr_2(w_nr_Conn[79]),
.i_nr_3(w_nr_Conn[79]),
.out(w_nr_Conn[80])
);

NOR3_lvt U82(
.i_nr_1(w_nr_Conn[80]),
.i_nr_2(w_nr_Conn[80]),
.i_nr_3(w_nr_Conn[80]),
.out(w_nr_Conn[81])
);

NOR3_lvt U83(
.i_nr_1(w_nr_Conn[81]),
.i_nr_2(w_nr_Conn[81]),
.i_nr_3(w_nr_Conn[81]),
.out(w_nr_Conn[82])
);

NOR3_lvt U84(
.i_nr_1(w_nr_Conn[82]),
.i_nr_2(w_nr_Conn[82]),
.i_nr_3(w_nr_Conn[82]),
.out(w_nr_Conn[83])
);

NOR3_lvt U85(
.i_nr_1(w_nr_Conn[83]),
.i_nr_2(w_nr_Conn[83]),
.i_nr_3(w_nr_Conn[83]),
.out(w_nr_Conn[84])
);

NOR3_lvt U86(
.i_nr_1(w_nr_Conn[84]),
.i_nr_2(w_nr_Conn[84]),
.i_nr_3(w_nr_Conn[84]),
.out(w_nr_Conn[85])
);

NOR3_lvt U87(
.i_nr_1(w_nr_Conn[85]),
.i_nr_2(w_nr_Conn[85]),
.i_nr_3(w_nr_Conn[85]),
.out(w_nr_Conn[86])
);

NOR3_lvt U88(
.i_nr_1(w_nr_Conn[86]),
.i_nr_2(w_nr_Conn[86]),
.i_nr_3(w_nr_Conn[86]),
.out(w_nr_Conn[87])
);

NOR3_lvt U89(
.i_nr_1(w_nr_Conn[87]),
.i_nr_2(w_nr_Conn[87]),
.i_nr_3(w_nr_Conn[87]),
.out(w_nr_Conn[88])
);

NOR3_lvt U90(
.i_nr_1(w_nr_Conn[88]),
.i_nr_2(w_nr_Conn[88]),
.i_nr_3(w_nr_Conn[88]),
.out(w_nr_Conn[89])
);

NOR3_lvt U91(
.i_nr_1(w_nr_Conn[89]),
.i_nr_2(w_nr_Conn[89]),
.i_nr_3(w_nr_Conn[89]),
.out(w_nr_Conn[90])
);

NOR3_lvt U92(
.i_nr_1(w_nr_Conn[90]),
.i_nr_2(w_nr_Conn[90]),
.i_nr_3(w_nr_Conn[90]),
.out(w_nr_Conn[91])
);

NOR3_lvt U93(
.i_nr_1(w_nr_Conn[91]),
.i_nr_2(w_nr_Conn[91]),
.i_nr_3(w_nr_Conn[91]),
.out(w_nr_Conn[92])
);

NOR3_lvt U94(
.i_nr_1(w_nr_Conn[92]),
.i_nr_2(w_nr_Conn[92]),
.i_nr_3(w_nr_Conn[92]),
.out(w_nr_Conn[93])
);

NOR3_lvt U95(
.i_nr_1(w_nr_Conn[93]),
.i_nr_2(w_nr_Conn[93]),
.i_nr_3(w_nr_Conn[93]),
.out(w_nr_Conn[94])
);

NOR3_lvt U96(
.i_nr_1(w_nr_Conn[94]),
.i_nr_2(w_nr_Conn[94]),
.i_nr_3(w_nr_Conn[94]),
.out(w_nr_Conn[95])
);

NOR3_lvt U97(
.i_nr_1(w_nr_Conn[95]),
.i_nr_2(w_nr_Conn[95]),
.i_nr_3(w_nr_Conn[95]),
.out(w_nr_Conn[96])
);

NOR3_lvt U98(
.i_nr_1(w_nr_Conn[96]),
.i_nr_2(w_nr_Conn[96]),
.i_nr_3(w_nr_Conn[96]),
.out(w_nr_Conn[97])
);

NOR3_lvt U99(
.i_nr_1(w_nr_Conn[97]),
.i_nr_2(w_nr_Conn[97]),
.i_nr_3(w_nr_Conn[97]),
.out(w_nr_Conn[98])
);

NOR3_lvt U100(
.i_nr_1(w_nr_Conn[98]),
.i_nr_2(w_nr_Conn[98]),
.i_nr_3(w_nr_Conn[98]),
.out(w_nr_Conn[99])
);

NOR3_lvt U101(
.i_nr_1(w_nr_Conn[99]),
.i_nr_2(w_nr_Conn[99]),
.i_nr_3(w_nr_Conn[99]),
.out(w_nr_Conn[100])
);

NOR3_lvt U102(
.i_nr_1(w_nr_Conn[100]),
.i_nr_2(w_nr_Conn[100]),
.i_nr_3(w_nr_Conn[100]),
.out(w_nr_Conn[101])
);

NOR3_lvt U103(
.i_nr_1(w_nr_Conn[101]),
.i_nr_2(w_nr_Conn[101]),
.i_nr_3(w_nr_Conn[101]),
.out(w_nr_Conn[102])
);

NOR3_lvt U104(
.i_nr_1(w_nr_Conn[102]),
.i_nr_2(w_nr_Conn[102]),
.i_nr_3(w_nr_Conn[102]),
.out(w_nr_Conn[103])
);

NOR3_lvt U105(
.i_nr_1(w_nr_Conn[103]),
.i_nr_2(w_nr_Conn[103]),
.i_nr_3(w_nr_Conn[103]),
.out(w_nr_Conn[104])
);

NOR3_lvt U106(
.i_nr_1(w_nr_Conn[104]),
.i_nr_2(w_nr_Conn[104]),
.i_nr_3(w_nr_Conn[104]),
.out(w_nr_Conn[105])
);

NOR3_lvt U107(
.i_nr_1(w_nr_Conn[105]),
.i_nr_2(w_nr_Conn[105]),
.i_nr_3(w_nr_Conn[105]),
.out(w_nr_Conn[106])
);

NOR3_lvt U108(
.i_nr_1(w_nr_Conn[106]),
.i_nr_2(w_nr_Conn[106]),
.i_nr_3(w_nr_Conn[106]),
.out(w_nr_Conn[107])
);

NOR3_lvt U109(
.i_nr_1(w_nr_Conn[107]),
.i_nr_2(w_nr_Conn[107]),
.i_nr_3(w_nr_Conn[107]),
.out(w_nr_Conn[108])
);

NOR3_lvt U110(
.i_nr_1(w_nr_Conn[108]),
.i_nr_2(w_nr_Conn[108]),
.i_nr_3(w_nr_Conn[108]),
.out(w_nr_Conn[109])
);

NOR3_lvt U111(
.i_nr_1(w_nr_Conn[109]),
.i_nr_2(w_nr_Conn[109]),
.i_nr_3(w_nr_Conn[109]),
.out(w_nr_Conn[110])
);

NOR3_lvt U112(
.i_nr_1(w_nr_Conn[110]),
.i_nr_2(w_nr_Conn[110]),
.i_nr_3(w_nr_Conn[110]),
.out(w_nr_Conn[111])
);

NOR3_lvt U113(
.i_nr_1(w_nr_Conn[111]),
.i_nr_2(w_nr_Conn[111]),
.i_nr_3(w_nr_Conn[111]),
.out(w_nr_Conn[112])
);

NOR3_lvt U114(
.i_nr_1(w_nr_Conn[112]),
.i_nr_2(w_nr_Conn[112]),
.i_nr_3(w_nr_Conn[112]),
.out(w_nr_Conn[113])
);

NOR3_lvt U115(
.i_nr_1(w_nr_Conn[113]),
.i_nr_2(w_nr_Conn[113]),
.i_nr_3(w_nr_Conn[113]),
.out(w_nr_Conn[114])
);

NOR3_lvt U116(
.i_nr_1(w_nr_Conn[114]),
.i_nr_2(w_nr_Conn[114]),
.i_nr_3(w_nr_Conn[114]),
.out(w_nr_Conn[115])
);

NOR3_lvt U117(
.i_nr_1(w_nr_Conn[115]),
.i_nr_2(w_nr_Conn[115]),
.i_nr_3(w_nr_Conn[115]),
.out(w_nr_Conn[116])
);

NOR3_lvt U118(
.i_nr_1(w_nr_Conn[116]),
.i_nr_2(w_nr_Conn[116]),
.i_nr_3(w_nr_Conn[116]),
.out(w_nr_Conn[117])
);

NOR3_lvt U119(
.i_nr_1(w_nr_Conn[117]),
.i_nr_2(w_nr_Conn[117]),
.i_nr_3(w_nr_Conn[117]),
.out(w_nr_Conn[118])
);

NOR3_lvt U120(
.i_nr_1(w_nr_Conn[118]),
.i_nr_2(w_nr_Conn[118]),
.i_nr_3(w_nr_Conn[118]),
.out(w_nr_Conn[119])
);

NOR3_lvt U121(
.i_nr_1(w_nr_Conn[119]),
.i_nr_2(w_nr_Conn[119]),
.i_nr_3(w_nr_Conn[119]),
.out(w_nr_Conn[120])
);

NOR3_lvt U122(
.i_nr_1(w_nr_Conn[120]),
.i_nr_2(w_nr_Conn[120]),
.i_nr_3(w_nr_Conn[120]),
.out(w_nr_Conn[121])
);

NOR3_lvt U123(
.i_nr_1(w_nr_Conn[121]),
.i_nr_2(w_nr_Conn[121]),
.i_nr_3(w_nr_Conn[121]),
.out(w_nr_Conn[122])
);

NOR3_lvt U124(
.i_nr_1(w_nr_Conn[122]),
.i_nr_2(w_nr_Conn[122]),
.i_nr_3(w_nr_Conn[122]),
.out(w_nr_Conn[123])
);

NOR3_lvt U125(
.i_nr_1(w_nr_Conn[123]),
.i_nr_2(w_nr_Conn[123]),
.i_nr_3(w_nr_Conn[123]),
.out(w_nr_Conn[124])
);

NOR3_lvt U126(
.i_nr_1(w_nr_Conn[124]),
.i_nr_2(w_nr_Conn[124]),
.i_nr_3(w_nr_Conn[124]),
.out(w_nr_Conn[125])
);

endmodule

module NOR3_lvt(
input wire i_nr_1,
input wire i_nr_2,
input wire i_nr_3,
output wire out);

assign #110 out = ~(i_nr_1 | i_nr_2 | i_nr_3);

endmodule 

