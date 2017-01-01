`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:11 06/04/2016 
// Design Name: 
// Module Name:    MemtoRegW_MUX 
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
module MemtoRegW_MUX(
   input MemtoRegW,
	input [31:0]ReadDataW,
	input [31:0]ALUOutW,
	output [31:0]ResultW
    );
 assign ResultW = (~MemtoRegW)?ALUOutW:ReadDataW;

endmodule
