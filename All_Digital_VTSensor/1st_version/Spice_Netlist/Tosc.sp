
simulator lang=spectre
global 0
include "$SPECTRE_MODEL_PATH/12LP_Spectre.lib" section=tt
parameters wireopt=9

subckt Module_Tosc_diode_WLayout GND T_VCTRL
    D2\<1\> (T_VCTRL GND) area=0.07p 
    D2\<2\> (T_VCTRL GND) area=0.07p 
    D2\<3\> (T_VCTRL GND) area=0.07p 
    D2\<4\> (T_VCTRL GND) area=0.07p 
    D2\<5\> (T_VCTRL GND) area=0.07p 
    D2\<6\> (T_VCTRL GND) area=0.07p 
    D2\<7\> (T_VCTRL GND) area=0.07p 
    D2\<8\> (T_VCTRL GND) area=0.07p 
    D2\<9\> (T_VCTRL GND) area=0.07p 
    D2\<10\> (T_VCTRL GND) area=0.07p 
    D2\<11\> (T_VCTRL GND) area=0.07p 
    D2\<12\> (T_VCTRL GND) area=0.07p 
    D2\<13\> (T_VCTRL GND) area=0.07p 
    D2\<14\> (T_VCTRL GND) area=0.07p 
    D2\<15\> (T_VCTRL GND) area=0.07p 
    D2\<16\> (T_VCTRL GND) area=0.07p 
    D2\<17\> (T_VCTRL GND) area=0.07p 
    D2\<18\> (T_VCTRL GND) area=0.07p 
    D2\<19\> (T_VCTRL GND) area=0.07p 
    D2\<20\> (T_VCTRL GND) area=0.07p 
    D2\<21\> (T_VCTRL GND) area=0.07p 
    D2\<22\> (T_VCTRL GND) area=0.07p 
    D2\<23\> (T_VCTRL GND) area=0.07p 
    D2\<24\> (T_VCTRL GND) area=0.07p 
    D2\<25\> (T_VCTRL GND) area=0.07p 
    D2\<26\> (T_VCTRL GND) area=0.07p 
    D2\<27\> (T_VCTRL GND) area=0.07p 
    D2\<28\> (T_VCTRL GND) area=0.07p 
    D2\<29\> (T_VCTRL GND) area=0.07p 
    D2\<30\> (T_VCTRL GND) area=0.07p 
    D2\<31\> (T_VCTRL GND) area=0.07p 
    D2\<32\> (T_VCTRL GND) area=0.07p 
    D2\<33\> (T_VCTRL GND) area=0.07p 
    D2\<34\> (T_VCTRL GND) area=0.07p 
    D2\<35\> (T_VCTRL GND) area=0.07p 
    D2\<36\> (T_VCTRL GND) area=0.07p 
    D2\<37\> (T_VCTRL GND) area=0.07p 
    D2\<38\> (T_VCTRL GND) area=0.07p 
    D2\<39\> (T_VCTRL GND) area=0.07p 
    D2\<40\> (T_VCTRL GND) area=0.07p 
    D2\<41\> (T_VCTRL GND) area=0.07p 
    D2\<42\> (T_VCTRL GND) area=0.07p 
    D2\<43\> (T_VCTRL GND) area=0.07p 
    D2\<44\> (T_VCTRL GND) area=0.07p 
    D2\<45\> (T_VCTRL GND) area=0.07p 
    D2\<46\> (T_VCTRL GND) area=0.07p 
    D2\<47\> (T_VCTRL GND) area=0.07p 
    D2\<48\> (T_VCTRL GND) area=0.07p 
    D2\<49\> (T_VCTRL GND) area=0.07p 
    D2\<50\> (T_VCTRL GND) area=0.07p 
    D2\<51\> (T_VCTRL GND) area=0.07p 
    D2\<52\> (T_VCTRL GND) area=0.07p 
    D2\<53\> (T_VCTRL GND) area=0.07p 
    D2\<54\> (T_VCTRL GND) area=0.07p 
    D2\<55\> (T_VCTRL GND) area=0.07p 
    D2\<56\> (T_VCTRL GND) area=0.07p 
    D2\<57\> (T_VCTRL GND) area=0.07p 
    D2\<58\> (T_VCTRL GND) area=0.07p 
    D2\<59\> (T_VCTRL GND) area=0.07p 
    D2\<60\> (T_VCTRL GND) area=0.07p 
    D2\<61\> (T_VCTRL GND) area=0.07p 
    D2\<62\> (T_VCTRL GND) area=0.07p 
    D2\<63\> (T_VCTRL GND) area=0.07p 
    D2\<64\> (T_VCTRL GND) area=0.07p 
    D2\<65\> (T_VCTRL GND) area=0.07p 
    D2\<66\> (T_VCTRL GND) area=0.07p 
    D2\<67\> (T_VCTRL GND) area=0.07p 
    D2\<68\> (T_VCTRL GND) area=0.07p 
    D2\<69\> (T_VCTRL GND) area=0.07p 
    D2\<70\> (T_VCTRL GND) area=0.07p 
    D2\<71\> (T_VCTRL GND) area=0.07p 
    D2\<72\> (T_VCTRL GND) area=0.07p 
    D2\<73\> (T_VCTRL GND) area=0.07p 
    D2\<74\> (T_VCTRL GND) area=0.07p 
    D2\<75\> (T_VCTRL GND) area=0.07p 
    D2\<76\> (T_VCTRL GND) area=0.07p 
    D2\<77\> (T_VCTRL GND) area=0.07p 
    D2\<78\> (T_VCTRL GND) area=0.07p 
    D2\<79\> (T_VCTRL GND) area=0.07p 
    D2\<80\> (T_VCTRL GND) area=0.07p 
    D2\<81\> (T_VCTRL GND) area=0.07p 
    D2\<82\> (T_VCTRL GND) area=0.07p 
    D2\<83\> (T_VCTRL GND) area=0.07p 
    D2\<84\> (T_VCTRL GND) area=0.07p 
    D2\<85\> (T_VCTRL GND) area=0.07p 
    D2\<86\> (T_VCTRL GND) area=0.07p 
    D2\<87\> (T_VCTRL GND) area=0.07p 
    D2\<88\> (T_VCTRL GND) area=0.07p 
    D2\<89\> (T_VCTRL GND) area=0.07p 
    D2\<90\> (T_VCTRL GND) area=0.07p 
    D2\<91\> (T_VCTRL GND) area=0.07p 
    D2\<92\> (T_VCTRL GND) area=0.07p 
    D2\<93\> (T_VCTRL GND) area=0.07p 
    D2\<94\> (T_VCTRL GND) area=0.07p 
    D2\<95\> (T_VCTRL GND) area=0.07p 
    D2\<96\> (T_VCTRL GND) area=0.07p 
    D2\<97\> (T_VCTRL GND) area=0.07p 
    D2\<98\> (T_VCTRL GND) area=0.07p 
    D2\<99\> (T_VCTRL GND) area=0.07p 
    D2\<100\> (T_VCTRL GND) area=0.07p 

    D2\<101\> (T_VCTRL GND) area=0.07p 

    D2\<102\> (T_VCTRL GND) area=0.07p 

    D2\<103\> (T_VCTRL GND) area=0.07p 

    D2\<104\> (T_VCTRL GND) area=0.07p 

    D2\<105\> (T_VCTRL GND) area=0.07p 

    D2\<106\> (T_VCTRL GND) area=0.07p 

    D2\<107\> (T_VCTRL GND) area=0.07p 

    D2\<108\> (T_VCTRL GND) area=0.07p 

    D2\<109\> (T_VCTRL GND) area=0.07p 

    D2\<110\> (T_VCTRL GND) area=0.07p 

    D2\<111\> (T_VCTRL GND) area=0.07p 

    D2\<112\> (T_VCTRL GND) area=0.07p 

    D2\<113\> (T_VCTRL GND) area=0.07p 

    D2\<114\> (T_VCTRL GND) area=0.07p 

    D2\<115\> (T_VCTRL GND) area=0.07p 

    D2\<116\> (T_VCTRL GND) area=0.07p 

    D2\<117\> (T_VCTRL GND) area=0.07p 

    D2\<118\> (T_VCTRL GND) area=0.07p 

    D2\<119\> (T_VCTRL GND) area=0.07p 

    D2\<120\> (T_VCTRL GND) area=0.07p 

    D2\<121\> (T_VCTRL GND) area=0.07p 

    D2\<122\> (T_VCTRL GND) area=0.07p 

    D2\<123\> (T_VCTRL GND) area=0.07p 

    D2\<124\> (T_VCTRL GND) area=0.07p 

    D2\<125\> (T_VCTRL GND) area=0.07p 

    D2\<126\> (T_VCTRL GND) area=0.07p 

    D2\<127\> (T_VCTRL GND) area=0.07p 

    D2\<128\> (T_VCTRL GND) area=0.07p 

    D2\<129\> (T_VCTRL GND) area=0.07p 

    D2\<130\> (T_VCTRL GND) area=0.07p 

    D2\<131\> (T_VCTRL GND) area=0.07p 

    D2\<132\> (T_VCTRL GND) area=0.07p 

    D2\<133\> (T_VCTRL GND) area=0.07p 

    D2\<134\> (T_VCTRL GND) area=0.07p 

ends Module_Tosc_diode_WLayout

parameters l=150n nfin=4 
    P1 (d g net0 b) egpfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1 
ends egpfet_stack_pcell_0

subckt egnfet_stack_pcell_1 b d g s
parameters l=150n nfin=4
    N1 (net0 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_1

subckt Module_Osc_RST CMGATE GND R RSTHIGH RSTLOW S VDD
    P0 (VDD S RSTLOW VDD) egpfet_stack_pcell_0 m=1 l=150n nfin=4 
    P1 (VDD CMGATE RSTLOW VDD) egpfet_stack_pcell_0 m=1 l=150n nfin=4
    N0 (GND R RSTHIGH GND) egnfet_stack_pcell_1 m=1 l=150n nfin=4 
ends Module_Osc_RST

subckt pfet_stack_pcell_2 b d g s
parameters l=14n nfin=2
    P1 (d g net0 b) pfet m=1 l=l nfin=nfin nf=1
    P0 (net0 g s b) pfet m=1 l=l nfin=nfin nf=1 
ends pfet_stack_pcell_2

subckt nfet_stack_pcell_3 b d g s
parameters l=14n nfin=2 
    N1 (net0 g s b) nfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) nfet m=1 l=l nfin=nfin nf=1 
ends nfet_stack_pcell_3

subckt SC9T_INVX0P5_SSC14R_kp A VDD VNW VPW VSS Z
    P0 (VNW Z A VDD) pfet_stack_pcell_2 m=1 l=14n nfin=4 
    N0 (VPW Z A VSS) nfet_stack_pcell_3 m=1 l=14n nfin=4 
ends SC9T_INVX0P5_SSC14R_kp

subckt SC9T_INVX3_SSC14R_kp A VDD VNW VPW VSS Z
    MN0 (Z A VSS VPW) nfet m=1 l=14n nfin=4 nf=3 
    MP0 (Z A VDD VNW) pfet m=1 l=14n nfin=4 nf=3 
ends SC9T_INVX3_SSC14R_kp

subckt SC9T_NR2X1_SSC14R_kp A B VDD VNW VPW VSS Z
    P1 (Z A net24 VNW) pfet m=1 l=14n nfin=4 nf=1 
    P0 (N_6 B net25 VNW) pfet m=1 l=14n nfin=4 nf=1 
    MP0 (net24 A N_6 VNW) pfet m=1 l=14n nfin=4 nf=1 
    MP1 (net25 B VDD VNW) pfet m=1 l=14n nfin=4 nf=1
    N1 (net26 A VSS VPW) nfet m=1 l=14n nfin=3 nf=1 
    N0 (net27 B VSS VPW) nfet m=1 l=14n nfin=3 nf=1 
    MN0 (Z A net26 VPW) nfet m=1 l=14n nfin=3 nf=1 
    MN1 (Z B net27 VPW) nfet m=1 l=14n nfin=3 nf=1
ends SC9T_NR2X1_SSC14R_kp

subckt Module_SRLATCH_STDCELL_WLayout GND Q QB R S SIG VDD
    I83 (net123 VDD VDD GND GND net122) SC9T_INVX0P5_SSC14R_kp
    I84 (net122 VDD VDD GND GND net118) SC9T_INVX0P5_SSC14R_kp
    I86 (net124 VDD VDD GND GND net121) SC9T_INVX0P5_SSC14R_kp
    I85 (net125 VDD VDD GND GND net124) SC9T_INVX0P5_SSC14R_kp
    I87 (net118 VDD VDD GND GND Q) SC9T_INVX3_SSC14R_kp
    I0 (Q VDD VDD GND GND SIG) SC9T_INVX3_SSC14R_kp
    I88 (net121 VDD VDD GND GND QB) SC9T_INVX3_SSC14R_kp
    I81 (net121 S VDD VDD GND GND net123) SC9T_NR2X1_SSC14R_kp
    I82 (net118 R VDD VDD GND GND net125) SC9T_NR2X1_SSC14R_kp
ends Module_SRLATCH_STDCELL_WLayout

subckt egnfet_stack_pcell_4 b d g s
parameters l=150n nfin=4 
    N3 (net2 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N2 (net1 g net2 b) egnfet m=1 l=l nfin=nfin nf=1
    N1 (net0 g net1 b) egnfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1
ends egnfet_stack_pcell_4

subckt Module_Tosc_WLayout_2 CMNODE GND Q QB R S VCTRL
    N11 (VC1 QB GND GND) egunfet m=1 l=150n nfin=4 nf=2 
    N9 (CMNODE QB S GND) egunfet m=1 l=150n nfin=4 nf=2 
    N10 (CMNODE Q R GND) egunfet m=1 l=150n nfin=4 nf=2 
    N12 (VC2 Q GND GND) egunfet m=1 l=150n nfin=4 nf=2 
    C2 (VC1 GND) mimcap w=5u l=1u 
    C1 (VC2 GND) mimcap w=5u l=1u
    N7 (GND R VCTRL VC1) egnfet_stack_pcell_4 m=2 l=150n nfin=8 
    N8 (GND S VCTRL VC2) egnfet_stack_pcell_4 m=2 l=150n nfin=8 
    N0 (GND GND GND GND) egnfet m=12 l=150n nfin=8 nf=4 par=(12) 
ends Module_Tosc_WLayout_2

subckt egnfet_stack_pcell_5 b d g s
parameters l=150n nfin=4 
    N9 (net8 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N8 (net7 g net8 b) egnfet m=1 l=l nfin=nfin nf=1 
    N7 (net6 g net7 b) egnfet m=1 l=l nfin=nfin nf=1
    N6 (net5 g net6 b) egnfet m=1 l=l nfin=nfin nf=1
    N5 (net4 g net5 b) egnfet m=1 l=l nfin=nfin nf=1 
    N4 (net3 g net4 b) egnfet m=1 l=l nfin=nfin nf=1
    N3 (net2 g net3 b) egnfet m=1 l=l nfin=nfin nf=1
    N2 (net1 g net2 b) egnfet m=1 l=l nfin=nfin nf=1 
    N1 (net0 g net1 b) egnfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_5

subckt egnfet_stack_pcell_6 b d g s
parameters l=150n nfin=4 
    N3 (net2 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N2 (net1 g net2 b) egnfet m=1 l=l nfin=nfin nf=1
    N1 (net0 g net1 b) egnfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_6

subckt egpfet_stack_pcell_7 b d g s
parameters l=150n nfin=4
    P3 (d g net2 b) egpfet m=1 l=l nfin=nfin nf=1
    P2 (net2 g net1 b) egpfet m=1 l=l nfin=nfin nf=1
    P1 (net1 g net0 b) egpfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1
ends egpfet_stack_pcell_7

subckt Module_OPAMP_WLayout AMPBIAS GND INNEG INPOS OUT VDD
    N6 (GND net028 INPOS net027) egnfet_stack_pcell_5 m=2 l=150n nfin=15 
    N0 (GND net027 AMPBIAS GND) egnfet_stack_pcell_6 m=2 l=150n nfin=10
    N1 (GND AMPBIAS AMPBIAS GND) egnfet_stack_pcell_6 m=2 l=150n nfin=10
    N7 (GND OUT INNEG net027) egnfet_stack_pcell_5 m=2 l=150n nfin=15 
    N5 (GND GND GND GND) egnfet m=2 l=150n nfin=15 nf=10
    N4 (GND GND GND GND) egnfet m=6 l=150n nfin=15 nf=4
    N2 (GND GND GND GND) egnfet m=14 l=150n nfin=10 nf=4 
    P0 (VDD net028 net028 VDD) egpfet_stack_pcell_7 m=2 l=150n nfin=25
    P21 (VDD OUT net028 VDD) egpfet_stack_pcell_7 m=2 l=150n nfin=25 
    P1 (VDD VDD VDD VDD) egpfet m=12 l=150n nfin=25 nf=4
ends Module_OPAMP_WLayout

subckt egpfet_stack_pcell_8 b d g s
parameters l=150n nfin=4
    P3 (d g net2 b) egpfet m=1 l=l nfin=nfin nf=1 
    P2 (net2 g net1 b) egpfet m=1 l=l nfin=nfin nf=1
    P1 (net1 g net0 b) egpfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1 
ends egpfet_stack_pcell_8

subckt Module_CMirrorTrim_WLayout CMGATE CMNODE TRIMNEG\<0\> TRIMNEG\<1\> \
        TRIMNEG\<2\> TRIMNEG\<3\> VDD
    P7 (VDD net49 CMGATE VDD) egpfet_stack_pcell_8 m=2 l=150n nfin=8
    P3 (VDD net46 CMGATE VDD) egpfet_stack_pcell_8 m=1 l=150n nfin=8
    P10 (VDD net48 CMGATE VDD) egpfet_stack_pcell_8 m=8 l=150n nfin=8
    P9 (VDD net50 CMGATE VDD) egpfet_stack_pcell_8 m=4 l=150n nfin=8 
    P0 (VDD CMNODE TRIMNEG\<0\> net46) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=8 
    P1 (VDD CMNODE TRIMNEG\<1\> net49) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=8
    P2 (VDD CMNODE TRIMNEG\<2\> net50) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=8
    P4 (VDD CMNODE TRIMNEG\<3\> net48) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=8 
    P5 (VDD VDD VDD VDD) egpfet m=5 l=150n nfin=8
ends Module_CMirrorTrim_WLayout

I4 (GND T_VCTRL) Module_Tosc_diode_WLayout
I9 (IREFT GND net35 RSTHIGH RSTLOW net34 VDD) Module_Osc_RST
I10 (GND net39 net40 net35 net34 OSCTOUT VDD) \
        Module_SRLATCH_STDCELL_WLayout
I11 (net41 GND net39 net40 net35 net34 net38) Module_Tosc_WLayout_2
I8 (net42 GND net38 T_VCTRL net38 VDD) Module_OPAMP_WLayout
I0 (IREFT T_VCTRL TSen_TB\<0\> TSen_TB\<1\> TSen_TB\<2\> TSen_TB\<3\> VDD) \
        Module_CMirrorTrim_WLayout
I2 (IREFT net42 OPAMP_TB\<0\> OPAMP_TB\<1\> OPAMP_TB\<2\> OPAMP_TB\<3\> \
        VDD) Module_CMirrorTrim_WLayout
I3 (IREFT net41 TOsc_TB\<0\> TOsc_TB\<1\> TOsc_TB\<2\> TOsc_TB\<3\> VDD) \
        Module_CMirrorTrim_WLayout
I1 (IREFT IREFT T_Iref_TB\<0\> T_Iref_TB\<1\> T_Iref_TB\<2\> \
        T_Iref_TB\<3\> VDD) Module_CMirrorTrim_WLayout