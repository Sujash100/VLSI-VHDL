`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:55 02/01/2019
// Design Name:   Comprator
// Module Name:   H:/VLSI Final Codes/Comprator_3_Bit/Comprator_3_Bit_Testbench.v
// Project Name:  Comprator_3_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comprator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comprator_3_Bit_Testbench;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;

	// Outputs
	wire L;
	wire E;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	Comprator uut (
		.A(A), 
		.B(B), 
		.L(L), 
		.E(E), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		A=3'b000; B=3'b000; #10
		A=3'b000; B=3'b001; #10
		A=3'b001; B=3'b000; #10
		A=3'b100; B=3'b010; #10
		A=3'b100; B=3'b011; #10
		A=3'b100; B=3'b110; #10
		A=3'b110; B=3'b100; 

	end
      
endmodule

