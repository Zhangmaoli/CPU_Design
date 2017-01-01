`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:58 05/10/2016 
// Design Name: 
// Module Name:    data 
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
module data(
    input clk,
    input [31:0]instr,
    output reg [31:0]data
    );

always@(negedge clk)
begin
	data<=instr;
end
endmodule
