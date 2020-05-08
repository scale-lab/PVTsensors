/////////////////// Please synthesize this RO with lvt library /////////////////// 
/////////////////// This RO contains 383 stages /////////////////// 

`timescale 1ps / 100fs

module RO_inv_hvt_65(
input wire i_Enable,
input wire i_Sel,
output wire o_RO_out
);

/////////////////// Define wires between inverters ///////////////////
wire [381:0] w_inv_Conn;

// RTL for NAND3 with imaginary delay numbers
// always@(w_inv_Conn[381] or i_Sel or i_Enable)
assign #90 o_RO_out = ~(w_inv_Conn[381] & i_Sel & i_Enable);

inv_hvt U1(
.in(o_RO_out),
.out(w_inv_Conn[0])
);

inv_hvt U2(
.in(w_inv_Conn[0]),
.out(w_inv_Conn[1])
);

inv_hvt U3(
.in(w_inv_Conn[1]),
.out(w_inv_Conn[2])
);

inv_hvt U4(
.in(w_inv_Conn[2]),
.out(w_inv_Conn[3])
);

inv_hvt U5(
.in(w_inv_Conn[3]),
.out(w_inv_Conn[4])
);

inv_hvt U6(
.in(w_inv_Conn[4]),
.out(w_inv_Conn[5])
);

inv_hvt U7(
.in(w_inv_Conn[5]),
.out(w_inv_Conn[6])
);

inv_hvt U8(
.in(w_inv_Conn[6]),
.out(w_inv_Conn[7])
);

inv_hvt U9(
.in(w_inv_Conn[7]),
.out(w_inv_Conn[8])
);

inv_hvt U10(
.in(w_inv_Conn[8]),
.out(w_inv_Conn[9])
);

inv_hvt U11(
.in(w_inv_Conn[9]),
.out(w_inv_Conn[10])
);

inv_hvt U12(
.in(w_inv_Conn[10]),
.out(w_inv_Conn[11])
);

inv_hvt U13(
.in(w_inv_Conn[11]),
.out(w_inv_Conn[12])
);

inv_hvt U14(
.in(w_inv_Conn[12]),
.out(w_inv_Conn[13])
);

inv_hvt U15(
.in(w_inv_Conn[13]),
.out(w_inv_Conn[14])
);

inv_hvt U16(
.in(w_inv_Conn[14]),
.out(w_inv_Conn[15])
);

inv_hvt U17(
.in(w_inv_Conn[15]),
.out(w_inv_Conn[16])
);

inv_hvt U18(
.in(w_inv_Conn[16]),
.out(w_inv_Conn[17])
);

inv_hvt U19(
.in(w_inv_Conn[17]),
.out(w_inv_Conn[18])
);

inv_hvt U20(
.in(w_inv_Conn[18]),
.out(w_inv_Conn[19])
);

inv_hvt U21(
.in(w_inv_Conn[19]),
.out(w_inv_Conn[20])
);

inv_hvt U22(
.in(w_inv_Conn[20]),
.out(w_inv_Conn[21])
);

inv_hvt U23(
.in(w_inv_Conn[21]),
.out(w_inv_Conn[22])
);

inv_hvt U24(
.in(w_inv_Conn[22]),
.out(w_inv_Conn[23])
);

inv_hvt U25(
.in(w_inv_Conn[23]),
.out(w_inv_Conn[24])
);

inv_hvt U26(
.in(w_inv_Conn[24]),
.out(w_inv_Conn[25])
);

inv_hvt U27(
.in(w_inv_Conn[25]),
.out(w_inv_Conn[26])
);

inv_hvt U28(
.in(w_inv_Conn[26]),
.out(w_inv_Conn[27])
);

inv_hvt U29(
.in(w_inv_Conn[27]),
.out(w_inv_Conn[28])
);

inv_hvt U30(
.in(w_inv_Conn[28]),
.out(w_inv_Conn[29])
);

inv_hvt U31(
.in(w_inv_Conn[29]),
.out(w_inv_Conn[30])
);

inv_hvt U32(
.in(w_inv_Conn[30]),
.out(w_inv_Conn[31])
);

inv_hvt U33(
.in(w_inv_Conn[31]),
.out(w_inv_Conn[32])
);

inv_hvt U34(
.in(w_inv_Conn[32]),
.out(w_inv_Conn[33])
);

inv_hvt U35(
.in(w_inv_Conn[33]),
.out(w_inv_Conn[34])
);

inv_hvt U36(
.in(w_inv_Conn[34]),
.out(w_inv_Conn[35])
);

inv_hvt U37(
.in(w_inv_Conn[35]),
.out(w_inv_Conn[36])
);

inv_hvt U38(
.in(w_inv_Conn[36]),
.out(w_inv_Conn[37])
);

inv_hvt U39(
.in(w_inv_Conn[37]),
.out(w_inv_Conn[38])
);

inv_hvt U40(
.in(w_inv_Conn[38]),
.out(w_inv_Conn[39])
);

inv_hvt U41(
.in(w_inv_Conn[39]),
.out(w_inv_Conn[40])
);

inv_hvt U42(
.in(w_inv_Conn[40]),
.out(w_inv_Conn[41])
);

inv_hvt U43(
.in(w_inv_Conn[41]),
.out(w_inv_Conn[42])
);

inv_hvt U44(
.in(w_inv_Conn[42]),
.out(w_inv_Conn[43])
);

inv_hvt U45(
.in(w_inv_Conn[43]),
.out(w_inv_Conn[44])
);

inv_hvt U46(
.in(w_inv_Conn[44]),
.out(w_inv_Conn[45])
);

inv_hvt U47(
.in(w_inv_Conn[45]),
.out(w_inv_Conn[46])
);

inv_hvt U48(
.in(w_inv_Conn[46]),
.out(w_inv_Conn[47])
);

inv_hvt U49(
.in(w_inv_Conn[47]),
.out(w_inv_Conn[48])
);

inv_hvt U50(
.in(w_inv_Conn[48]),
.out(w_inv_Conn[49])
);

inv_hvt U51(
.in(w_inv_Conn[49]),
.out(w_inv_Conn[50])
);

inv_hvt U52(
.in(w_inv_Conn[50]),
.out(w_inv_Conn[51])
);

inv_hvt U53(
.in(w_inv_Conn[51]),
.out(w_inv_Conn[52])
);

inv_hvt U54(
.in(w_inv_Conn[52]),
.out(w_inv_Conn[53])
);

inv_hvt U55(
.in(w_inv_Conn[53]),
.out(w_inv_Conn[54])
);

inv_hvt U56(
.in(w_inv_Conn[54]),
.out(w_inv_Conn[55])
);

inv_hvt U57(
.in(w_inv_Conn[55]),
.out(w_inv_Conn[56])
);

inv_hvt U58(
.in(w_inv_Conn[56]),
.out(w_inv_Conn[57])
);

inv_hvt U59(
.in(w_inv_Conn[57]),
.out(w_inv_Conn[58])
);

inv_hvt U60(
.in(w_inv_Conn[58]),
.out(w_inv_Conn[59])
);

inv_hvt U61(
.in(w_inv_Conn[59]),
.out(w_inv_Conn[60])
);

inv_hvt U62(
.in(w_inv_Conn[60]),
.out(w_inv_Conn[61])
);

inv_hvt U63(
.in(w_inv_Conn[61]),
.out(w_inv_Conn[62])
);

inv_hvt U64(
.in(w_inv_Conn[62]),
.out(w_inv_Conn[63])
);

inv_hvt U65(
.in(w_inv_Conn[63]),
.out(w_inv_Conn[64])
);

inv_hvt U66(
.in(w_inv_Conn[64]),
.out(w_inv_Conn[65])
);

inv_hvt U67(
.in(w_inv_Conn[65]),
.out(w_inv_Conn[66])
);

inv_hvt U68(
.in(w_inv_Conn[66]),
.out(w_inv_Conn[67])
);

inv_hvt U69(
.in(w_inv_Conn[67]),
.out(w_inv_Conn[68])
);

inv_hvt U70(
.in(w_inv_Conn[68]),
.out(w_inv_Conn[69])
);

inv_hvt U71(
.in(w_inv_Conn[69]),
.out(w_inv_Conn[70])
);

inv_hvt U72(
.in(w_inv_Conn[70]),
.out(w_inv_Conn[71])
);

inv_hvt U73(
.in(w_inv_Conn[71]),
.out(w_inv_Conn[72])
);

inv_hvt U74(
.in(w_inv_Conn[72]),
.out(w_inv_Conn[73])
);

inv_hvt U75(
.in(w_inv_Conn[73]),
.out(w_inv_Conn[74])
);

inv_hvt U76(
.in(w_inv_Conn[74]),
.out(w_inv_Conn[75])
);

inv_hvt U77(
.in(w_inv_Conn[75]),
.out(w_inv_Conn[76])
);

inv_hvt U78(
.in(w_inv_Conn[76]),
.out(w_inv_Conn[77])
);

inv_hvt U79(
.in(w_inv_Conn[77]),
.out(w_inv_Conn[78])
);

inv_hvt U80(
.in(w_inv_Conn[78]),
.out(w_inv_Conn[79])
);

inv_hvt U81(
.in(w_inv_Conn[79]),
.out(w_inv_Conn[80])
);

inv_hvt U82(
.in(w_inv_Conn[80]),
.out(w_inv_Conn[81])
);

inv_hvt U83(
.in(w_inv_Conn[81]),
.out(w_inv_Conn[82])
);

inv_hvt U84(
.in(w_inv_Conn[82]),
.out(w_inv_Conn[83])
);

inv_hvt U85(
.in(w_inv_Conn[83]),
.out(w_inv_Conn[84])
);

inv_hvt U86(
.in(w_inv_Conn[84]),
.out(w_inv_Conn[85])
);

inv_hvt U87(
.in(w_inv_Conn[85]),
.out(w_inv_Conn[86])
);

inv_hvt U88(
.in(w_inv_Conn[86]),
.out(w_inv_Conn[87])
);

inv_hvt U89(
.in(w_inv_Conn[87]),
.out(w_inv_Conn[88])
);

inv_hvt U90(
.in(w_inv_Conn[88]),
.out(w_inv_Conn[89])
);

inv_hvt U91(
.in(w_inv_Conn[89]),
.out(w_inv_Conn[90])
);

inv_hvt U92(
.in(w_inv_Conn[90]),
.out(w_inv_Conn[91])
);

inv_hvt U93(
.in(w_inv_Conn[91]),
.out(w_inv_Conn[92])
);

inv_hvt U94(
.in(w_inv_Conn[92]),
.out(w_inv_Conn[93])
);

inv_hvt U95(
.in(w_inv_Conn[93]),
.out(w_inv_Conn[94])
);

inv_hvt U96(
.in(w_inv_Conn[94]),
.out(w_inv_Conn[95])
);

inv_hvt U97(
.in(w_inv_Conn[95]),
.out(w_inv_Conn[96])
);

inv_hvt U98(
.in(w_inv_Conn[96]),
.out(w_inv_Conn[97])
);

inv_hvt U99(
.in(w_inv_Conn[97]),
.out(w_inv_Conn[98])
);

inv_hvt U100(
.in(w_inv_Conn[98]),
.out(w_inv_Conn[99])
);

inv_hvt U101(
.in(w_inv_Conn[99]),
.out(w_inv_Conn[100])
);

inv_hvt U102(
.in(w_inv_Conn[100]),
.out(w_inv_Conn[101])
);

inv_hvt U103(
.in(w_inv_Conn[101]),
.out(w_inv_Conn[102])
);

inv_hvt U104(
.in(w_inv_Conn[102]),
.out(w_inv_Conn[103])
);

inv_hvt U105(
.in(w_inv_Conn[103]),
.out(w_inv_Conn[104])
);

inv_hvt U106(
.in(w_inv_Conn[104]),
.out(w_inv_Conn[105])
);

inv_hvt U107(
.in(w_inv_Conn[105]),
.out(w_inv_Conn[106])
);

inv_hvt U108(
.in(w_inv_Conn[106]),
.out(w_inv_Conn[107])
);

inv_hvt U109(
.in(w_inv_Conn[107]),
.out(w_inv_Conn[108])
);

inv_hvt U110(
.in(w_inv_Conn[108]),
.out(w_inv_Conn[109])
);

inv_hvt U111(
.in(w_inv_Conn[109]),
.out(w_inv_Conn[110])
);

inv_hvt U112(
.in(w_inv_Conn[110]),
.out(w_inv_Conn[111])
);

inv_hvt U113(
.in(w_inv_Conn[111]),
.out(w_inv_Conn[112])
);

inv_hvt U114(
.in(w_inv_Conn[112]),
.out(w_inv_Conn[113])
);

inv_hvt U115(
.in(w_inv_Conn[113]),
.out(w_inv_Conn[114])
);

inv_hvt U116(
.in(w_inv_Conn[114]),
.out(w_inv_Conn[115])
);

inv_hvt U117(
.in(w_inv_Conn[115]),
.out(w_inv_Conn[116])
);

inv_hvt U118(
.in(w_inv_Conn[116]),
.out(w_inv_Conn[117])
);

inv_hvt U119(
.in(w_inv_Conn[117]),
.out(w_inv_Conn[118])
);

inv_hvt U120(
.in(w_inv_Conn[118]),
.out(w_inv_Conn[119])
);

inv_hvt U121(
.in(w_inv_Conn[119]),
.out(w_inv_Conn[120])
);

inv_hvt U122(
.in(w_inv_Conn[120]),
.out(w_inv_Conn[121])
);

inv_hvt U123(
.in(w_inv_Conn[121]),
.out(w_inv_Conn[122])
);

inv_hvt U124(
.in(w_inv_Conn[122]),
.out(w_inv_Conn[123])
);

inv_hvt U125(
.in(w_inv_Conn[123]),
.out(w_inv_Conn[124])
);

inv_hvt U126(
.in(w_inv_Conn[124]),
.out(w_inv_Conn[125])
);

inv_hvt U127(
.in(w_inv_Conn[125]),
.out(w_inv_Conn[126])
);

inv_hvt U128(
.in(w_inv_Conn[126]),
.out(w_inv_Conn[127])
);

inv_hvt U129(
.in(w_inv_Conn[127]),
.out(w_inv_Conn[128])
);

inv_hvt U130(
.in(w_inv_Conn[128]),
.out(w_inv_Conn[129])
);

inv_hvt U131(
.in(w_inv_Conn[129]),
.out(w_inv_Conn[130])
);

inv_hvt U132(
.in(w_inv_Conn[130]),
.out(w_inv_Conn[131])
);

inv_hvt U133(
.in(w_inv_Conn[131]),
.out(w_inv_Conn[132])
);

inv_hvt U134(
.in(w_inv_Conn[132]),
.out(w_inv_Conn[133])
);

inv_hvt U135(
.in(w_inv_Conn[133]),
.out(w_inv_Conn[134])
);

inv_hvt U136(
.in(w_inv_Conn[134]),
.out(w_inv_Conn[135])
);

inv_hvt U137(
.in(w_inv_Conn[135]),
.out(w_inv_Conn[136])
);

inv_hvt U138(
.in(w_inv_Conn[136]),
.out(w_inv_Conn[137])
);

inv_hvt U139(
.in(w_inv_Conn[137]),
.out(w_inv_Conn[138])
);

inv_hvt U140(
.in(w_inv_Conn[138]),
.out(w_inv_Conn[139])
);

inv_hvt U141(
.in(w_inv_Conn[139]),
.out(w_inv_Conn[140])
);

inv_hvt U142(
.in(w_inv_Conn[140]),
.out(w_inv_Conn[141])
);

inv_hvt U143(
.in(w_inv_Conn[141]),
.out(w_inv_Conn[142])
);

inv_hvt U144(
.in(w_inv_Conn[142]),
.out(w_inv_Conn[143])
);

inv_hvt U145(
.in(w_inv_Conn[143]),
.out(w_inv_Conn[144])
);

inv_hvt U146(
.in(w_inv_Conn[144]),
.out(w_inv_Conn[145])
);

inv_hvt U147(
.in(w_inv_Conn[145]),
.out(w_inv_Conn[146])
);

inv_hvt U148(
.in(w_inv_Conn[146]),
.out(w_inv_Conn[147])
);

inv_hvt U149(
.in(w_inv_Conn[147]),
.out(w_inv_Conn[148])
);

inv_hvt U150(
.in(w_inv_Conn[148]),
.out(w_inv_Conn[149])
);

inv_hvt U151(
.in(w_inv_Conn[149]),
.out(w_inv_Conn[150])
);

inv_hvt U152(
.in(w_inv_Conn[150]),
.out(w_inv_Conn[151])
);

inv_hvt U153(
.in(w_inv_Conn[151]),
.out(w_inv_Conn[152])
);

inv_hvt U154(
.in(w_inv_Conn[152]),
.out(w_inv_Conn[153])
);

inv_hvt U155(
.in(w_inv_Conn[153]),
.out(w_inv_Conn[154])
);

inv_hvt U156(
.in(w_inv_Conn[154]),
.out(w_inv_Conn[155])
);

inv_hvt U157(
.in(w_inv_Conn[155]),
.out(w_inv_Conn[156])
);

inv_hvt U158(
.in(w_inv_Conn[156]),
.out(w_inv_Conn[157])
);

inv_hvt U159(
.in(w_inv_Conn[157]),
.out(w_inv_Conn[158])
);

inv_hvt U160(
.in(w_inv_Conn[158]),
.out(w_inv_Conn[159])
);

inv_hvt U161(
.in(w_inv_Conn[159]),
.out(w_inv_Conn[160])
);

inv_hvt U162(
.in(w_inv_Conn[160]),
.out(w_inv_Conn[161])
);

inv_hvt U163(
.in(w_inv_Conn[161]),
.out(w_inv_Conn[162])
);

inv_hvt U164(
.in(w_inv_Conn[162]),
.out(w_inv_Conn[163])
);

inv_hvt U165(
.in(w_inv_Conn[163]),
.out(w_inv_Conn[164])
);

inv_hvt U166(
.in(w_inv_Conn[164]),
.out(w_inv_Conn[165])
);

inv_hvt U167(
.in(w_inv_Conn[165]),
.out(w_inv_Conn[166])
);

inv_hvt U168(
.in(w_inv_Conn[166]),
.out(w_inv_Conn[167])
);

inv_hvt U169(
.in(w_inv_Conn[167]),
.out(w_inv_Conn[168])
);

inv_hvt U170(
.in(w_inv_Conn[168]),
.out(w_inv_Conn[169])
);

inv_hvt U171(
.in(w_inv_Conn[169]),
.out(w_inv_Conn[170])
);

inv_hvt U172(
.in(w_inv_Conn[170]),
.out(w_inv_Conn[171])
);

inv_hvt U173(
.in(w_inv_Conn[171]),
.out(w_inv_Conn[172])
);

inv_hvt U174(
.in(w_inv_Conn[172]),
.out(w_inv_Conn[173])
);

inv_hvt U175(
.in(w_inv_Conn[173]),
.out(w_inv_Conn[174])
);

inv_hvt U176(
.in(w_inv_Conn[174]),
.out(w_inv_Conn[175])
);

inv_hvt U177(
.in(w_inv_Conn[175]),
.out(w_inv_Conn[176])
);

inv_hvt U178(
.in(w_inv_Conn[176]),
.out(w_inv_Conn[177])
);

inv_hvt U179(
.in(w_inv_Conn[177]),
.out(w_inv_Conn[178])
);

inv_hvt U180(
.in(w_inv_Conn[178]),
.out(w_inv_Conn[179])
);

inv_hvt U181(
.in(w_inv_Conn[179]),
.out(w_inv_Conn[180])
);

inv_hvt U182(
.in(w_inv_Conn[180]),
.out(w_inv_Conn[181])
);

inv_hvt U183(
.in(w_inv_Conn[181]),
.out(w_inv_Conn[182])
);

inv_hvt U184(
.in(w_inv_Conn[182]),
.out(w_inv_Conn[183])
);

inv_hvt U185(
.in(w_inv_Conn[183]),
.out(w_inv_Conn[184])
);

inv_hvt U186(
.in(w_inv_Conn[184]),
.out(w_inv_Conn[185])
);

inv_hvt U187(
.in(w_inv_Conn[185]),
.out(w_inv_Conn[186])
);

inv_hvt U188(
.in(w_inv_Conn[186]),
.out(w_inv_Conn[187])
);

inv_hvt U189(
.in(w_inv_Conn[187]),
.out(w_inv_Conn[188])
);

inv_hvt U190(
.in(w_inv_Conn[188]),
.out(w_inv_Conn[189])
);

inv_hvt U191(
.in(w_inv_Conn[189]),
.out(w_inv_Conn[190])
);

inv_hvt U192(
.in(w_inv_Conn[190]),
.out(w_inv_Conn[191])
);

inv_hvt U193(
.in(w_inv_Conn[191]),
.out(w_inv_Conn[192])
);

inv_hvt U194(
.in(w_inv_Conn[192]),
.out(w_inv_Conn[193])
);

inv_hvt U195(
.in(w_inv_Conn[193]),
.out(w_inv_Conn[194])
);

inv_hvt U196(
.in(w_inv_Conn[194]),
.out(w_inv_Conn[195])
);

inv_hvt U197(
.in(w_inv_Conn[195]),
.out(w_inv_Conn[196])
);

inv_hvt U198(
.in(w_inv_Conn[196]),
.out(w_inv_Conn[197])
);

inv_hvt U199(
.in(w_inv_Conn[197]),
.out(w_inv_Conn[198])
);

inv_hvt U200(
.in(w_inv_Conn[198]),
.out(w_inv_Conn[199])
);

inv_hvt U201(
.in(w_inv_Conn[199]),
.out(w_inv_Conn[200])
);

inv_hvt U202(
.in(w_inv_Conn[200]),
.out(w_inv_Conn[201])
);

inv_hvt U203(
.in(w_inv_Conn[201]),
.out(w_inv_Conn[202])
);

inv_hvt U204(
.in(w_inv_Conn[202]),
.out(w_inv_Conn[203])
);

inv_hvt U205(
.in(w_inv_Conn[203]),
.out(w_inv_Conn[204])
);

inv_hvt U206(
.in(w_inv_Conn[204]),
.out(w_inv_Conn[205])
);

inv_hvt U207(
.in(w_inv_Conn[205]),
.out(w_inv_Conn[206])
);

inv_hvt U208(
.in(w_inv_Conn[206]),
.out(w_inv_Conn[207])
);

inv_hvt U209(
.in(w_inv_Conn[207]),
.out(w_inv_Conn[208])
);

inv_hvt U210(
.in(w_inv_Conn[208]),
.out(w_inv_Conn[209])
);

inv_hvt U211(
.in(w_inv_Conn[209]),
.out(w_inv_Conn[210])
);

inv_hvt U212(
.in(w_inv_Conn[210]),
.out(w_inv_Conn[211])
);

inv_hvt U213(
.in(w_inv_Conn[211]),
.out(w_inv_Conn[212])
);

inv_hvt U214(
.in(w_inv_Conn[212]),
.out(w_inv_Conn[213])
);

inv_hvt U215(
.in(w_inv_Conn[213]),
.out(w_inv_Conn[214])
);

inv_hvt U216(
.in(w_inv_Conn[214]),
.out(w_inv_Conn[215])
);

inv_hvt U217(
.in(w_inv_Conn[215]),
.out(w_inv_Conn[216])
);

inv_hvt U218(
.in(w_inv_Conn[216]),
.out(w_inv_Conn[217])
);

inv_hvt U219(
.in(w_inv_Conn[217]),
.out(w_inv_Conn[218])
);

inv_hvt U220(
.in(w_inv_Conn[218]),
.out(w_inv_Conn[219])
);

inv_hvt U221(
.in(w_inv_Conn[219]),
.out(w_inv_Conn[220])
);

inv_hvt U222(
.in(w_inv_Conn[220]),
.out(w_inv_Conn[221])
);

inv_hvt U223(
.in(w_inv_Conn[221]),
.out(w_inv_Conn[222])
);

inv_hvt U224(
.in(w_inv_Conn[222]),
.out(w_inv_Conn[223])
);

inv_hvt U225(
.in(w_inv_Conn[223]),
.out(w_inv_Conn[224])
);

inv_hvt U226(
.in(w_inv_Conn[224]),
.out(w_inv_Conn[225])
);

inv_hvt U227(
.in(w_inv_Conn[225]),
.out(w_inv_Conn[226])
);

inv_hvt U228(
.in(w_inv_Conn[226]),
.out(w_inv_Conn[227])
);

inv_hvt U229(
.in(w_inv_Conn[227]),
.out(w_inv_Conn[228])
);

inv_hvt U230(
.in(w_inv_Conn[228]),
.out(w_inv_Conn[229])
);

inv_hvt U231(
.in(w_inv_Conn[229]),
.out(w_inv_Conn[230])
);

inv_hvt U232(
.in(w_inv_Conn[230]),
.out(w_inv_Conn[231])
);

inv_hvt U233(
.in(w_inv_Conn[231]),
.out(w_inv_Conn[232])
);

inv_hvt U234(
.in(w_inv_Conn[232]),
.out(w_inv_Conn[233])
);

inv_hvt U235(
.in(w_inv_Conn[233]),
.out(w_inv_Conn[234])
);

inv_hvt U236(
.in(w_inv_Conn[234]),
.out(w_inv_Conn[235])
);

inv_hvt U237(
.in(w_inv_Conn[235]),
.out(w_inv_Conn[236])
);

inv_hvt U238(
.in(w_inv_Conn[236]),
.out(w_inv_Conn[237])
);

inv_hvt U239(
.in(w_inv_Conn[237]),
.out(w_inv_Conn[238])
);

inv_hvt U240(
.in(w_inv_Conn[238]),
.out(w_inv_Conn[239])
);

inv_hvt U241(
.in(w_inv_Conn[239]),
.out(w_inv_Conn[240])
);

inv_hvt U242(
.in(w_inv_Conn[240]),
.out(w_inv_Conn[241])
);

inv_hvt U243(
.in(w_inv_Conn[241]),
.out(w_inv_Conn[242])
);

inv_hvt U244(
.in(w_inv_Conn[242]),
.out(w_inv_Conn[243])
);

inv_hvt U245(
.in(w_inv_Conn[243]),
.out(w_inv_Conn[244])
);

inv_hvt U246(
.in(w_inv_Conn[244]),
.out(w_inv_Conn[245])
);

inv_hvt U247(
.in(w_inv_Conn[245]),
.out(w_inv_Conn[246])
);

inv_hvt U248(
.in(w_inv_Conn[246]),
.out(w_inv_Conn[247])
);

inv_hvt U249(
.in(w_inv_Conn[247]),
.out(w_inv_Conn[248])
);

inv_hvt U250(
.in(w_inv_Conn[248]),
.out(w_inv_Conn[249])
);

inv_hvt U251(
.in(w_inv_Conn[249]),
.out(w_inv_Conn[250])
);

inv_hvt U252(
.in(w_inv_Conn[250]),
.out(w_inv_Conn[251])
);

inv_hvt U253(
.in(w_inv_Conn[251]),
.out(w_inv_Conn[252])
);

inv_hvt U254(
.in(w_inv_Conn[252]),
.out(w_inv_Conn[253])
);

inv_hvt U255(
.in(w_inv_Conn[253]),
.out(w_inv_Conn[254])
);

inv_hvt U256(
.in(w_inv_Conn[254]),
.out(w_inv_Conn[255])
);

inv_hvt U257(
.in(w_inv_Conn[255]),
.out(w_inv_Conn[256])
);

inv_hvt U258(
.in(w_inv_Conn[256]),
.out(w_inv_Conn[257])
);

inv_hvt U259(
.in(w_inv_Conn[257]),
.out(w_inv_Conn[258])
);

inv_hvt U260(
.in(w_inv_Conn[258]),
.out(w_inv_Conn[259])
);

inv_hvt U261(
.in(w_inv_Conn[259]),
.out(w_inv_Conn[260])
);

inv_hvt U262(
.in(w_inv_Conn[260]),
.out(w_inv_Conn[261])
);

inv_hvt U263(
.in(w_inv_Conn[261]),
.out(w_inv_Conn[262])
);

inv_hvt U264(
.in(w_inv_Conn[262]),
.out(w_inv_Conn[263])
);

inv_hvt U265(
.in(w_inv_Conn[263]),
.out(w_inv_Conn[264])
);

inv_hvt U266(
.in(w_inv_Conn[264]),
.out(w_inv_Conn[265])
);

inv_hvt U267(
.in(w_inv_Conn[265]),
.out(w_inv_Conn[266])
);

inv_hvt U268(
.in(w_inv_Conn[266]),
.out(w_inv_Conn[267])
);

inv_hvt U269(
.in(w_inv_Conn[267]),
.out(w_inv_Conn[268])
);

inv_hvt U270(
.in(w_inv_Conn[268]),
.out(w_inv_Conn[269])
);

inv_hvt U271(
.in(w_inv_Conn[269]),
.out(w_inv_Conn[270])
);

inv_hvt U272(
.in(w_inv_Conn[270]),
.out(w_inv_Conn[271])
);

inv_hvt U273(
.in(w_inv_Conn[271]),
.out(w_inv_Conn[272])
);

inv_hvt U274(
.in(w_inv_Conn[272]),
.out(w_inv_Conn[273])
);

inv_hvt U275(
.in(w_inv_Conn[273]),
.out(w_inv_Conn[274])
);

inv_hvt U276(
.in(w_inv_Conn[274]),
.out(w_inv_Conn[275])
);

inv_hvt U277(
.in(w_inv_Conn[275]),
.out(w_inv_Conn[276])
);

inv_hvt U278(
.in(w_inv_Conn[276]),
.out(w_inv_Conn[277])
);

inv_hvt U279(
.in(w_inv_Conn[277]),
.out(w_inv_Conn[278])
);

inv_hvt U280(
.in(w_inv_Conn[278]),
.out(w_inv_Conn[279])
);

inv_hvt U281(
.in(w_inv_Conn[279]),
.out(w_inv_Conn[280])
);

inv_hvt U282(
.in(w_inv_Conn[280]),
.out(w_inv_Conn[281])
);

inv_hvt U283(
.in(w_inv_Conn[281]),
.out(w_inv_Conn[282])
);

inv_hvt U284(
.in(w_inv_Conn[282]),
.out(w_inv_Conn[283])
);

inv_hvt U285(
.in(w_inv_Conn[283]),
.out(w_inv_Conn[284])
);

inv_hvt U286(
.in(w_inv_Conn[284]),
.out(w_inv_Conn[285])
);

inv_hvt U287(
.in(w_inv_Conn[285]),
.out(w_inv_Conn[286])
);

inv_hvt U288(
.in(w_inv_Conn[286]),
.out(w_inv_Conn[287])
);

inv_hvt U289(
.in(w_inv_Conn[287]),
.out(w_inv_Conn[288])
);

inv_hvt U290(
.in(w_inv_Conn[288]),
.out(w_inv_Conn[289])
);

inv_hvt U291(
.in(w_inv_Conn[289]),
.out(w_inv_Conn[290])
);

inv_hvt U292(
.in(w_inv_Conn[290]),
.out(w_inv_Conn[291])
);

inv_hvt U293(
.in(w_inv_Conn[291]),
.out(w_inv_Conn[292])
);

inv_hvt U294(
.in(w_inv_Conn[292]),
.out(w_inv_Conn[293])
);

inv_hvt U295(
.in(w_inv_Conn[293]),
.out(w_inv_Conn[294])
);

inv_hvt U296(
.in(w_inv_Conn[294]),
.out(w_inv_Conn[295])
);

inv_hvt U297(
.in(w_inv_Conn[295]),
.out(w_inv_Conn[296])
);

inv_hvt U298(
.in(w_inv_Conn[296]),
.out(w_inv_Conn[297])
);

inv_hvt U299(
.in(w_inv_Conn[297]),
.out(w_inv_Conn[298])
);

inv_hvt U300(
.in(w_inv_Conn[298]),
.out(w_inv_Conn[299])
);

inv_hvt U301(
.in(w_inv_Conn[299]),
.out(w_inv_Conn[300])
);

inv_hvt U302(
.in(w_inv_Conn[300]),
.out(w_inv_Conn[301])
);

inv_hvt U303(
.in(w_inv_Conn[301]),
.out(w_inv_Conn[302])
);

inv_hvt U304(
.in(w_inv_Conn[302]),
.out(w_inv_Conn[303])
);

inv_hvt U305(
.in(w_inv_Conn[303]),
.out(w_inv_Conn[304])
);

inv_hvt U306(
.in(w_inv_Conn[304]),
.out(w_inv_Conn[305])
);

inv_hvt U307(
.in(w_inv_Conn[305]),
.out(w_inv_Conn[306])
);

inv_hvt U308(
.in(w_inv_Conn[306]),
.out(w_inv_Conn[307])
);

inv_hvt U309(
.in(w_inv_Conn[307]),
.out(w_inv_Conn[308])
);

inv_hvt U310(
.in(w_inv_Conn[308]),
.out(w_inv_Conn[309])
);

inv_hvt U311(
.in(w_inv_Conn[309]),
.out(w_inv_Conn[310])
);

inv_hvt U312(
.in(w_inv_Conn[310]),
.out(w_inv_Conn[311])
);

inv_hvt U313(
.in(w_inv_Conn[311]),
.out(w_inv_Conn[312])
);

inv_hvt U314(
.in(w_inv_Conn[312]),
.out(w_inv_Conn[313])
);

inv_hvt U315(
.in(w_inv_Conn[313]),
.out(w_inv_Conn[314])
);

inv_hvt U316(
.in(w_inv_Conn[314]),
.out(w_inv_Conn[315])
);

inv_hvt U317(
.in(w_inv_Conn[315]),
.out(w_inv_Conn[316])
);

inv_hvt U318(
.in(w_inv_Conn[316]),
.out(w_inv_Conn[317])
);

inv_hvt U319(
.in(w_inv_Conn[317]),
.out(w_inv_Conn[318])
);

inv_hvt U320(
.in(w_inv_Conn[318]),
.out(w_inv_Conn[319])
);

inv_hvt U321(
.in(w_inv_Conn[319]),
.out(w_inv_Conn[320])
);

inv_hvt U322(
.in(w_inv_Conn[320]),
.out(w_inv_Conn[321])
);

inv_hvt U323(
.in(w_inv_Conn[321]),
.out(w_inv_Conn[322])
);

inv_hvt U324(
.in(w_inv_Conn[322]),
.out(w_inv_Conn[323])
);

inv_hvt U325(
.in(w_inv_Conn[323]),
.out(w_inv_Conn[324])
);

inv_hvt U326(
.in(w_inv_Conn[324]),
.out(w_inv_Conn[325])
);

inv_hvt U327(
.in(w_inv_Conn[325]),
.out(w_inv_Conn[326])
);

inv_hvt U328(
.in(w_inv_Conn[326]),
.out(w_inv_Conn[327])
);

inv_hvt U329(
.in(w_inv_Conn[327]),
.out(w_inv_Conn[328])
);

inv_hvt U330(
.in(w_inv_Conn[328]),
.out(w_inv_Conn[329])
);

inv_hvt U331(
.in(w_inv_Conn[329]),
.out(w_inv_Conn[330])
);

inv_hvt U332(
.in(w_inv_Conn[330]),
.out(w_inv_Conn[331])
);

inv_hvt U333(
.in(w_inv_Conn[331]),
.out(w_inv_Conn[332])
);

inv_hvt U334(
.in(w_inv_Conn[332]),
.out(w_inv_Conn[333])
);

inv_hvt U335(
.in(w_inv_Conn[333]),
.out(w_inv_Conn[334])
);

inv_hvt U336(
.in(w_inv_Conn[334]),
.out(w_inv_Conn[335])
);

inv_hvt U337(
.in(w_inv_Conn[335]),
.out(w_inv_Conn[336])
);

inv_hvt U338(
.in(w_inv_Conn[336]),
.out(w_inv_Conn[337])
);

inv_hvt U339(
.in(w_inv_Conn[337]),
.out(w_inv_Conn[338])
);

inv_hvt U340(
.in(w_inv_Conn[338]),
.out(w_inv_Conn[339])
);

inv_hvt U341(
.in(w_inv_Conn[339]),
.out(w_inv_Conn[340])
);

inv_hvt U342(
.in(w_inv_Conn[340]),
.out(w_inv_Conn[341])
);

inv_hvt U343(
.in(w_inv_Conn[341]),
.out(w_inv_Conn[342])
);

inv_hvt U344(
.in(w_inv_Conn[342]),
.out(w_inv_Conn[343])
);

inv_hvt U345(
.in(w_inv_Conn[343]),
.out(w_inv_Conn[344])
);

inv_hvt U346(
.in(w_inv_Conn[344]),
.out(w_inv_Conn[345])
);

inv_hvt U347(
.in(w_inv_Conn[345]),
.out(w_inv_Conn[346])
);

inv_hvt U348(
.in(w_inv_Conn[346]),
.out(w_inv_Conn[347])
);

inv_hvt U349(
.in(w_inv_Conn[347]),
.out(w_inv_Conn[348])
);

inv_hvt U350(
.in(w_inv_Conn[348]),
.out(w_inv_Conn[349])
);

inv_hvt U351(
.in(w_inv_Conn[349]),
.out(w_inv_Conn[350])
);

inv_hvt U352(
.in(w_inv_Conn[350]),
.out(w_inv_Conn[351])
);

inv_hvt U353(
.in(w_inv_Conn[351]),
.out(w_inv_Conn[352])
);

inv_hvt U354(
.in(w_inv_Conn[352]),
.out(w_inv_Conn[353])
);

inv_hvt U355(
.in(w_inv_Conn[353]),
.out(w_inv_Conn[354])
);

inv_hvt U356(
.in(w_inv_Conn[354]),
.out(w_inv_Conn[355])
);

inv_hvt U357(
.in(w_inv_Conn[355]),
.out(w_inv_Conn[356])
);

inv_hvt U358(
.in(w_inv_Conn[356]),
.out(w_inv_Conn[357])
);

inv_hvt U359(
.in(w_inv_Conn[357]),
.out(w_inv_Conn[358])
);

inv_hvt U360(
.in(w_inv_Conn[358]),
.out(w_inv_Conn[359])
);

inv_hvt U361(
.in(w_inv_Conn[359]),
.out(w_inv_Conn[360])
);

inv_hvt U362(
.in(w_inv_Conn[360]),
.out(w_inv_Conn[361])
);

inv_hvt U363(
.in(w_inv_Conn[361]),
.out(w_inv_Conn[362])
);

inv_hvt U364(
.in(w_inv_Conn[362]),
.out(w_inv_Conn[363])
);

inv_hvt U365(
.in(w_inv_Conn[363]),
.out(w_inv_Conn[364])
);

inv_hvt U366(
.in(w_inv_Conn[364]),
.out(w_inv_Conn[365])
);

inv_hvt U367(
.in(w_inv_Conn[365]),
.out(w_inv_Conn[366])
);

inv_hvt U368(
.in(w_inv_Conn[366]),
.out(w_inv_Conn[367])
);

inv_hvt U369(
.in(w_inv_Conn[367]),
.out(w_inv_Conn[368])
);

inv_hvt U370(
.in(w_inv_Conn[368]),
.out(w_inv_Conn[369])
);

inv_hvt U371(
.in(w_inv_Conn[369]),
.out(w_inv_Conn[370])
);

inv_hvt U372(
.in(w_inv_Conn[370]),
.out(w_inv_Conn[371])
);

inv_hvt U373(
.in(w_inv_Conn[371]),
.out(w_inv_Conn[372])
);

inv_hvt U374(
.in(w_inv_Conn[372]),
.out(w_inv_Conn[373])
);

inv_hvt U375(
.in(w_inv_Conn[373]),
.out(w_inv_Conn[374])
);

inv_hvt U376(
.in(w_inv_Conn[374]),
.out(w_inv_Conn[375])
);

inv_hvt U377(
.in(w_inv_Conn[375]),
.out(w_inv_Conn[376])
);

inv_hvt U378(
.in(w_inv_Conn[376]),
.out(w_inv_Conn[377])
);

inv_hvt U379(
.in(w_inv_Conn[377]),
.out(w_inv_Conn[378])
);

inv_hvt U380(
.in(w_inv_Conn[378]),
.out(w_inv_Conn[379])
);

inv_hvt U381(
.in(w_inv_Conn[379]),
.out(w_inv_Conn[380])
);

inv_hvt U382(
.in(w_inv_Conn[380]),
.out(w_inv_Conn[381])
);

endmodule

module inv_hvt(
input wire in,
output wire out
); 

// RTL for inverter with imaginary delay numbers
// always@(in)
assign #40 out = ~in;

endmodule 

