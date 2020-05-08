# General Overview

This folder contains Verilog files for the following modules:

- Top module

- Ring-Oscillator(RO) modules (using differnet devices)

- RO output multiplexer module

- SPI module

- Ripple Counter module

- Time-to-digital converter module

# Prerequisites

This design uses the following standard cells from GF12. 

delay gate (regular Vt) DLY2_X0P5N_A9PP84TR_C14\
inverter (regular Vt) INVP_X0P5N_A9PP84TR_C14\
inverter (low Vt) INVP_X0P5N_A9PP84TL_C14\
inverter (super low Vt) INVP_X0P5N_A9PP84TSL_C14\
nand gate (4-input regular Vt) NAND4_X2R_A9PP84TR_C14\
nand gate (4-input low Vt) NAND4_X2R_A9PP84TL_C14\
nand gate (4-input super low Vt) NAND4_X2R_A9PP84TSL_C14\
nand gate (3-input regular Vt) NAND3_X2R_A9PP84TSL_C14\
nand gate (3-input low Vt)  NAND3_X2R_A9PP84TL_C14\
nand gate (3-input super low Vt) NAND3_X2R_A9PP84TR_C14

If you like to use it with another library, run these commands in the linux shell after substituting for your std cell names

sed -i 's/DLY2_X0P5N_A9PP84TR_C14/MY_GATE_HERE/g' TDC_48step.v \
sed -i 's/INVP_X0P5N_A9PP84TR_C14/MY_GATE_HERE/g' RO_inv_rvt.v \
sed -i 's/INVP_X0P5N_A9PP84TL_C14/MY_GATE_HERE/g' RO_inv_lvt.v \
sed -i 's/INVP_X0P5N_A9PP84TSL_C14/MY_GATE_HERE/g' RO_inv_slvt.v \
sed -i 's/NAND3_X2R_A9PP84TSL_C14/MY_GATE_HERE/g' RO_inv_rvt.v \
sed -i 's/NAND3_X2R_A9PP84TL_C14/MY_GATE_HERE/g' RO_inv_lvt.v \
sed -i 's/NAND3_X2R_A9PP84TR_C14/MY_GATE_HERE/g' RO_inv_slvt.v \
sed -i 's/NAND4_X2R_A9PP84TR_C14/MY_GATE_HERE/g' RO_nand4_rvt.v \
sed -i 's/NAND4_X2R_A9PP84TL_C14/MY_GATE_HERE/g' RO_nand4_lvt.v \
sed -i 's/NAND4_X2R_A9PP84TSL_C14/MY_GATE_HERE/g' RO_nand4_slvt.v \


# Setup and synthesis

Open terminal, change direction to your target folder and type the following code:

```
gitclone https://github.com/scale-lab/PVTsensors/tree/master/All_Digital_VTSensor/Digital_Sensor_Verilog
```

Please make sure to include the Verilog file of the ARM standard cell libraries under the same directory.

A sample synthesis script using Yosys

read_verilog DigitalVTSensor_Top.v Ripple_Counter.v RO_inv_lvt.v RO_inv_rvt.v RO_inv_slvt.v RO_MUX.v RO_nand4_lvt.v RO_nand4_rvt.v RO_nand4_slvt.v SPI.v TDC_48step.v\
synth\
dfflibmap -liberty <your .lib file>\
abc -liberty <your .lib file>\
opt\
write_verilog sensor_syn.v

