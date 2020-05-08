##########################################################
## Define variables
##########################################################

num_of_stages_inv = 383
num_of_stages_nand4 = 127
num_of_stages_NOR3 = 127

##########################################################
## hvt NOR3
##########################################################
# Create a new file
f = open("RO_nor4_hvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with hvt library /////////////////// \n/////////////////// This RO contains 127 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_nor4_hvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between nand gates ///////////////////\n")
f.write("wire ["+str(num_of_stages_NOR3-2)+":0] w_nr_Conn;\n\n")

# Assign the first control logic
f.write("NAND4X2MA10TH U0(\n.A(i_Enable),\n.B(i_Sel),\n.C(w_nr_Conn[" + str(num_of_stages_NOR3-2) + "]),\n.D(w_nr_Conn[" + str(num_of_stages_NOR3-2) + "]),\n.Y(o_RO_out)\n);\n\n")

# insert the 2nd stage
f.write("NOR3_hvt U1(\n")
f.write(".i_nr_1(o_RO_out),\n.i_nr_2(o_RO_out),\n.i_nr_3(o_RO_out),\n.out(w_nr_Conn[0])\n")
f.write(");\n\n")

# insert modules
for x in range(num_of_stages_NOR3-2):
    f.write("NOR3_hvt U" + str(x+2) + "(\n")
    f.write(".i_nr_1(w_nr_Conn[" + str(x) + "]),\n.i_nr_2(w_nr_Conn[" + str(x) + "]),\n.i_nr_3(w_nr_Conn[" + str(x) + "]),\n.out(w_nr_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")


# endmodule
f.write("endmodule\n\n")

# NOR3 cell statement
f.write("module NOR3_hvt(\ninput wire i_nr_1,\ninput wire i_nr_2,\ninput wire i_nr_3,\noutput wire out);\n\n")
f.write("NOR3X0P5MA10TH U0(\n")
f.write(".A(i_nr_1),\n.B(i_nr_2),\n.C(i_nr_3),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()




##########################################################
## LVT NOR3
##########################################################
# Create a new file
f = open("RO_nor4_lvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with lvt library /////////////////// \n/////////////////// This RO contains 127 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_nor4_lvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between nand gates ///////////////////\n")
f.write("wire ["+str(num_of_stages_NOR3-2)+":0] w_nr_Conn;\n\n")

# Assign the first control logic
f.write("NAND4X2MA10TL U0(\n.A(i_Enable),\n.B(i_Sel),\n.C(w_nr_Conn[" + str(num_of_stages_NOR3-2) + "]),\n.D(w_nr_Conn[" + str(num_of_stages_NOR3-2) + "]),\n.Y(o_RO_out)\n);\n\n")

# insert the 2nd stage
f.write("NOR3_lvt U1(\n")
f.write(".i_nr_1(o_RO_out),\n.i_nr_2(o_RO_out),\n.i_nr_3(o_RO_out),\n.out(w_nr_Conn[0])\n")
f.write(");\n\n")

# insert modules
for x in range(num_of_stages_NOR3-2):
    f.write("NOR3_lvt U" + str(x+2) + "(\n")
    f.write(".i_nr_1(w_nr_Conn[" + str(x) + "]),\n.i_nr_2(w_nr_Conn[" + str(x) + "]),\n.i_nr_3(w_nr_Conn[" + str(x) + "]),\n.out(w_nr_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# NOR3 cell statement
f.write("module NOR3_lvt(\ninput wire i_nr_1,\ninput wire i_nr_2,\ninput wire i_nr_3,\noutput wire out);\n\n")
f.write("NOR3X0P5MA10TL U0(\n")
f.write(".A(i_nr_1),\n.B(i_nr_2),\n.C(i_nr_3),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")


# close file
f.close()



##########################################################
## RVT NOR3
##########################################################
# Create a new file
f = open("RO_nor4_rvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with rvt library /////////////////// \n/////////////////// This RO contains 127 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_nor4_rvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between nand gates ///////////////////\n")
f.write("wire ["+str(num_of_stages_NOR3-2)+":0] w_nr_Conn;\n\n")

# Assign the first control logic
f.write("NAND4X2MA10TR U0(\n.A(i_Enable),\n.B(i_Sel),\n.C(w_nr_Conn[" + str(num_of_stages_NOR3-2) + "]),\n.D(w_nr_Conn[" + str(num_of_stages_NOR3-2) + "]),\n.Y(o_RO_out)\n);\n\n")

# insert the 2nd stage
f.write("NOR3_rvt U1(\n")
f.write(".i_nr_1(o_RO_out),\n.i_nr_2(o_RO_out),\n.i_nr_3(o_RO_out),\n.out(w_nr_Conn[0])\n")
f.write(");\n\n")

# insert modules
for x in range(num_of_stages_NOR3-2):
    f.write("NOR3_rvt U" + str(x+2) + "(\n")
    f.write(".i_nr_1(w_nr_Conn[" + str(x) + "]),\n.i_nr_2(w_nr_Conn[" + str(x) + "]),\n.i_nr_3(w_nr_Conn[" + str(x) + "]),\n.out(w_nr_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# NOR3 cell statement
f.write("module NOR3_rvt(\ninput wire i_nr_1,\ninput wire i_nr_2,\ninput wire i_nr_3,\noutput wire out);\n\n")
f.write("NOR3X0P5MA10TR U0(\n")
f.write(".A(i_nr_1),\n.B(i_nr_2),\n.C(i_nr_3),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()



##########################################################
## SLVT INV
##########################################################

# Create a new file
f = open("RO_inv_slvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with lvt library /////////////////// \n/////////////////// This RO contains 383 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_inv_slvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between inverters ///////////////////\n")
f.write("wire ["+str(num_of_stages_inv-1)+":0] w_inv_Conn;\n\n")

# Assign the first control logic
#f.write("assign w_inv_Conn[0] = ~( i_Enable & i_Sel & o_RO_out );\n\n")
f.write("NAND3_X2R_A9PP84TSL_C14 U0(\n.A(i_Enable),\n.B(i_Sel),\n.C(o_RO_out),\n.Y(w_inv_Conn[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_inv-2):
    f.write("inv_slvt U" + str(x+1) + "(\n")
    f.write(".in(w_inv_Conn[" + str(x) + "]),\n.out(w_inv_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")

# insert the last module
x = num_of_stages_inv-1
f.write("inv_slvt U" + str(x) + "(\n")
f.write(".in(w_inv_Conn[" + str(x-1) + "]),\n.out(o_RO_out)\n")
f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# inverter cell statement
f.write("module inv_slvt(\ninput wire in,\noutput wire out\n); \n\n")
# f.write("wire in;\n(* dont_touch = 'true' *) wire out; \n\n")
f.write("INVP_X0P5N_A9PP84TSL_C14 U0(\n")
f.write(".A(in),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()



##########################################################
## LVT INV
##########################################################

# Create a new file
f = open("RO_inv_lvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with slvt library /////////////////// \n/////////////////// This RO contains 383 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_inv_lvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between inverters ///////////////////\n")
f.write("wire ["+str(num_of_stages_inv-1)+":0] w_inv_Conn;\n\n")

# Assign the first control logic
#f.write("assign w_inv_Conn[0] = ~( i_Enable & i_Sel & o_RO_out );\n\n")
f.write("NAND3_X2R_A9PP84TL_C14 U0(\n.A(i_Enable),\n.B(i_Sel),\n.C(o_RO_out),\n.Y(w_inv_Conn[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_inv-2):
    f.write("inv_lvt U" + str(x+1) + "(\n")
    f.write(".in(w_inv_Conn[" + str(x) + "]),\n.out(w_inv_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")

# insert the last module
x = num_of_stages_inv-1
f.write("inv_lvt U" + str(x) + "(\n")
f.write(".in(w_inv_Conn[" + str(x-1) + "]),\n.out(o_RO_out)\n")
f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# inverter cell statement
f.write("module inv_lvt(\ninput wire in,\noutput wire out\n); \n\n")
# f.write("wire in;\n(* dont_touch = 'true' *) wire out; \n\n")
f.write("INVP_X0P5N_A9PP84TL_C14 U0(\n")
f.write(".A(in),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()



##########################################################
## RVT INV
##########################################################

# Create a new file
f = open("RO_inv_rvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with rvt library /////////////////// \n/////////////////// This RO contains 383 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_inv_rvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between inverters ///////////////////\n")
f.write("wire ["+str(num_of_stages_inv-1)+":0] w_inv_Conn;\n\n")

#f.write("assign w_inv_Conn[0] = ~( i_Enable & i_Sel & o_RO_out );\n\n")
f.write("NAND3_X2R_A9PP84TR_C14 U0(\n.A(i_Enable),\n.B(i_Sel),\n.C(o_RO_out),\n.Y(w_inv_Conn[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_inv-2):
    f.write("inv_rvt U" + str(x+1) + "(\n")
    f.write(".in(w_inv_Conn[" + str(x) + "]),\n.out(w_inv_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")

# insert the last module
x = num_of_stages_inv-1
f.write("inv_rvt U" + str(x) + "(\n")
f.write(".in(w_inv_Conn[" + str(x-1) + "]),\n.out(o_RO_out)\n")
f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# inverter cell statement
f.write("module inv_rvt(\ninput wire in,\noutput wire out\n); \n\n")
# f.write("wire in;\n(* dont_touch = 'true' *) wire out; \n\n")
f.write("INVP_X0P5N_A9PP84TR_C14 U0(\n")
f.write(".A(in),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()




##########################################################
## SLVT NAND4
##########################################################
# Create a new file
f = open("RO_nand4_slvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with slvt library /////////////////// \n/////////////////// This RO contains 127 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_nand4_slvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between nand gates ///////////////////\n")
f.write("wire ["+str(num_of_stages_nand4-1)+":0] w_nd_Conn;\n\n")

# Assign the first control logic
f.write("nand4_slvt U0(\n.i_nd_1(i_Enable),\n.i_nd_2(i_Sel),\n.i_nd_3(o_RO_out),\n.i_nd_4(o_RO_out),\n.out(w_nd_Conn[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_nand4-2):
    f.write("nand4_slvt U" + str(x+1) + "(\n")
    f.write(".i_nd_1(w_nd_Conn[" + str(x) + "]),\n.i_nd_2(w_nd_Conn[" + str(x) + "]),\n.i_nd_3(w_nd_Conn[" + str(x) + "]),\n.i_nd_4(w_nd_Conn[" + str(x) + "]),\n.out(w_nd_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")
    
# insert last module
x = num_of_stages_nand4-2
f.write("nand4_slvt U" + str(x+1) + "(\n")
f.write(".i_nd_1(w_nd_Conn[" + str(x) + "]),\n.i_nd_2(w_nd_Conn[" + str(x) + "]),\n.i_nd_3(w_nd_Conn[" + str(x) + "]),\n.i_nd_4(w_nd_Conn[" + str(x) + "]),\n.out(o_RO_out)\n")
f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# nand4 cell statement
f.write("module nand4_slvt(\ninput wire i_nd_1,\ninput wire i_nd_2,\ninput wire i_nd_3,\ninput wire i_nd_4,\noutput wire out);\n\n")
# f.write("wire i_nd_1;\n(* dont_touch = 'true' *) wire i_nd_2;\n(* dont_touch = 'true' *) wire i_nd_3;\n(* dont_touch = 'true' *) wire i_nd_4;\n(* dont_touch = 'true' *) wire o_nd; \n\n")
f.write("NAND4_X2R_A9PP84TSL_C14 U0(\n")
f.write(".A(i_nd_1),\n.B(i_nd_2),\n.C(i_nd_3),\n.D(i_nd_4),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()




##########################################################
## LVT NAND4
##########################################################
# Create a new file
f = open("RO_nand4_lvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with lvt library /////////////////// \n/////////////////// This RO contains 127 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_nand4_lvt(\ninput wire i_Enable,\ninput i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between nand gates ///////////////////\n")
f.write("wire ["+str(num_of_stages_nand4-1)+":0] w_nd_Conn;\n\n")

# Assign the first control logic
f.write("nand4_lvt U0(\n.i_nd_1(i_Enable),\n.i_nd_2(i_Sel),\n.i_nd_3(o_RO_out),\n.i_nd_4(o_RO_out),\n.out(w_nd_Conn[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_nand4-2):
    f.write("nand4_lvt U" + str(x+1) + "(\n")
    f.write(".i_nd_1(w_nd_Conn[" + str(x) + "]),\n.i_nd_2(w_nd_Conn[" + str(x) + "]),\n.i_nd_3(w_nd_Conn[" + str(x) + "]),\n.i_nd_4(w_nd_Conn[" + str(x) + "]),\n.out(w_nd_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")
    
# insert last module
x = num_of_stages_nand4-2
f.write("nand4_lvt U" + str(x+1) + "(\n")
f.write(".i_nd_1(w_nd_Conn[" + str(x) + "]),\n.i_nd_2(w_nd_Conn[" + str(x) + "]),\n.i_nd_3(w_nd_Conn[" + str(x) + "]),\n.i_nd_4(w_nd_Conn[" + str(x) + "]),\n.out(o_RO_out)\n")
f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# nand4 cell statement
f.write("module nand4_lvt(\ninput wire i_nd_1,\ninput wire i_nd_2,\ninput wire i_nd_3,\ninput wire i_nd_4,\noutput wire out);\n\n")
# f.write("wire i_nd_1;\n(* dont_touch = 'true' *) wire i_nd_2;\n(* dont_touch = 'true' *) wire i_nd_3;\n(* dont_touch = 'true' *) wire i_nd_4;\n(* dont_touch = 'true' *) wire o_nd; \n\n")
f.write("NAND4_X2R_A9PP84TL_C14 U0(\n")
f.write(".A(i_nd_1),\n.B(i_nd_2),\n.C(i_nd_3),\n.D(i_nd_4),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")


# close file
f.close()



##########################################################
## RVT NAND4
##########################################################
# Create a new file
f = open("RO_nand4_rvt.v","w")

# write timescale and RO top module statement
f.write("/////////////////// Please synthesize this RO with rvt library /////////////////// \n/////////////////// This RO contains 127 stages /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule RO_nand4_rvt(\ninput wire i_Enable,\ninput wire i_Sel,\noutput wire o_RO_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("wire i_Enable;\n(* dont_touch = 'true' *) wire i_Sel;\n(* dont_touch = 'true' *) wire o_RO_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Define wires between nand gates ///////////////////\n")
f.write("wire ["+str(num_of_stages_nand4-1)+":0] w_nd_Conn;\n\n")

# Assign the first control logic
f.write("nand4_rvt U0(\n.i_nd_1(i_Enable),\n.i_nd_2(i_Sel),\n.i_nd_3(o_RO_out),\n.i_nd_4(o_RO_out),\n.out(w_nd_Conn[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_nand4-2):
    f.write("nand4_rvt U" + str(x+1) + "(\n")
    f.write(".i_nd_1(w_nd_Conn[" + str(x) + "]),\n.i_nd_2(w_nd_Conn[" + str(x) + "]),\n.i_nd_3(w_nd_Conn[" + str(x) + "]),\n.i_nd_4(w_nd_Conn[" + str(x) + "]),\n.out(w_nd_Conn[" + str(x+1) + "])\n")
    f.write(");\n\n")
    
# insert last module
x = num_of_stages_nand4-2
f.write("nand4_rvt U" + str(x+1) + "(\n")
f.write(".i_nd_1(w_nd_Conn[" + str(x) + "]),\n.i_nd_2(w_nd_Conn[" + str(x) + "]),\n.i_nd_3(w_nd_Conn[" + str(x) + "]),\n.i_nd_4(w_nd_Conn[" + str(x) + "]),\n.out(o_RO_out)\n")
f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# nand4 cell statement
f.write("module nand4_rvt(\ninput wire i_nd_1,\ninput wire i_nd_2,\ninput wire i_nd_3,\ninput wire i_nd_4,\noutput wire out);\n\n")
# f.write("wire i_nd_1;\n(* dont_touch = 'true' *) wire i_nd_2;\n(* dont_touch = 'true' *) wire i_nd_3;\n(* dont_touch = 'true' *) wire i_nd_4;\n(* dont_touch = 'true' *) wire o_nd; \n\n")
f.write("NAND4_X2R_A9PP84TR_C14 U0(\n")
f.write(".A(i_nd_1),\n.B(i_nd_2),\n.C(i_nd_3),\n.D(i_nd_4),\n.Y(out)\n")
f.write(");\n\n")
f.write("endmodule \n\n")

# close file
f.close()




