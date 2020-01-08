global 0
parameters wireopt=9

subckt egnfet_stack_pcell_0 b d g s
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
ends egnfet_stack_pcell_0


subckt egnfet_stack_pcell_1 b d g s
parameters l=150n nfin=4 
    N3 (net2 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N2 (net1 g net2 b) egnfet m=1 l=l nfin=nfin nf=1 
    N1 (net0 g net1 b) egnfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_1

subckt egpfet_stack_pcell_2 b d g s
parameters l=150n nfin=4 
    P3 (d g net2 b) egpfet m=1 l=l nfin=nfin nf=1 
    P2 (net2 g net1 b) egpfet m=1 l=l nfin=nfin nf=1 
    P1 (net1 g net0 b) egpfet m=1 l=l nfin=nfin nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1 
ends egpfet_stack_pcell_2

subckt Module_BGR_OPAMP_WLayout AMPBIAS GND INNEG INPOS OUT VDD
    N6 (GND net028 INPOS net027) egnfet_stack_pcell_0 m=2 l=150n nfin=15
    N0 (GND net027 AMPBIAS GND) egnfet_stack_pcell_1 m=2 l=150n nfin=10 
    N1 (GND AMPBIAS AMPBIAS GND) egnfet_stack_pcell_1 m=2 l=150n nfin=10 
    N7 (GND OUT INNEG net027) egnfet_stack_pcell_0 m=2 l=150n nfin=15 
    N5 (GND GND GND GND) egnfet m=2 l=150n nfin=15 nf=10 
    N4 (GND GND GND GND) egnfet m=6 l=150n nfin=15 nf=4 
    N2 (GND GND GND GND) egnfet m=14 l=150n nfin=10 nf=4 
    P0 (VDD net028 net028 VDD) egpfet_stack_pcell_2 m=2 l=150n nfin=25 
    P21 (VDD OUT net028 VDD) egpfet_stack_pcell_2 m=2 l=150n nfin=25 
    P1 (VDD VDD VDD VDD) egpfet m=12 l=150n nfin=25 nf=4 
ends Module_BGR_OPAMP_WLayout

subckt Module_BGR_Diode_V2 GND RES VNEG
    D1\<1\> (GND GND) 
    D1\<2\> (GND GND) 
    D1\<3\> (GND GND) 
    D1\<4\> (GND GND) 
    D1\<5\> (GND GND) 
    D1\<6\> (GND GND) 
    D1\<7\> (GND GND) 
    D1\<8\> (GND GND) 
    D1\<9\> (GND GND) 
    D1\<10\> (GND GND) 
    D1\<11\> (GND GND) 
    D1\<12\> (GND GND) 
    D1\<13\> (GND GND) 
    D1\<14\> (GND GND) 
    D1\<15\> (GND GND) 
    D1\<16\> (GND GND) 
    D1\<17\> (GND GND) 
    D1\<18\> (GND GND) 
    D1\<19\> (GND GND) 
    D1\<20\> (GND GND) 
    D1\<21\> (GND GND) 
    D1\<22\> (GND GND) 
    D1\<23\> (GND GND) 
    D1\<24\> (GND GND) 
    D1\<25\> (GND GND) 
    D1\<26\> (GND GND) 
    D1\<27\> (GND GND) 
    D1\<28\> (GND GND) 
    D1\<29\> (GND GND) 
    D1\<30\> (GND GND) 
    D1\<31\> (GND GND) 
    D1\<32\> (GND GND) 
    D3\<1\> (RES GND) 
    D3\<2\> (RES GND) 
    D3\<3\> (RES GND) 
    D3\<4\> (RES GND) 
    D3\<5\> (RES GND) 
    D3\<6\> (RES GND) 
    D3\<7\> (RES GND) 
    D3\<8\> (RES GND) 
    D3\<9\> (RES GND) 
    D3\<10\> (RES GND) 
    D3\<11\> (RES GND) 
    D3\<12\> (RES GND) 
    D3\<13\> (RES GND) 
    D3\<14\> (RES GND) 
    D3\<15\> (RES GND) 
    D3\<16\> (RES GND) 
    D3\<17\> (RES GND) 
    D3\<18\> (RES GND) 
    D3\<19\> (RES GND) 
    D3\<20\> (RES GND) 
    D3\<21\> (RES GND) 
    D3\<22\> (RES GND) 
    D3\<23\> (RES GND) 
    D3\<24\> (RES GND) 
    D3\<25\> (RES GND) 
    D3\<26\> (RES GND) 
    D3\<27\> (RES GND) 
    D3\<28\> (RES GND) 
    D3\<29\> (RES GND) 
    D3\<30\> (RES GND) 
    D3\<31\> (RES GND) 
    D3\<32\> (RES GND) 
    D2\<1\> (VNEG GND) 
    D2\<2\> (VNEG GND) 
ends Module_BGR_Diode_V2

subckt egpfet_stack_pcell_3 b d g s
parameters l=150n nfin=4 
    P0 (d g s b) egpfet m=1 l=l nfin=nfin nf=1
ends egpfet_stack_pcell_3

subckt egnfet_stack_pcell_4 b d g s
parameters l=150n nfin=4 
    N0 (d g s b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_4
subckt Module_BGR_ResTrim GND RESTRIM\<0\> RESTRIM\<1\> RESTRIM\<2\> \
        RESTRIM\<3\> RESTRIM\<4\> RESTRIMB\<0\> RESTRIMB\<1\> \
        RESTRIMB\<2\> RESTRIMB\<3\> RESTRIMB\<4\> RESTRIMIN RESTRIMOUT VDD
    P1 (VDD net027 RESTRIMB\<2\> net05) egpfet_stack_pcell_3 m=1 l=150n nfin=4 
    P2 (VDD net07 RESTRIMB\<3\> net027) egpfet_stack_pcell_3 m=1 l=150n nfin=4
    P5 (VDD net04 RESTRIMB\<0\> net03) egpfet_stack_pcell_3 m=1 l=150n nfin=4 
    P0 (VDD net05 RESTRIMB\<1\> net04) egpfet_stack_pcell_3 m=1 l=150n nfin=4 
    P3 (VDD RESTRIMOUT RESTRIMB\<4\> net07) egpfet_stack_pcell_3 m=1 \l=150n nfin=4 
    R5 (net03 RESTRIMIN GND) rmres m=1 w=280n l=25u
    R3 (RESTRIMOUT net07 GND) rmres m=1 w=280n l=5.3u 
    R2 (net07 net027 GND) rmres m=1 w=280n l=12.2u 
    R1 (net027 net05 GND) rmres m=1 w=280n l=25u 
    R0 (net05 net04 GND) rmres m=1 w=280n l=25u 
    R11 (net04 net03 GND) rmres m=1 w=280n l=25u 
    N13 (GND net04 RESTRIM\<1\> net05) egnfet_stack_pcell_4 m=1 l=150n nfin=4 
    N2 (GND net07 RESTRIM\<4\> RESTRIMOUT) egnfet_stack_pcell_4 m=1 l=150n nfin=4
    N0 (GND net05 RESTRIM\<2\> net027) egnfet_stack_pcell_4 m=1 l=150n \nfin=4 
    N1 (GND net027 RESTRIM\<3\> net07) egnfet_stack_pcell_4 m=1 l=150n \nfin=4 
    N3 (GND net03 RESTRIM\<0\> net04) egnfet_stack_pcell_4 m=1 l=150n \nfin=4 
ends Module_BGR_ResTrim

subckt egunfet_stack_pcell_5 b d g s
parameters l=100n nfin=4 
    N3 (net2 g s b) egunfet m=1 l=l nfin=nfin nf=1 
    N2 (net1 g net2 b) egunfet m=1 l=l nfin=nfin nf=1 
    N1 (net0 g net1 b) egunfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egunfet m=1 l=l nfin=nfin nf=1 
ends egunfet_stack_pcell_5

subckt egunfet_stack_pcell_6 b d g s
parameters l=100n nfin=4 
    N1 (net0 g s b) egunfet m=1 l=l nfin=nfin nf=1 
    N0 (d g net0 b) egunfet m=1 l=l nfin=nfin nf=1 
ends egunfet_stack_pcell_6

subckt egnfet_stack_pcell_7 b d g s
parameters l=150n nfin=4 
    N7 (net6 g s b) egnfet m=1 l=l nfin=nfin nf=1 
    N6 (net5 g net6 b) egnfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    N5 (net4 g net5 b) egnfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    N4 (net3 g net4 b) egnfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    N3 (net2 g net3 b) egnfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    N2 (net1 g net2 b) egnfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    N1 (net0 g net1 b) egnfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    N0 (d g net0 b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_7

subckt Module_BGR_CM_V2_NFET GND IREFT IREFV NFETCMNODE
    N3 (GND GND GND GND) egnfet m=8 l=200n nfin=10 nf=4 
    N5 (GND GND GND GND) egnfet m=1 l=200n nfin=10 nf=8 
    N0 (GND GND GND GND) egnfet m=6 l=200n nfin=10 nf=8 
    N2 (GND IREFT NFETCMNODE GND) egnfet_stack_pcell_7 m=1 l=200n nfin=10
    N1 (GND NFETCMNODE NFETCMNODE GND) egnfet_stack_pcell_7 m=2 l=200n nfin=10 
    N19 (GND IREFV NFETCMNODE GND) egnfet_stack_pcell_7 m=2 l=200n nfin=10
ends Module_BGR_CM_V2_NFET

subckt egpfet_stack_pcell_8 b d g s
parameters l=150n nfin=4 
    P0 (d g s b) egpfet m=1 l=l nfin=nfin nf=1
ends egpfet_stack_pcell_8

subckt egnfet_stack_pcell_9 b d g s
parameters l=150n nfin=4 
    N0 (d g s b) egnfet m=1 l=l nfin=nfin nf=1 
ends egnfet_stack_pcell_9

subckt Module_BGR_ResTrim_AMP_V2 GND RESTRIML\<0\> RESTRIML\<1\> \
        RESTRIML\<2\> RESTRIML\<3\> RESTRIML\<4\> RESTRIMLB\<0\> \
        RESTRIMLB\<1\> RESTRIMLB\<2\> RESTRIMLB\<3\> RESTRIMLB\<4\> \
        RESTRIMLIN RESTRIMR\<0\> RESTRIMR\<1\> RESTRIMR\<2\> RESTRIMR\<3\> \
        RESTRIMR\<4\> RESTRIMRB\<0\> RESTRIMRB\<1\> RESTRIMRB\<2\> \
        RESTRIMRB\<3\> RESTRIMRB\<4\> RESTRIMRIN VDD
    R11 (net044 RESTRIMRIN GND) rmres m=1 w=280n l=25u 
    R10 (net043 net044 GND) rmres m=1 w=280n l=25u 
    R9 (net042 net043 GND) rmres m=1 w=280n l=25u 
    R8 (net041 net042 GND) rmres m=1 w=280n l=25u 
    R7 (net040 net041 GND) rmres m=1 w=280n l=25u 
    R6 (GND net040 GND) rmres m=1 w=280n l=25u 
    R5 (net46 net48 GND) rmres m=1 w=280n l=25u 
    R3 (net48 net50 GND) rmres m=1 w=280n l=25u 
    R2 (GND net46 GND) rmres m=1 w=280n l=25u 
    R1 (net52 net54 GND) rmres m=1 w=280n l=25u 
    R0 (net54 RESTRIMLIN GND) rmres m=1 w=280n l=25u
    R4 (net50 net52 GND) rmres m=1 w=280n l=25u 
    P9 (VDD net043 RESTRIMRB\<0\> net044) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P8 (VDD net042 RESTRIMRB\<1\> net043) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P7 (VDD net041 RESTRIMRB\<2\> net042) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4
    P6 (VDD net040 RESTRIMRB\<3\> net041) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4
    P4 (VDD GND RESTRIMRB\<4\> net040) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P1 (VDD net48 RESTRIMLB\<2\> net50) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P2 (VDD net46 RESTRIMLB\<3\> net48) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P5 (VDD net52 RESTRIMLB\<0\> net54) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P0 (VDD net50 RESTRIMLB\<1\> net52) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    P3 (VDD GND RESTRIMLB\<4\> net46) egpfet_stack_pcell_8 m=1 l=150n \
        nfin=4 
    N8 (GND net044 RESTRIMR\<0\> net043) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N7 (GND net043 RESTRIMR\<1\> net042) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N6 (GND net042 RESTRIMR\<2\> net041) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N5 (GND net041 RESTRIMR\<3\> net040) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N4 (GND net040 RESTRIMR\<4\> GND) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N1 (GND net48 RESTRIML\<3\> net46) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N0 (GND net50 RESTRIML\<2\> net48) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4
    N2 (GND net46 RESTRIML\<4\> GND) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4
    N13 (GND net52 RESTRIML\<1\> net50) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
    N3 (GND net54 RESTRIML\<0\> net52) egnfet_stack_pcell_9 m=1 l=150n \
        nfin=4 
ends Module_BGR_ResTrim_AMP_V2

subckt egpfet_stack_pcell_10 b d g s
parameters l=150n nfin=4 as ad=(110n)*(11n)*4 
    P11 (d g net10 b) egpfet m=1 l=l nfin=nfin nf=1
    P10 (net10 g net9 b) egpfet m=1 l=l nfin=nfin nf=1
    P9 (net9 g net8 b) egpfet m=1 l=l nfin=nfin nf=1 
    P8 (net8 g net7 b) egpfet m=1 l=l nfin=nfin nf=1 
    P7 (net7 g net6 b) egpfet m=1 l=l nfin=nfin nf=1 
    P6 (net6 g net5 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P5 (net5 g net4 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P4 (net4 g net3 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P3 (net3 g net2 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P2 (net2 g net1 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P1 (net1 g net0 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1 
ends egpfet_stack_pcell_10

subckt egpfet_stack_pcell_11 b d g s
parameters l=150n nfin=4 
    P11 (d g net10 b) egpfet m=1 l=l nfin=nfin nf=1 
    P10 (net10 g net9 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P9 (net9 g net8 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P8 (net8 g net7 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P7 (net7 g net6 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P6 (net6 g net5 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P5 (net5 g net4 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P4 (net4 g net3 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P3 (net3 g net2 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P2 (net2 g net1 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1
    P1 (net1 g net0 b) egpfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P0 (net0 g s b) egpfet m=1 l=l nfin=nfin nf=1
ends egpfet_stack_pcell_11

subckt Module_BGR_CM_V2_PFET AMPBIAS NFETCMNODE STARTUPCONN VDD VNEG VPOS
    P0 (VDD VNEG STARTUPCONN VDD) egpfet_stack_pcell_10 m=1 l=150n nfin=16
    P1 (VDD VPOS STARTUPCONN VDD) egpfet_stack_pcell_10 m=1 l=150n nfin=16
    P6 (VDD NFETCMNODE STARTUPCONN VDD) egpfet_stack_pcell_10 m=1 l=150n \
        nfin=16 
    P3 (VDD NFETCMNODE STARTUPCONN VDD) egpfet_stack_pcell_11 m=4 l=150n \
        nfin=16 
    P2 (VDD AMPBIAS STARTUPCONN VDD) egpfet_stack_pcell_10 m=1 l=150n \
        nfin=16 
    P10 (VDD AMPBIAS STARTUPCONN VDD) egpfet_stack_pcell_11 m=4 l=150n \
        nfin=16 
    P4 (VDD VPOS STARTUPCONN VDD) egpfet_stack_pcell_11 m=4 l=150n nfin=16
    P5 (VDD VNEG STARTUPCONN VDD) egpfet_stack_pcell_11 m=4 l=150n nfin=16
    P8 (VDD VDD VDD VDD) egpfet m=4 l=150n nfin=16 nf=6 
    P7 (VDD VDD VDD VDD) egpfet m=10 l=150n nfin=16 nf=6 
ends Module_BGR_CM_V2_PFET

subckt egupfet_stack_pcell_12 b d g s
parameters l=100n nfin=4
    P2 (net2 g net1 b) egupfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P1 (net1 g net0 b) egupfet m=1 l=l nfin=nfin nf=1 par=1 par_nf=1 
    P0 (net0 g s b) egupfet m=1 l=l nfin=nfin nf=1 
ends egupfet_stack_pcell_12

I7 (net1 GND vn vp STARTUPCONN VDD) Module_BGR_OPAMP_WLayout
I1 (GND Vdiode vn) Module_BGR_Diode_V2
R5 (net046 net14 GND) rmres m=1 w=280n l=25u r=178.965K sbar=4 pbar=1 \
        orientation=1 dtemp=0 sh=1
R4 (GND net046 GND) rmres m=1 w=280n l=25u r=357.929K sbar=8 pbar=1 \
        orientation=1 dtemp=0 sh=1
I6 (GND RESTRIM\<0\> RESTRIM\<1\> RESTRIM\<2\> RESTRIM\<3\> RESTRIM\<4\> \
        RESTRIMB\<0\> RESTRIMB\<1\> RESTRIMB\<2\> RESTRIMB\<3\> \
        RESTRIMB\<4\> vp Vdiode VDD) Module_BGR_ResTrim
N18 (GND STARTUPCONN net039 GND) egunfet_stack_pcell_5 m=1 l=150n nfin=8 
        
N17 (GND net039 net14 GND) egunfet_stack_pcell_6 m=1 l=150n nfin=16 \
I10 (GND IREFT IREFV net011) Module_BGR_CM_V2_NFET
I5 (GND AMPRESTRIM_L\<0\> AMPRESTRIM_L\<1\> AMPRESTRIM_L\<2\> \
        AMPRESTRIM_L\<3\> AMPRESTRIM_L\<4\> AMPRESTRIMB_L\<0\> \
        AMPRESTRIMB_L\<1\> AMPRESTRIMB_L\<2\> AMPRESTRIMB_L\<3\> \
        AMPRESTRIMB_L\<4\> vp AMPRESTRIM_R\<0\> AMPRESTRIM_R\<1\> \
        AMPRESTRIM_R\<2\> AMPRESTRIM_R\<3\> AMPRESTRIM_R\<4\> \
        AMPRESTRIMB_R\<0\> AMPRESTRIMB_R\<1\> AMPRESTRIMB_R\<2\> \
        AMPRESTRIMB_R\<3\> AMPRESTRIMB_R\<4\> vn VDD) \
        Module_BGR_ResTrim_AMP_V2
I0 (net1 net011 STARTUPCONN VDD vn vp) Module_BGR_CM_V2_PFET
P22 (VDD net14 STARTUPCONN VDD) egpfet_stack_pcell_10 m=8 l=150n nfin=16 
P23 (VDD net039 net14 VDD) egupfet_stack_pcell_12 m=1 l=150n nfin=8 
