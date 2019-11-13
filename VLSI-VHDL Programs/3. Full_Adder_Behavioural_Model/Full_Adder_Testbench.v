`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:59:08 02/01/2019
// Design Name:   Full_Adder
// Module Name:   H:/VLSI Final Codes/Full_Adder_Behavioural_Model/Full_Adder_Testbench.v
// Project Name:  Full_Adder_Behavioural_Model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Adder_Testbench;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		//#100;
		// Add stimulus here
		A=0;B=0;Cin=0;#10
		A=0;B=0;Cin=1;#10
		A=0;B=1;Cin=0;#10
		A=0;B=1;Cin=1;#10
		A=1;B=0;Cin=0;#10
		A=1;B=0;Cin=1;#10
		A=1;B=1;Cin=0;#10
		A=1;B=1;Cin=1;
	end
endmodule

