`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:29:39 02/01/2019
// Design Name:   Subtractor_4_Bit
// Module Name:   H:/VLSI Final Codes/Subtractor_4_Bit/Subtractor_Testbench.v
// Project Name:  Subtractor_4_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Subtractor_4_Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Subtractor_Testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Bin;

	// Outputs
	wire [3:0] D;
	wire Bout;

	// Instantiate the Unit Under Test (UUT)
	Subtractor_4_Bit uut (
		.A(A), 
		.B(B), 
		.Bin(Bin), 
		.D(D), 
		.Bout(Bout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Bin = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		A=4'b0000; B=4'b0000; Bin=4'b0000; #10
		A=4'b1110; B=4'b1111; Bin=4'b0000; #10
		A=4'b1110; B=4'b1100; Bin=4'b0000; #10
		A=4'b1110; B=4'b1100; Bin=4'b0001;
	end   
endmodule

