global 0
subckt pfet_stack_pcell_0 b d g s
parameters l=14n nfin=2
    P1 (d g net0 b) pfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) pfet m=1 l=l nfin=nfin nf=1 
ends pfet_stack_pcell_0

subckt nfet_stack_pcell_1 b d g s
parameters l=14n nfin=2
    N1 (net0 g s b) nfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) nfet m=1 l=l nfin=nfin nf=1 
ends nfet_stack_pcell_1

subckt SC9T_INVX0P5_SSC14R_kp A VDD VNW VPW VSS Z
    P0 (VNW Z A VDD) pfet_stack_pcell_0 m=1 l=14n nfin=4 
    N0 (VPW Z A VSS) nfet_stack_pcell_1 m=1 l=14n nfin=4 
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

subckt egnfet_stack_pcell_2 b d g s
parameters l=150n nfin=4
    N3 (net2 g s b) egnfet m=1 l=l nfin=nfin nf=1
    N2 (net1 g net2 b) egnfet m=1 l=l nfin=nfin nf=1 
    N1 (net0 g net1 b) egnfet m=1 l=l nfin=nfin nf=1
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_2

subckt egnfet_stack_pcell_3 b d g s
parameters l=150n nfin=4
    N1 (net0 g s b) egnfet m=1 l=l nfin=nfin nf=1
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_3

subckt egpfet_stack_pcell_4 b d g s
parameters l=150n nfin=4 
    P1 (d g net0 b) egpfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1 
ends egpfet_stack_pcell_4

subckt egpfet_stack_pcell_5 b d g s
parameters l=150n nfin=4 
    P1 (d g net0 b) egpfet m=1 l=l nfin=nfin nf=1
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1
ends egpfet_stack_pcell_5

subckt nfet_stack_pcell_6 b d g s
parameters l=14n nfin=2 
    N3 (net2 g s b) nfet m=1 l=l nfin=nfin nf=1 
    N2 (net1 g net2 b) nfet m=1 l=l nfin=nfin nf=1 
    N1 (net0 g net1 b) nfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) nfet m=1 l=l nfin=nfin nf=1 
ends nfet_stack_pcell_6

subckt Module_Vosc_WLayout_3 CMNODE1 CMNODE2 GND Q QB R S VDD
    N14 (GND net103 VREF_PRE net018) egnfet_stack_pcell_2 m=2 l=150n \
        nfin=8
    N17 (GND net86 VREF net103) egnfet_stack_pcell_3 m=2 l=150n nfin=8
    N16 (GND VREF VREF net87) egnfet_stack_pcell_3 m=2 l=150n nfin=8
    N18 (GND R VREF VC1) egnfet_stack_pcell_3 m=2 l=150n nfin=8 
    N19 (GND S VREF VC2) egnfet_stack_pcell_3 m=2 l=150n nfin=8 
    N15 (GND net87 net87 net018) egnfet_stack_pcell_2 m=2 l=150n nfin=8 
    P7 (net92 GND GND net92) egpfet_stack_pcell_4 m=1 l=150n nfin=8 
    P12 (VDD net86 net86 VDD) egpfet_stack_pcell_5 m=2 l=150n nfin=8 
    P8 (VREF_PRE net92 net92 VREF_PRE) egpfet_stack_pcell_4 m=1 l=150n \
        nfin=8
    P9 (VDD net94 net94 VDD) egpfet_stack_pcell_4 m=1 l=150n nfin=8 
    P11 (VDD VREF net86 VDD) egpfet_stack_pcell_5 m=2 l=150n nfin=8 
    P10 (net94 VREF_PRE VREF_PRE net94) egpfet_stack_pcell_4 m=1 l=150n \
        nfin=8
    N8 (CMNODE1 QB S GND) egunfet m=1 l=150n nfin=4 nf=2 
    N9 (CMNODE1 Q R GND) egunfet m=1 l=150n nfin=4 nf=2
    N6 (VC2 Q GND GND) egunfet m=1 l=150n nfin=4 nf=2 
    N7 (VC1 QB GND GND) egunfet m=1 l=150n nfin=4 nf=2
    C2 (VC1 GND) mimcap w=5u l=1u
    C3 (VC2 GND) mimcap w=5u l=1u
    P14 (VDD VDD VDD VDD) egpfet m=1 l=150n nfin=8 nf=2
    P5 (GND GND GND GND) egpfet m=1 l=150n nfin=8 nf=2 
    P13 (VDD VDD VDD VDD) egpfet m=12 l=150n nfin=8 nf=2
    N5 (GND GND GND GND) egnfet m=12 l=150n nfin=8 nf=2 
    N0 (GND GND GND GND) egnfet m=12 l=150n nfin=8 nf=4 
    N1 (GND CMNODE2 CMNODE2 GND) nfet_stack_pcell_6 m=1 l=150n nfin=8 
    N2 (GND net018 CMNODE2 GND) nfet_stack_pcell_6 m=2 l=150n nfin=8 
    N3 (GND GND GND GND) nfet m=5 l=150n nfin=8 nf=4 
ends Module_Vosc_WLayout_3

subckt egpfet_stack_pcell_7 b d g s
parameters l=150n nfin=4 
    P1 (d g net0 b) egpfet m=1 l=l nfin=nfin nf=1
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1
ends egpfet_stack_pcell_7

subckt egnfet_stack_pcell_8 b d g s
parameters l=150n nfin=4 
    N1 (net0 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_8

subckt Module_Osc_RST CMGATE GND R RSTHIGH RSTLOW S VDD
    P0 (VDD S RSTLOW VDD) egpfet_stack_pcell_7 m=1 l=150n nfin=4
    P1 (VDD CMGATE RSTLOW VDD) egpfet_stack_pcell_7 m=1 l=150n nfin=4 
    N0 (GND R RSTHIGH GND) egnfet_stack_pcell_8 m=1 l=150n nfin=4
ends Module_Osc_RST

subckt egpfet_stack_pcell_9 b d g s
parameters l=150n nfin=4
    P3 (d g net2 b) egpfet m=1 l=l nfin=nfin nf=1 
    P2 (net2 g net1 b) egpfet m=1 l=l nfin=nfin nf=1 
    P1 (net1 g net0 b) egpfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1 
ends egpfet_stack_pcell_9

subckt Module_CMirrorTrim_WLayout CMGATE CMNODE TRIMNEG\<0\> TRIMNEG\<1\> \
        TRIMNEG\<2\> TRIMNEG\<3\> VDD
    P7 (VDD net49 CMGATE VDD) egpfet_stack_pcell_9 m=2 l=150n nfin=8 
    P3 (VDD net46 CMGATE VDD) egpfet_stack_pcell_9 m=1 l=150n nfin=8
    P10 (VDD net48 CMGATE VDD) egpfet_stack_pcell_9 m=8 l=150n nfin=8
    P9 (VDD net50 CMGATE VDD) egpfet_stack_pcell_9 m=4 l=150n nfin=8 
    P0 (VDD CMNODE TRIMNEG\<0\> net46) egpfet_stack_pcell_9 m=1 l=150n \
        nfin=8
    P1 (VDD CMNODE TRIMNEG\<1\> net49) egpfet_stack_pcell_9 m=1 l=150n \
        nfin=8
    P2 (VDD CMNODE TRIMNEG\<2\> net50) egpfet_stack_pcell_9 m=1 l=150n \
        nfin=8
    P4 (VDD CMNODE TRIMNEG\<3\> net48) egpfet_stack_pcell_9 m=1 l=150n \
        nfin=8
    P5 (VDD VDD VDD VDD) egpfet m=5 l=150n nfin=8 nf=4
ends Module_CMirrorTrim_WLayout

I17 (GND net022 net023 net021 net020 OSCVOUT VDD) \
        Module_SRLATCH_STDCELL_WLayout
I15 (net024 net018 GND net022 net023 net021 net020 VDD) \
        Module_Vosc_WLayout_3
I16 (IREFV GND net021 RSTHIGH RSTLOW net020 VDD) Module_Osc_RST
I14 (IREFV net024 VOsc_TB\<0\> VOsc_TB\<1\> VOsc_TB\<2\> VOsc_TB\<3\> VDD) \
        Module_CMirrorTrim_WLayout
I13 (IREFV net018 VSen_TB\<0\> VSen_TB\<1\> VSen_TB\<2\> VSen_TB\<3\> VDD) \
        Module_CMirrorTrim_WLayout
I12 (IREFV IREFV V_Iref_TB\<0\> V_Iref_TB\<1\> V_Iref_TB\<2\> \
        V_Iref_TB\<3\> VDD) Module_CMirrorTrim_WLayout
