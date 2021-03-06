`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:17 06/04/2016 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile(//�Ĵ����ļ�
    input clk,    input rst_n,    input [4:0]   r1_addr,    input [4:0]	r2_addr,    input [4:0]	r3_addr,    input [31:0]  r3_din,    input r3_wr,    output  [31:0]	r1_dout,	    output  [31:0]	r2_dout    );

  reg [31:0] mem [31:0];
  integer i;
  
  assign r1_dout = mem[r1_addr];
  assign r2_dout = mem[r2_addr];
  
  always @(posedge clk or negedge rst_n)
  begin 
    if(~rst_n)
	 begin
		for(i=0; i<=31;i=i+1)
		  mem[i]<=0;
	 end
	
	else
	   begin
		if(r3_wr)
	    mem[r3_addr]<= r3_din;
	   else
	    mem[r3_addr]<= mem[r3_addr];
		end
  end
		  
endmodule

