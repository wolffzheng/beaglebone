`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:30 04/24/2015 
// Design Name: 
// Module Name:    top 
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
module top(
    inout [15:0] GPMC_AD,
    input GPMC_CSN,
    input GPMC_OEN,
    input GPMC_WEN,
    input GPMC_ADVN,
    input GPMC_CLK,
    input OSC_FPGA,
    output [1:0] LED
    );
	 
wire [15:0] gpio;
wishbone_communication uu1(.GPMC_CLK(GPMC_CLK),.GPMC_CSN(GPMC_CSN),
					.GPMC_ADVN(GPMC_ADVN),.GPMC_OEN(GPMC_OEN),
					.GPMC_WEN(GPMC_WEN),.GPMC_AD(GPMC_AD),.OSC_FPGA(OSC_FPGA),
					.GPIO_OUT(gpio));

assign LED=gpio[1:0];

endmodule
