`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:52 04/30/2016 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
	input clk,
	input rst,
	input [4:0]a1,
	input [4:0]a2,
	input [4:0]a3,
	input [31:0]wd,
	input we,
	output [31:0]rd1,
	output [31:0]rd2
	);

reg [31:0]r[31:0];

assign rd1=r[a1];
assign rd2=r[a2];
integer i;
always@(posedge clk or negedge rst)
begin
	if(~rst)
	begin
		for(i=0;i<32;i=i+1)
			r[i]<=0;
	end
	else if(we)
		r[a3]<=wd;
end

endmodule
