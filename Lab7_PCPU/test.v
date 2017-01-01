`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:02 06/05/2016
// Design Name:   PCPU_main
// Module Name:   D:/Verilog HDL/Lab7_PCPU/test.v
// Project Name:  Lab7_PCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCPU_main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg rst_n;

	// Outputs
	wire [6:0] PCF;

	// Instantiate the Unit Under Test (UUT)
	PCPU_main uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.PCF(PCF)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst_n = 1;
		
		// Add stimulus here

	end
     always#5  clk<=~clk; 
endmodule

