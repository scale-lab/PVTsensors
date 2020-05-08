#######################################
# Define variable
#######################################
# define how many dummy ROs needed, maximum 32*8
dummy_cnt = 512

#######################################
# Create file
#######################################
# Create a new file
f = open("Dummy_RO_Top.v","w")

# write the top of the module
f.write("`timescale 1ps / 100fs\n\n")
f.write("module Dummy_RO_Top(\n")
f.write("input wire i_Enable,\n")
f.write("input wire [31:0] i_Sel\n")
f.write(");\n\n")

f.write("//////////////// Dummy ROs ////////////////\n\n")
wire_share = int(dummy_cnt/32)
for i in range(32):
    for j in range(wire_share):
        f.write("Dummy_RO_cell D" + str(j+i*wire_share) + "(\n")
        f.write(".i_Enable(Enable_Dummy_RO),\n")
        f.write(".i_Sel(i_Sel[" + str(i) + "])\n")
        f.write(");\n\n")

f.write("endmodule \n\n")

f.close()