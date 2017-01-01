`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:01 04/30/2016 
// Design Name: 
// Module Name:    main 
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
module main(
	input clk,
	input rst
    );
	  
wire [31:0]IR;
wire [31:0]next_pc;
wire [31:0]curr_pc;
wire MemtoReg;
wire MemWrite;
wire Branch;
wire ALUSrc;
wire RegDst;
wire RegWrite;
wire [1:0]ALUOp;
wire [2:0]ALUControl;
wire [31:0]Result;
wire [4:0]WriteReg;
wire [31:0]data1;
wire [31:0]data2;
wire [31:0]signimm;
wire [31:0]SrcB;
wire Zero;
wire [31:0]ALUResult;
wire [31:0]ReadData;
wire [31:0]PCPlus4;
wire [31:0]PCBranch;
wire PCSrc;
wire Jump;
wire [31:0]Jumpaddr;
wire [31:0]nonjump;

pc pc(clk,rst,next_pc,curr_pc);
InstructionMemory InstructionMemory(curr_pc[6:2],IR);
MainDecoder MainDecoder(IR[31:26],MemtoReg,MemWrite,Branch,ALUSrc,RegDst,RegWrite,Jump,ALUOp);
ALUDecoder ALUDecoder(IR[5:0],ALUOp,ALUControl);
regfile regfile(clk,rst,IR[25:21],IR[20:16],WriteReg,Result,RegWrite,data1,data2);
Mux5b Mux1(IR[15:11],IR[20:16],RegDst,WriteReg);			//5bit 写入rs或rt
SignExtend SignExtend(IR[15:0],signimm);
Mux Mux2(signimm,data2,ALUSrc,SrcB);						//32bit
alu ALU(data1,SrcB,ALUControl,Zero,ALUResult);
DataMemory DataMemory(ALUResult[6:2],data2,clk,MemWrite,ReadData);
Mux Mux3(ReadData,ALUResult,MemtoReg,Result);			//32bit

assign PCPlus4=curr_pc+4;
assign PCBranch=(signimm<<2)+PCPlus4;
assign PCSrc=Branch&Zero;
Mux Mux4(PCBranch,PCPlus4,PCSrc,nonjump);					//32bit
assign Jumpaddr[27:0]=IR[25:0]<<2;
assign Jumpaddr[31:28]=PCPlus4[31:28];                //j指令的target address  28nit扩展为32位

Mux Mux5(Jumpaddr,nonjump,Jump,next_pc);

endmodule
