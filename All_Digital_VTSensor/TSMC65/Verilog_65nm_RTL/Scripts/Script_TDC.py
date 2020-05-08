##########################################################
## Define variable
##########################################################

num_of_stages_TDC = 48

##########################################################
## write verilog file
##########################################################

# Create a new file
f = open("TDC_48step.v","w")

# write timescale and TDC top module statement
f.write("/////////////////// Please synthesize this TDC with rvt library /////////////////// \n/////////////////// This TDC contains 48 steps /////////////////// \n\n")
f.write("`timescale 1ps / 100fs\n\nmodule TDC_" + str(num_of_stages_TDC) +  "steps(\ninput wire i_CLK_Target,\ninput wire i_Clk_Ref,\ninput wire i_RST_p,\noutput wire [" + str(num_of_stages_TDC-1) + ":0] o_TDC_out\n);\n\n")

# declare input and output wires, set dont_touch for synthesis
# f.write("(* dont_touch = 'true' *) wire i_CLK_Target;\n(* dont_touch = 'true' *) wire i_Clk_Ref;\nwire i_RST_p;\nwire [47:0]o_TDC_out;\n\n")

# declare connection wires between logic cells
f.write("/////////////////// Declare wires between cells ///////////////////\n")
f.write("(* dont_touch = 'true' *) wire [" + str(num_of_stages_TDC-1) + ":0]w_Clk_Conn;\n\n")

# Assign the first module
f.write("TDC_cell U0(\n.i_CLK_Target(i_CLK_Target),\n.i_Clk_Ref(i_Clk_Ref),\n.i_RST_p(i_RST_p),\n.o_Clk_Target(w_Clk_Conn[0]),\n.o_TDC_out(o_TDC_out[0])\n);\n\n")

# insert modules
for x in range(num_of_stages_TDC-1):
    f.write("TDC_cell U" + str(x+1) + "(\n")
    f.write(".i_CLK_Target(w_Clk_Conn[" + str(x) + "]),\n.i_Clk_Ref(i_Clk_Ref),\n.i_RST_p(i_RST_p),\n.o_Clk_Target(w_Clk_Conn[" + str(x+1) + "]),\n.o_TDC_out(o_TDC_out[" + str(x+1) + "])\n")
    f.write(");\n\n")

# endmodule
f.write("endmodule\n\n")

# TDC cell statement
f.write("module TDC_cell(\ninput wire i_CLK_Target,\ninput wire i_Clk_Ref,\ninput wire i_RST_p,\noutput wire o_Clk_Target,\noutput reg o_TDC_out\n); \n\n")
# f.write("(* dont_touch = 'true' *) wire i_CLK_Target;\n(* dont_touch = 'true' *) wire i_Clk_Ref;\nwire i_RST_p;\nwire o_Clk_Target;\nwire o_TDC_out; \n\n")
f.write("/////////////////// Declare wires between inverters /////////////////// \n\n")
f.write("(* dont_touch = 'true' *) wire w_Clk_Conn; \n\n")
f.write("assign w_Clk_Conn = ~i_CLK_Target;\nassign o_Clk_Target = ~w_Clk_Conn; \n\n")
f.write("always @ (posedge i_Clk_Ref or posedge i_RST_p)\nbegin\n    if(i_RST_p == 1)\n        o_TDC_out <= 1'b0;\n    else\n        o_TDC_out <= o_Clk_Target;\nend \n\n")
f.write("endmodule \n\n")

# close file
f.close()