.STEP LIN TEMP 0 100 25
.TRAN 1e-10 1e-05 2e-06 1e-09
.MEASURE TRAN Q_freq FREQ v(q) ON=0.9 OFF=0.9 PRECISION=12
.INCLUDE MODELS.lib
.print tran format=csv Q_freq
V1 vdd gnd 1.8
V2 vdd_pin gnd 1.8
I1 iref gnd 1e-06
.OPTIONS MEASURE MEASPRINT=STDOUT
.OPTIONS DEVICE TEMP=27
.RESULT {1/Q_freq}


; whitespace to overwrite ANALYSIS.inc correctly
