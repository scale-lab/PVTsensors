// Generated for: spectre
// Design view name: schematic
simulator lang=spectre
global 0
parameters DLYD=90n vdd=0.8 wireopt=9
// insest target netlist here
I0 (RO_EN net016 RO_OUT\<2\> RO_Sel\<2\> VDD VSS) \
        Module_inv_slvt_256bits
I3 (RO_EN net09 RO_OUT\<3\> RO_Sel\<3\> VDD VSS) \
        Module_nand4_lvt_128bits_V2
I1 (RO_EN net011 RO_OUT\<1\> RO_Sel\<1\> VDD VSS) \
        Module_inv_rvt_256bits_V2
I4 (RO_EN net013 RO_OUT\<4\> RO_Sel\<4\> VDD VSS) \
        Module_nand4_rvt_128bits_V2
I5 (RO_EN net08 RO_OUT\<5\> RO_Sel\<5\> VDD VSS) \
        Module_nand4_slvt_128bits
I6 (RO_EN RO_OUT\<6\> RO_Sel\<6\> VDD VSS) Module_RO_inv_eg
I7 (RO_EN RO_OUT\<7\> RO_Sel\<7\> VDD VSS) Module_RO_inv_egu
I8 (RO_EN RO_OUT\<8\> RO_Sel\<8\> VDD VSS) Module_RO_inv_egv
I9 (RO_OUT\<0\> RO_OUT\<1\> RO_OUT\<2\> RO_OUT\<3\> RO_OUT\<4\> \
        RO_OUT\<5\> RO_OUT\<6\> RO_OUT\<7\> RO_OUT\<8\> net04 \
        MUX_Sel\<1\> MUX_Sel\<2\> MUX_Sel\<3\> MUX_Sel\<4\> VDD VSS) \
        Module_Mux
I10 (net04 TXData\<0\> TXData\<1\> TXData\<2\> TXData\<3\> TXData\<4\> \
        TXData\<5\> TXData\<6\> TXData\<7\> TXData\<8\> TXData\<9\> \
        TXData\<10\> TXData\<11\> TXData\<12\> TXData\<13\> \
        TXData\<14\> TXData\<15\> ENIN RO_EN RSTHIGH TDC_Cap TXDVD VDD \
        VSS) Module_RippleCnt_D
I11 (RSTHIGH RXData\<0\> RXData\<1\> RXData\<2\> RXData\<3\> \
        RXData\<4\> RXData\<5\> RXData\<6\> RXData\<7\> RXData\<8\> \
        RXData\<9\> RXData\<10\> RXData\<11\> RXData\<12\> RXData\<13\> \
        RXData\<14\> RXData\<15\> RXData\<16\> RXData\<17\> \
        RXData\<18\> RXData\<19\> RXData\<20\> RXData\<21\> \
        RXData\<22\> RXData\<23\> RXData\<24\> RXData\<25\> \
        RXData\<26\> RXData\<27\> RXData\<28\> RXData\<29\> \
        RXData\<30\> RXData\<31\> RXData\<32\> RXData\<33\> \
        RXData\<34\> RXData\<35\> RXData\<36\> RXData\<37\> \
        RXData\<38\> RXData\<39\> RXData\<40\> RXData\<41\> \
        RXData\<42\> RXData\<43\> RXData\<44\> RXData\<45\> \
        RXData\<46\> RXData\<47\> RXData\<48\> RXData\<49\> \
        RXData\<50\> RXData\<51\> RXData\<52\> RXData\<53\> \
        RXData\<54\> RXData\<55\> RXData\<56\> RXData\<57\> \
        RXData\<58\> RXData\<59\> RXData\<60\> RXData\<61\> \
        RXData\<62\> RXData\<63\> RXData\<64\> RXData\<65\> \
        RXData\<66\> RXData\<67\> RXData\<68\> RXData\<69\> \
        RXData\<70\> RXData\<71\> RXData\<72\> RXData\<73\> \
        RXData\<74\> RXData\<75\> RXData\<76\> RXData\<77\> \
        RXData\<78\> RXData\<79\> SHREGIN MISO SPICLK SPICS TXData\<0\> \
        TXData\<1\> TXData\<2\> TXData\<3\> TXData\<4\> TXData\<5\> \
        TXData\<6\> TXData\<7\> TXData\<8\> TXData\<9\> TXData\<10\> \
        TXData\<11\> TXData\<12\> TXData\<13\> TXData\<14\> \
        TXData\<15\> TXData\<16\> TXData\<17\> TXData\<18\> \
        TXData\<19\> TXData\<20\> TXData\<21\> TXData\<22\> \
        TXData\<23\> TXData\<24\> TXData\<25\> TXData\<26\> \
        TXData\<27\> TXData\<28\> TXData\<29\> TXData\<30\> \
        TXData\<31\> TXData\<32\> TXData\<33\> TXData\<34\> \
        TXData\<35\> TXData\<36\> TXData\<37\> TXData\<38\> \
        TXData\<39\> TXData\<40\> TXData\<41\> TXData\<42\> \
        TXData\<43\> TXData\<44\> TXData\<45\> TXData\<46\> \
        TXData\<47\> TXData\<48\> TXData\<49\> TXData\<50\> \
        TXData\<51\> TXData\<52\> TXData\<53\> TXData\<54\> \
        TXData\<55\> TXData\<56\> TXData\<57\> TXData\<58\> \
        TXData\<59\> TXData\<60\> TXData\<61\> TXData\<62\> \
        TXData\<63\> TXData\<64\> TXData\<65\> TXData\<66\> \
        TXData\<67\> TXData\<68\> TXData\<69\> TXData\<70\> \
        TXData\<71\> TXData\<72\> TXData\<73\> TXData\<74\> \
        TXData\<75\> TXData\<76\> TXData\<77\> TXData\<78\> \
        TXData\<79\> TXDVA TXDVD VDD VSS) Module_Shreg_80bit_AD_V2
V19 (MUX_Sel\<4\> 0) vsource dc=0 type=dc
V18 (MUX_Sel\<3\> 0) vsource dc=0 type=dc
V17 (MUX_Sel\<2\> 0) vsource dc=0 type=dc
V16 (MUX_Sel\<1\> 0) vsource dc=0 type=dc
V15 (RO_Sel\<8\> 0) vsource dc=0 type=dc
V14 (RO_Sel\<7\> 0) vsource dc=0 type=dc
V13 (RO_Sel\<6\> 0) vsource dc=0 type=dc
V12 (RO_Sel\<5\> 0) vsource dc=0 type=dc
V10 (RO_Sel\<4\> 0) vsource dc=0 type=dc
V9 (RO_Sel\<3\> 0) vsource dc=0 type=dc
V8 (RO_Sel\<2\> 0) vsource dc=0 type=dc
V7 (RO_Sel\<1\> 0) vsource dc=0 type=dc
V4 (RO_Sel\<0\> 0) vsource dc=vdd type=dc
V22 (VTMUX 0) vsource dc=vdd type=dc
V20\<0\> (TXData\<64\> 0) vsource dc=vdd type=dc
V20\<1\> (TXData\<65\> 0) vsource dc=vdd type=dc
V20\<2\> (TXData\<66\> 0) vsource dc=vdd type=dc
V20\<3\> (TXData\<67\> 0) vsource dc=vdd type=dc
V20\<4\> (TXData\<68\> 0) vsource dc=vdd type=dc
V20\<5\> (TXData\<69\> 0) vsource dc=vdd type=dc
V20\<6\> (TXData\<70\> 0) vsource dc=vdd type=dc
V20\<7\> (TXData\<71\> 0) vsource dc=vdd type=dc
V20\<8\> (TXData\<72\> 0) vsource dc=vdd type=dc
V20\<9\> (TXData\<73\> 0) vsource dc=vdd type=dc
V20\<10\> (TXData\<74\> 0) vsource dc=vdd type=dc
V20\<11\> (TXData\<75\> 0) vsource dc=vdd type=dc
V20\<12\> (TXData\<76\> 0) vsource dc=vdd type=dc
V20\<13\> (TXData\<77\> 0) vsource dc=vdd type=dc
V20\<14\> (TXData\<78\> 0) vsource dc=vdd type=dc
V20\<15\> (TXData\<79\> 0) vsource dc=vdd type=dc
V3 (VDD 0) vsource dc=vdd type=dc
V0 (VSS 0) vsource dc=0 type=dc
V11 (SHREGIN 0) vsource type=pulse val0=0 val1=vdd period=1 delay=DLYD + 185n \
         rise=10p fall=10p
V5 (SPICS 0) vsource type=pulse val0=vdd val1=0 period=255n delay=DLYD + 87n \
         rise=10p fall=10p
V6 (RSTHIGH 0) vsource type=pulse val0=vdd val1=0 period=1 delay=10n \
        fall=10p
V1 (SPICLK 0) vsource type=pulse val0=0 val1=vdd period=2n delay=DLYD
V24 (ACLK 0) vsource type=pulse val0=0 val1=vdd period=2n delay=0
V23 (CNTWIN 0) vsource type=pulse val0=0 val1=vdd period=20n delay=1n
V2 (ENIN 0) vsource type=pulse val0=0 val1=vdd period=10n delay=1n
I14 (TDC_Cap TXData\<16\> TXData\<17\> TXData\<18\> TXData\<19\> \
        TXData\<20\> TXData\<21\> TXData\<22\> TXData\<23\> \
        TXData\<24\> TXData\<25\> TXData\<26\> TXData\<27\> \
        TXData\<28\> TXData\<29\> TXData\<30\> TXData\<31\> \
        TXData\<32\> TXData\<33\> TXData\<34\> TXData\<35\> \
        TXData\<36\> TXData\<37\> TXData\<38\> TXData\<39\> \
        TXData\<40\> TXData\<41\> TXData\<42\> TXData\<43\> \
        TXData\<44\> TXData\<45\> TXData\<46\> TXData\<47\> \
        TXData\<48\> TXData\<49\> TXData\<50\> TXData\<51\> \
        TXData\<52\> TXData\<53\> TXData\<54\> TXData\<55\> \
        TXData\<56\> TXData\<57\> TXData\<58\> TXData\<59\> \
        TXData\<60\> TXData\<61\> TXData\<62\> TXData\<63\> net04 \
        TDC_out RSTHIGH VDD VSS) Module_TDC_48bit
I22 (TXData\<64\> TXData\<65\> TXData\<66\> TXData\<67\> TXData\<68\> \
        TXData\<69\> TXData\<70\> TXData\<71\> TXData\<72\> \
        TXData\<73\> TXData\<74\> TXData\<75\> TXData\<76\> \
        TXData\<77\> TXData\<78\> TXData\<79\> CNTWIN RSTHIGH ACLK \
        TXDVA ACLK VDD VSS VTMUX) Module_RippleCnt_A_V2
I2 (RO_EN net010 RO_OUT\<0\> RO_Sel\<0\> VDD VSS) \
        Module_inv_lvt_256bits_V2
simulatorOptions options reltol=1e-3 vabstol=1e-6 iabstol=1e-12 temp=100.0 \
    tnom=27 scalem=1.0 scale=1.0 gmin=1e-12 rforce=1 maxnotes=5 maxwarns=5 \
    digits=5 cols=80 pivrel=1e-3 sensfile="../psf/sens.output" \
    checklimitdest=psf 
modelParameter info what=models where=rawfile
element info what=inst where=rawfile
outputParameter info what=output where=rawfile
designParamVals info what=parameters where=rawfile
primitives info what=primitives where=rawfile
subckts info what=subckts where=rawfile
save RO_EN RO_Sel\<0\> RO_Sel\<1\> RO_Sel\<2\> RO_Sel\<3\> RO_Sel\<4\> \
    RO_Sel\<5\> RO_Sel\<6\> RO_Sel\<7\> RO_Sel\<8\> MUX_Sel\<1\> \
    MUX_Sel\<2\> MUX_Sel\<3\> MUX_Sel\<4\> RO_OUT\<0\> RO_OUT\<1\> \
    RO_OUT\<2\> RO_OUT\<3\> RO_OUT\<4\> RO_OUT\<5\> RO_OUT\<6\> \
    RO_OUT\<7\> RO_OUT\<8\> RSTHIGH TXData\<0\> TXData\<1\> TXData\<2\> \
    TXData\<3\> TXData\<4\> TXData\<5\> TXData\<6\> TXData\<7\> \
    TXData\<8\> TXData\<9\> TXData\<10\> TXData\<11\> TXData\<12\> \
    TXData\<13\> TXData\<14\> TXData\<15\> TXData\<16\> TXData\<17\> \
    TXData\<18\> TXData\<19\> TXData\<20\> TXData\<21\> TXData\<22\> \
    TXData\<23\> TXData\<24\> TXData\<25\> TXData\<26\> TXData\<27\> \
    TXData\<28\> TXData\<29\> TXData\<30\> TXData\<31\> TXData\<32\> \
    TXData\<33\> TXData\<34\> TXData\<35\> TXData\<36\> TXData\<37\> \
    TXData\<38\> TXData\<39\> TXData\<40\> TXData\<41\> TXData\<42\> \
    TXData\<43\> TXData\<44\> TXData\<45\> TXData\<46\> TXData\<47\> \
    TXData\<48\> TXData\<49\> TXData\<50\> TXData\<51\> TXData\<52\> \
    TXData\<53\> TXData\<54\> TXData\<55\> TXData\<56\> TXData\<57\> \
    TXData\<58\> TXData\<59\> TXData\<60\> TXData\<61\> TXData\<62\> \
    TXData\<63\> TXData\<64\> TXData\<65\> TXData\<66\> TXData\<67\> \
    TXData\<68\> TXData\<69\> TXData\<70\> TXData\<71\> TXData\<72\> \
    TXData\<73\> TXData\<74\> TXData\<75\> TXData\<76\> TXData\<77\> \
    TXData\<78\> TXData\<79\> TDC_Cap TXDVD TDC_out RXData\<0\> \
    RXData\<1\> RXData\<2\> RXData\<3\> RXData\<4\> RXData\<5\> \
    RXData\<6\> RXData\<7\> RXData\<8\> RXData\<9\> RXData\<10\> \
    RXData\<11\> RXData\<12\> RXData\<13\> RXData\<14\> RXData\<15\> \
    RXData\<16\> RXData\<17\> RXData\<18\> RXData\<19\> RXData\<20\> \
    RXData\<21\> RXData\<22\> RXData\<23\> RXData\<24\> RXData\<25\> \
    RXData\<26\> RXData\<27\> RXData\<28\> RXData\<29\> RXData\<30\> \
    RXData\<31\> RXData\<32\> RXData\<33\> RXData\<34\> RXData\<35\> \
    RXData\<36\> RXData\<37\> RXData\<38\> RXData\<39\> RXData\<40\> \
    RXData\<41\> RXData\<42\> RXData\<43\> RXData\<44\> RXData\<45\> \
    RXData\<46\> RXData\<47\> RXData\<48\> RXData\<49\> RXData\<50\> \
    RXData\<51\> RXData\<52\> RXData\<53\> RXData\<54\> RXData\<55\> \
    RXData\<56\> RXData\<57\> RXData\<58\> RXData\<59\> RXData\<60\> \
    RXData\<61\> RXData\<62\> RXData\<63\> RXData\<64\> RXData\<65\> \
    RXData\<66\> RXData\<67\> RXData\<68\> RXData\<69\> RXData\<70\> \
    RXData\<71\> RXData\<72\> RXData\<73\> RXData\<74\> RXData\<75\> \
    RXData\<76\> RXData\<77\> RXData\<78\> RXData\<79\> MISO 
saveOptions options save=allpub
