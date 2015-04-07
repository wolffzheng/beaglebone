`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:38 03/31/2015 
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
    inout W_ARD_SCL,
    inout W_ARD_SDA,
    inout [5:0] W_ARD,
    output [1:0] W_LED,
    input [1:0] W_PB,
    input [1:0] W_SW,
    inout [7:0] W_PMOD1,
    inout [7:0] W_PMOD2,
    input W_GPMC_CLK,
    input W_GPMC_CSN,
    input W_GPMC_ADVN,
    input W_GPMC_OEN,
    input W_GPMC_WEN,
    inout [15:0] W_GPMC_AD,
    input W_OSC_FPGA
    );
wire [1:0] tmp;

wishbone_gpio_6 u1(.ARD_SCL(W_ARD_SCL),.ARD_SDA(W_ARD_SDA),.ARD(W_ARD),.LED(tmp),
					.PB(W_PB),.SW(W_SW),.PMOD1(W_PMOD1),.PMOD2(W_PMOD2),.GPMC_CLK(W_GPMC_CLK),
					.GPMC_CSN(W_GPMC_CSN),.GPMC_ADVN(W_GPMC_ADVN),.GPMC_OEN(W_GPMC_OEN),
					.GPMC_WEN(W_GPMC_WEN),.GPMC_AD(W_GPMC_AD),.OSC_FPGA(W_OSC_FPGA),.gpio_out(W_LED));

endmodule
