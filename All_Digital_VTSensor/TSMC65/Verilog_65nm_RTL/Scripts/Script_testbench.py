import numpy as np

def dec2bin(dec_num, bit_wide=8):
    bin_num = np.zeros([bit_wide])
    for i in range(bit_wide):
        if (dec_num - np.power(2,bit_wide-i-1)) >= 0:
            bin_num[i] = 1
            dec_num = dec_num - np.power(2,bit_wide-i-1)
        else:
            bin_num[i] = 0
    return bin_num

def data_transform(dummy_cnt, RO_num, spi_cnt):
    
    data_sent_in = np.zeros([64])
    data_sent_in[(64-dummy_cnt):64] = 1
    data_sent_in[0:8] = dec2bin(spi_cnt, bit_wide=8)
    data_sent_in[8:16] = dec2bin((RO_num-1), bit_wide=8)
    data_sent_in[(32 - RO_num)] = 1
    print("data_sent_in[0:8]:",dec2bin(spi_cnt, bit_wide=8))
    print("data_sent_in[8:16]:",dec2bin((RO_num-1), bit_wide=8))
    print("data_sent_in:\n",data_sent_in)
    return data_sent_in

##############################################
############ initalize variables
##############################################
sensor_cnt = 4
dummy_cnt = 32      # how many dummies to turn on
RO_num = 3          # select from R1 - R9
spi_cnt = 18        # where spi counter stop
time = 0            # unit in ps
number_of_turns = 3
scale = 1000         # scaling up the timing

data_sent_in = data_transform(dummy_cnt, RO_num, spi_cnt)
clk_en_period = 64 * sensor_cnt

##############################################
############ write testbench for sensor testing 
##############################################
f = open("testbench_tmp.v","w")

f.write("/////////// This is the testbench for the Digital VT sensor ///////////\n")
f.write("/////////// This is a temperory file, please maek sure to change name ///////////\n")

f.write("`timescale 1ps / 100fs \n")

# declare tb module
f.write("module Digital_VT_tb; \n")

# Delcaring wires & registers 
f.write("\n//////////// Delcaring wires & registers ////////////\n")

f.write("reg SPI_CLK_En, SPI_CLK_Continuous;\n")
f.write("reg RSTLOW_offchip;\n")
f.write("reg SPI_MOSI_offchip;\n")
f.write("reg SPI_CS_offchip;\n")
f.write("reg SPI_CTRL_offchip;\n")
f.write("reg ENABLE_DUMMY_RO_offchip;\n\n")

f.write("wire SPI_MISO_PAD;\n")
f.write("wire SPI_CLK_PAD;\n")
f.write("wire RSTLOW_PAD;\n")
f.write("wire SPI_MOSI_PAD;\n")
f.write("wire SPI_CS_PAD;\n")
f.write("wire SPI_CTRL_PAD;\n")
f.write("wire ENABLE_DUMMY_RO_PAD;\n\n")

# SPI clock logic assignment
f.write("assign SPI_CLK_PAD = SPI_CLK_Continuous & SPI_CLK_En;\n")
f.write("assign SPI_MOSI_PAD = SPI_MOSI_offchip;\n")
f.write("assign RSTLOW_PAD = RSTLOW_offchip;\n")
f.write("assign SPI_CS_PAD = SPI_CS_offchip;\n")
f.write("assign SPI_CTRL_PAD = SPI_CTRL_offchip;\n")
f.write("assign ENABLE_DUMMY_RO_PAD = ENABLE_DUMMY_RO_offchip;\n")

# Call TDU top level
f.write("\n//////////// Call TDU top level ////////////\n")
f.write("PVTEYE TDU(\n")
f.write(".RSTLOW_PAD(RSTLOW_PAD), \n")
f.write(".SPI_MOSI_PAD(SPI_MOSI_PAD), \n")
f.write(".SPI_CLK_PAD(SPI_CLK_PAD), \n")
f.write(".SPI_CS_PAD(SPI_CS_PAD), \n")
f.write(".ENABLE_DUMMY_RO_PAD(ENABLE_DUMMY_RO_PAD), \n")
f.write(".SPI_CTRL_PAD(SPI_CTRL_PAD), \n")
f.write(".SPI_MISO_PAD(SPI_MISO_PAD), \n")
f.write(".SPI_MOSI_UC(1'b1), \n")
f.write(".SPI_MISO_UC(), \n")
f.write(".SPI_CS_UC(1'b1), \n")
f.write(".SPI_CLK_UC(1'b1) \n")
f.write(");\n")

# testbench
f.write("\n//////////// testbench ////////////\n")
f.write("initial \n")
f.write("begin\n")
f.write("    RSTLOW_offchip = 1'b0;\n")
f.write("    SPI_CS_offchip = 1'b1;\n")
f.write("    SPI_MOSI_offchip = 1'b0;\n")
f.write("    SPI_CLK_En = 1'b0;\n")
f.write("    SPI_CLK_Continuous = 1'b1;\n")
f.write("    ENABLE_DUMMY_RO_offchip = 1'b0;\n")
f.write("    SPI_CTRL_offchip = 1'b0;\n")
time = time + 50        # now is negedge
f.write("    #" + str(50 * scale) + " RSTLOW_offchip = 1'b1;      // after 5ns, rst goes low (50n)\n")

for t in range(number_of_turns):
    if t == number_of_turns - 1:        # turn on dummy ROs
        f.write("    #" + str(0 * scale) + " ENABLE_DUMMY_RO_offchip = 1'b1;\n")
        f.write("    #" + str(0 * scale) + " SPI_CTRL_offchip = 1'b1;\n")
    
    time = time + 100
    f.write("    #" + str(100 * scale) + " SPI_CS_offchip = 1'b0;\n")

    time = time + 20
    f.write("    #" + str(20 * scale) + " SPI_CLK_En = 1'b1;\n")

    for s in range(sensor_cnt):
        for i in range(64):
            input_bit = data_sent_in[i]
            f.write("    #" + str(20 * scale) + " SPI_MOSI_offchip = 1'b" + str(int(input_bit)) + ";\n")    # 10ns before posedge
            f.write("    #" + str(80 * scale) + " SPI_MOSI_offchip = 1'b0;\n")                              # 20ns after negedge
            if (i == 63) and (s == 3):      # shut down clock
                f.write("    #" + str(0 * scale) + " SPI_CLK_En = 1'b0;\n") 
            time = time + 100
    time = time + 30        # back to posedge
    f.write("    #" + str(30 * scale) + " SPI_CLK_En = 1'b0;\n")    # 30ns, compensate for the offset

    time = time + 50        # now is negedge
    f.write("    #" + str(50 * scale) + " SPI_CS_offchip = 1'b1;\n")

    time = time + 1000
    f.write("    #" + str(1000 * scale) + " SPI_CS_offchip = 1'b1;\n")

f.write("end\n")
print("simulation duration (ns):",time*scale/1000)

# SPI clock
f.write("\n//////////// clock source ////////////\n")
f.write("always \n")
f.write("begin\n")
f.write("    #" + str(50 * scale) + " SPI_CLK_Continuous = ~SPI_CLK_Continuous;\n") # 100ns period
f.write("end\n")

# end testbench
f.write("endmodule\n")

f.close()