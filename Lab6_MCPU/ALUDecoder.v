`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:04 05/10/2016 
// Design Name: 
// Module Name:    ALUDecoder 
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
module ALUDecoder(
	input [5:0]Funct,
	input [1:0]ALUOp,
	output reg [2:0]ALUControl
    );

always@(*)
begin
	case(ALUOp)
		2'b00:	ALUControl<=3'b010;
		2'b01:	ALUControl<=3'b110;
		2'b10:
		begin
			case(Funct)
				6'b100000: ALUControl<=3'b010;
				6'b100010: ALUControl<=3'b110;
				6'b100100: ALUControl<=3'b000;
				6'b100101: ALUControl<=3'b001;
				6'b101010: ALUControl<=3'b111;
				default:	  ALUControl<=3'b000;
			endcase
		end
		2'b11:	ALUControl<=3'b111;
		default: ALUControl<=3'b000;
	endcase
end
endmodule