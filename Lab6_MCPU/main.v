`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:33 05/10/2016 
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
wire [31:0]pc;
wire [31:0]npc;
wire [5:0]opcode;
wire MemtoReg;
wire RegDst;
wire lorD;
wire [1:0]PCSrc;
wire [1:0]ALUSrcB;
wire ALUSrcA;
wire IRWrite;
wire MemWrite;
wire PCWrite;
wire Branch;
wire RegWrite;
wire [1:0]ALUOp;
wire [2:0]ALUControl;
wire [5:0]Adr;
wire [31:0]A;
wire [31:0]B;
wire [31:0]ir;
wire [31:0]instr;
wire [4:0]A3;
wire [31:0]data1;
wire [31:0]data2;
wire [31:0]dat;
wire [31:0]SrcA;
wire [31:0]SrcB;
wire [31:0]ALUOut;
wire Zero;
wire [31:0]ALUResult;
wire PCEn;
wire [31:0]WD3;
wire [31:0]SignImm;

PC PC(clk,rst,npc,PCEn,pc);
Mux6bit Mux1(pc[7:2],ALUOut[7:2],lorD,Adr);//£¿b:a
Memory Memory(clk,MemWrite,Adr,B,ir);
IR IR(clk,rst,IRWrite,ir,instr);
RegisterFile RegisterFile(clk,rst,instr[25:21],instr[20:16],A3,WD3,RegWrite,data1,data2);
Mux5bit Mux2(instr[20:16],instr[15:11],RegDst,A3);//?b:a
AB AB(clk,data1,data2,A,B);
data data(clk,ir,dat);
Mux32bit Mux3(ALUOut,dat,MemtoReg,WD3);//?b:a
MainDecoder MainDecoder(clk,rst,instr[31:26],MemtoReg,RegDst,lorD,PCSrc,ALUSrcB,ALUSrcA,IRWrite,MemWrite,PCWrite,Branch,RegWrite,ALUOp);
ALUDecoder ALUDecoder(instr[5:0],ALUOp,ALUControl);
Mux32bit Mux4(pc,A,ALUSrcA,SrcA);
SignExtend SignExtend(instr[15:0],SignImm);
Mux4to1 Mux5(B,32'h4,SignImm,SignImm<<2,ALUSrcB,SrcB);

ALU ALU(SrcA,SrcB,ALUControl,Zero,ALUResult);
aluout aluout(clk,ALUResult,ALUOut);
Mux4to1 Mux6(ALUResult,ALUOut,pc,32'b0,PCSrc,npc);

assign PCEn=PCWrite|(Branch&Zero);
endmodule
