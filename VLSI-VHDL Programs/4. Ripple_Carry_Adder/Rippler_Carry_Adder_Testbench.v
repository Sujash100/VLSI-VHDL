`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:37:28 02/01/2019
// Design Name:   Adder_4_Bit
// Module Name:   H:/VLSI Final Codes/Ripple_Carry_Adder/Rippler_Carry_Adder_Testbench.v
// Project Name:  Ripple_Carry_Adder
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

module Rippler_Carry_Adder_Testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Adder_4_Bit uut (
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
		A=4'b0000; B=4'b0000; Cin=0; #10
		A=4'b0000; B=4'b0000; Cin=1; #10
		A=4'b0011; B=4'b0001; Cin=0; #10
		A=4'b0010; B=4'b0001; Cin=0; #10
		A=4'b0111; B=4'b0011; Cin=1; #10
		A=4'b1111; B=4'b0000; Cin=1; 
	end
      
endmodule

