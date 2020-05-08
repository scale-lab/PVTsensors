/////////// This is the testbench for the Digital VT sensor ///////////
`timescale 1ps / 100fs

module Digital_VT_tb;

//////////// Delcaring wires & registers ////////////
reg SPI_CS, SPI_CLK_Continuous, SPI_MOSI;
reg RSTLOW;
wire ROMUX_out, ENABLE_RO, SPI_MISO;
wire [63:0] RXDATA;

wire SPI_CLK;
reg SPI_CLK_En;
reg Enable_Dummy_RO;

wire w_Enable_Dummy_RO;

assign SPI_CLK = SPI_CLK_Continuous & SPI_CLK_En;
assign w_Enable_Dummy_RO = Enable_Dummy_RO;

//////////// Call TDU top level ////////////
DigitalVTSensor_Top_V3_WDummy TDU(
.RSTLOW(RSTLOW),
.SPI_MOSI(SPI_MOSI),
.SPI_CLK(SPI_CLK),
.SPI_CS(SPI_CS),
.SPI_MISO(SPI_MISO),
.Enable_Dummy_RO(w_Enable_Dummy_RO)
);

//////////// testbench ////////////
initial 
begin
    RSTLOW = 1'b0;
    SPI_CS = 1'b1;
    SPI_MOSI = 1'b0;
    SPI_CLK_En = 1'b0;
    SPI_CLK_Continuous = 1'b1;
    Enable_Dummy_RO = 1'b0;

    // 1st SPI session (+800ns)
    #5000           // after 5ns, rst goes low (5n)
    RSTLOW = 1'b1;

    #1000           // after 1ns, CS goes low, starting the test (6n)
    SPI_CS = 1'b0;

    #2000           // after 2ns, SPI_CLK_En goes high, enables the SPI Clk (8n)
    SPI_CLK_En = 1'b1;

    //  [59] = 1'b1, 5th clock edge, set the SPI clock counter to 32
    #40000         // after 310ns(2 to 50ns, the 5th pos-edge), input a 1'b1 (48n)
    SPI_MOSI = 1'b1;

    #9000         // after 9ns(2 after 50ns, the 5th neg-edge), changes back to 1'b0 (57n)
    SPI_MOSI = 1'b0;

    //  [32] = 1'b1, 32nd clock edge, enables R1
    #261000         // after 310ns(2 to 320ns, the 32nd pos-edge), input a 1'b1 (318n)
    SPI_MOSI = 1'b1;

    #9000         // after 9ns(2 after 325nns, the 32nd neg-edge), changes back to 1'b0 (327n)
    SPI_MOSI = 1'b0;
    
    #320000         // after 280ns, SPI_CLK_En goes low to ensure 64 periods (640ns for 640 edges, 5ns for the last lower edge, 2ns of later headroom) (647n)
    SPI_CLK_En = 1'b0;

    #1000           // after 1ns, CS goes high (648n)
    SPI_CS = 1'b1;

    // until here the timing is 648ns, the 1st SPI slot is over
    #152000           // compensate to 800ns

    // Repeat SPI session (+800ns)
    #6000           // after 6ns, CS goes low, starting the test (6n)
    SPI_CS = 1'b0;

    #2000           // after 2ns, SPI_CLK_En goes high, enables the SPI Clk (8n)
    SPI_CLK_En = 1'b1;

    //  [59] = 1'b1, 5th clock edge, set the SPI clock counter to 32
    #40000         // after 310ns(2 to 50ns, the 5th pos-edge), input a 1'b1 (48n)
    SPI_MOSI = 1'b1;

    #9000         // after 9ns(2 after 50ns, the 5th neg-edge), changes back to 1'b0 (57n)
    SPI_MOSI = 1'b0;

    //  [32] = 1'b1, 32nd clock edge, enables R1
    #261000         // after 310ns(2 to 320ns, the 32nd pos-edge), input a 1'b1 (318n)
    SPI_MOSI = 1'b1;

    #9000         // after 9ns(2 after 325nns, the 32nd neg-edge), changes back to 1'b0 (327n)
    SPI_MOSI = 1'b0;
    
    #320000         // after 280ns, SPI_CLK_En goes low to ensure 64 periods (640ns for 640 edges, 5ns for the last lower edge, 2ns of later headroom) (647n)
    SPI_CLK_En = 1'b0;

    #1000           // after 1ns, CS goes high (648n)
    SPI_CS = 1'b1;

    // until here the timing is 648ns, the 2nd SPI slot is over
    #152000           // compensate to 800ns

    // Repeat SPI session (+1600ns)
    #6000           // after 6ns, CS goes low, starting the test (6ns)
    SPI_CS = 1'b0;

    #2000           // after 2ns, SPI_CLK_En goes high, enables the SPI Clk (8n)
    SPI_CLK_En = 1'b1;

    //  [59] = 1'b1, 5th clock edge, set the SPI clock counter to 32
    #40000         // after 310ns(2 to 50ns, the 5th pos-edge), input a 1'b1 (48n)
    SPI_MOSI = 1'b1;

    #9000         // after 9ns(2 after 50ns, the 5th neg-edge), changes back to 1'b0 (57n)
    SPI_MOSI = 1'b0;

    //  [32] = 1'b1, 32nd clock edge, enables R1
    #261000         // after 310ns(2 to 320ns, the 32nd pos-edge), input a 1'b1 (318n)
    SPI_MOSI = 1'b1;

    #9000         // after 9ns(2 after 325nns, the 32nd neg-edge), changes back to 1'b0 (327n)
    SPI_MOSI = 1'b0;
    
    #320000         // after 280ns, SPI_CLK_En goes low to ensure 64 periods (640ns for 640 edges, 5ns for the last lower edge, 2ns of later headroom) (647n)
    SPI_CLK_En = 1'b0;

    #1000           // after 1ns, CS goes high (648n)
    SPI_CS = 1'b1;

    // until here the timing is 648ns, the 3rd SPI slot is over
    //#152000           // compensate to 800ns
    //$finish

end

always 
begin
    #5000 SPI_CLK_Continuous = ~SPI_CLK_Continuous;      // 100MHz Continuous SPI Clk
end

endmodule

