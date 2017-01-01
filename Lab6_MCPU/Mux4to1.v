`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:39 05/10/2016 
// Design Name: 
// Module Name:    Mux4to1 
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
module Mux4to1(
    input [31:0]a,
    input [31:0]b,
	 input [31:0]c,
	 input [31:0]d,
    input [1:0]sw,
    output reg [31:0]out
    );
always@(*)
begin
	case(sw)
		2'b00:	out<=a;
		2'b01:	out<=b;
		2'b10:	out<=c;
		2'b11:	out<=d;
		default: out<=32'b0;
	endcase
end
endmodule