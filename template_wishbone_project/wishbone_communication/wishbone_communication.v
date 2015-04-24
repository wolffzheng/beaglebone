`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:00 04/24/2015 
// Design Name: 
// Module Name:    wishbone_communication 
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
module wishbone_communication(
	 input OSC_FPGA,
    inout [15:0] GPMC_AD,
    input GPMC_CSN,
    input GPMC_OEN,
    input GPMC_WEN,
    input GPMC_ADVN,
    input GPMC_CLK,
    output [15:0] GPIO_OUT
    );

communication u1 (.ARD_SCL(),.ARD_SDA(),.ARD(),.LED(),
					.PB(),.SW(),.PMOD1(),.PMOD2(),.GPMC_CLK(GPMC_CLK),
					.GPMC_CSN(GPMC_CSN),.GPMC_ADVN(GPMC_ADVN),.GPMC_OEN(GPMC_OEN),
					.GPMC_WEN(GPMC_WEN),.GPMC_AD(GPMC_AD),.OSC_FPGA(OSC_FPGA),
					.GPIO_OUT(GPIO_OUT));

endmodule
