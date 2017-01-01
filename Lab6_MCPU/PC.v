`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:53 05/10/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(
	input clk,
	input rst,
	input [31:0]next_PC,
	input en,
	output reg [31:0]curr_PC
    );

always@(posedge clk or negedge rst)
begin
	if(~rst)curr_PC<=0;
	else if(en)
		curr_PC<=next_PC;
	else curr_PC<=curr_PC;
end

endmodule
