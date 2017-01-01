`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:25 05/10/2016 
// Design Name: 
// Module Name:    AB 
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
module AB(
    input clk,
    input [31:0]data1,
    input [31:0]data2,
    output reg[31:0]A,
    output reg[31:0]B
    );
always@(posedge clk)
begin
	A<=data1;
	B<=data2;
end
endmodule
