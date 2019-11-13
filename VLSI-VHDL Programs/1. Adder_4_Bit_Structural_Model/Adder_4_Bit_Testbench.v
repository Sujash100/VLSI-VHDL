`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:30:54 02/01/2019
// Design Name:   Adder_4_Bit
// Module Name:   H:/VLSI Final Codes/Adder_4_Bit_Structural_Model/Adder_4_Bit_Testbench.v
// Project Name:  Adder_4_Bit_Structural_Model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_4_Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_4_Bit_Testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Adder_4_Bit uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
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
		A=4'b1000; B=4'b0010; Cin=0; #10
		A=4'b1000; B=4'b1000; Cin=1; #10
		A=4'b0010; B=4'b1000; Cin=0; #10
		A=4'b0001; B=4'b0111; Cin=0; #10
		A=4'b1010; B=4'b1011; Cin=1; #10
		A=4'b1110; B=4'b1111; Cin=1; #10
		A=4'b1010; B=4'b1101; Cin=1; 
	end
endmodule

