`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:53 04/30/2016 
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
module ALUDecoder(//ALUcontrol
	input [5:0]Funct,
	input [1:0]ALUOp,
	output reg [2:0]ALUControl
    );

always@(*)
begin
	case(ALUOp)
		2'b00:	ALUControl<=3'b010;//LW¡¢SW¡¢addi¡¢j   add
		2'b01:	ALUControl<=3'b110;//beg   sub
		2'b10://RType
		begin
			case(Funct)
				6'b100000: ALUControl<=3'b010;//add rs+rt->rd
				6'b100010: ALUControl<=3'b110;//sub rs-rt¡ª>rd
				6'b100100: ALUControl<=3'b000;//add
				6'b100101: ALUControl<=3'b001;//or
				6'b101010: ALUControl<=3'b111;//slt (rs<rt)->rd,ÓÐ·ûºÅ±È½Ï
				default:	  ALUControl<=3'b000;
			endcase
		end
		2'b11:	ALUControl<=3'b111;//bgtz  solt
		default: ALUControl<=3'b000;
	endcase
end
endmodule
