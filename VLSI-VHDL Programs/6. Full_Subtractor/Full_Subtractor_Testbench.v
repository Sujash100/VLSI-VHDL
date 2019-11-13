`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:46:44 02/01/2019
// Design Name:   Full_Subtractor
// Module Name:   H:/VLSI Final Codes/Full_Subtractor/Full_Subtractor_Testbench.v
// Project Name:  Full_Subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Subtractor_Testbench;

	// Inputs
	reg A;
	reg B;
	reg Bin;

	// Outputs
	wire D;
	wire Bout;

	// Instantiate the Unit Under Test (UUT)
	Full_Subtractor uut (
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
		A=0; B=0; Bin=0; #10
		A=0; B=0; Bin=1; #10
		A=0; B=1; Bin=0; #10
		A=0; B=1; Bin=1; #10
		A=1; B=0; Bin=0; #10
		A=1; B=0; Bin=1; #10
		A=1; B=1; Bin=0; #10
		A=1; B=1; Bin=1; 

	end
      
endmodule

