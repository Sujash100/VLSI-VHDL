`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:03:39 02/01/2019
// Design Name:   Multiplier_4x4
// Module Name:   H:/VLSI Final Codes/Multiplier_4x4/Multiplier_4x4_testbench.v
// Project Name:  Multiplier_4x4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier_4x4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplier_4x4_testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] C;

	// Instantiate the Unit Under Test (UUT)
	Multiplier_4x4 uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		A=4'b1010; B=4'b1011; #10
		A=4'd12; B=4'd3;
	end
      
endmodule

