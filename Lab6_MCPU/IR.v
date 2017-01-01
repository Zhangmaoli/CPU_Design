`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:30 05/10/2016 
// Design Name: 
// Module Name:    IR 
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
module IR(
	input clk,
	input rst,
	input en,
	input [31:0]next_instr,
	output reg [31:0]instr
    );

always@(posedge clk or negedge rst)
begin
	if(~rst)instr<=0;
	else if(en)
		instr<=next_instr;
	else instr<=instr;
end


endmodule
