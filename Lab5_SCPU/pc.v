`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:28 04/30/2016 
// Design Name: 
// Module Name:    pc 
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
module pc(
	input clk,
	input rst,
	input [31:0]next_pc,
	output reg [31:0]curr_pc
    );

always@(posedge clk or negedge rst)
begin
	if(~rst)curr_pc<=0;
	else
	curr_pc<=next_pc;
end
endmodule
