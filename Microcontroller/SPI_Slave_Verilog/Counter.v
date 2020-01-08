`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:47 06/27/2019 
// Design Name: 
// Module Name:    VTCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Counter
#(parameter DATA_LEN = 16)
(
    input wire	i_En_H,						// Count enable input
    input wire	i_Signal,					// signal under counting
	 input wire i_cnt_window,				// Counting window is the same as period, send data out every posedge
    input wire	i_Rst_L,						// FPGA reset
	 output reg [DATA_LEN-1:0] o_Data,				// Counted number output
	 output reg	o_TX_DV						// Data Valid pulse to regsiter o_Data
    );
	 

reg [DATA_LEN-1:0] r_sgn_cnt;
reg [DATA_LEN-1:0] r_sgn_cnt_rcd;

reg r_cnt_interupt;
reg r_cnt_interupt_rcd;

// Initializaiton
initial
begin
	
	r_sgn_cnt <= 0;
	r_sgn_cnt_rcd <= 0;
	r_cnt_interupt <= 1'b0;
	r_cnt_interupt_rcd <= 1'b0;
	o_TX_DV <= 1'b0;
	
end

// Counting for i_Signal

always @ (posedge i_Signal or negedge i_Rst_L)
begin

	if(i_Rst_L == 1'b0)
	begin
	
		r_sgn_cnt <= 0;
		o_TX_DV <= 1'b0;
		r_cnt_interupt_rcd <= 0;
		
	end
	else
	if(i_En_H == 1'b1)
	begin
	
		if(r_cnt_interupt == r_cnt_interupt_rcd)
		begin
			
			r_sgn_cnt <= r_sgn_cnt + 1;
			r_sgn_cnt_rcd <= r_sgn_cnt;
			o_TX_DV <= 1'b0;
			
		end
		else if(r_cnt_interupt != r_cnt_interupt_rcd)
		begin
			
			r_sgn_cnt <= 1;
			o_TX_DV <= 1'b1;
			r_cnt_interupt_rcd <= r_cnt_interupt;
			
		end
		
	end

end

// counting window interupt

always @ (posedge i_cnt_window or negedge i_Rst_L)
begin

	if(i_Rst_L == 1'b0)
	begin
	
		o_Data <= 0;
		
	end
	else
	if(i_En_H == 1'b1)
	begin
			
		o_Data <= r_sgn_cnt_rcd;		// prepare send to SPI slave
		r_cnt_interupt <= ~r_cnt_interupt;
		
	end

end

endmodule


