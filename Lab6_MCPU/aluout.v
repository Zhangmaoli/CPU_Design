`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:42 05/10/2016 
// Design Name: 
// Module Name:    aluout 
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
module aluout(
    input clk,
    input [31:0]ALUResult,
    output reg[31:0]ALUOut
    );
always@(posedge clk)
begin
	ALUOut<=ALUResult;
end

endmodule
