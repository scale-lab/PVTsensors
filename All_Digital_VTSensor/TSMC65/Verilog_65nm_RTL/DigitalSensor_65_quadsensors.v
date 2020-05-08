`timescale 1ps/100fs

module DigitalVTSensor_chip_quadsensors_V8(
    input wire RSTLOW_PAD,
    input wire SPI_MOSI_PAD,
    input wire SPI_CLK_PAD,
    input wire SPI_CS_PAD,
    input wire ENABLE_DUMMY_RO_PAD,
    input wire SPI_CTRL_PAD,
    output wire SPI_MISO_PAD,
    // SPI ports reserved for mc
    input wire SPI_MOSI_UC,
    input wire SPI_CLK_UC,
    input wire SPI_CS_UC,
    output wire SPI_MISO_UC
);

// assign wires after pads 
wire [2:0]SPI_Conn;

// control logic for dummy_ro_en
assign Enable_Dummy_RO = ENABLE_DUMMY_RO_PAD & RSTLOW_PAD;

// control logic for SPI wires
assign SPI_CTRL = RSTLOW_PAD & SPI_CTRL_PAD;
assign SPI_CS = SPI_CTRL ? SPI_CS_UC : SPI_CS_PAD;
assign SPI_CLK = SPI_CTRL ? SPI_CLK_UC : SPI_CLK_PAD;
assign SPI_MOSI = SPI_CTRL ? SPI_MOSI_UC : SPI_MOSI_PAD;

// calling sensors
DigitalVTSensor_Top_V3_WDummy DVTS0(
	.RSTLOW(RSTLOW_PAD), 
    .Enable_Dummy_RO(Enable_Dummy_RO),
	.SPI_MOSI(SPI_MOSI), 
	.SPI_CLK(SPI_CLK), 
	.SPI_CS(SPI_CS), 
	.SPI_MISO(SPI_Conn[0])
);

DigitalVTSensor_Top_V3_WDummy DVTS1(
	.RSTLOW(RSTLOW_PAD), 
    .Enable_Dummy_RO(Enable_Dummy_RO),
	.SPI_MOSI(SPI_Conn[0]), 
	.SPI_CLK(SPI_CLK), 
	.SPI_CS(SPI_CS), 
	.SPI_MISO(SPI_Conn[1])
);

DigitalVTSensor_Top_V3_WDummy DVTS2(
	.RSTLOW(RSTLOW_PAD), 
    .Enable_Dummy_RO(Enable_Dummy_RO),
	.SPI_MOSI(SPI_Conn[1]), 
	.SPI_CLK(SPI_CLK), 
	.SPI_CS(SPI_CS), 
	.SPI_MISO(SPI_Conn[2])
);

DigitalVTSensor_Top_V3_WDummy DVTS3(
	.RSTLOW(RSTLOW_PAD), 
    .Enable_Dummy_RO(Enable_Dummy_RO),
	.SPI_MOSI(SPI_Conn[2]), 
	.SPI_CLK(SPI_CLK), 
	.SPI_CS(SPI_CS), 
	.SPI_MISO(SPI_MISO_PAD)
);


endmodule