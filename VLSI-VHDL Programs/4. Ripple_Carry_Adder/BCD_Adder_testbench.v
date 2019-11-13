`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:00 02/01/2019
// Design Name:   BCD_Adder
// Module Name:   H:/VLSI Final Codes/Ripple_Carry_Adder/BCD_Adder_testbench.v
// Project Name:  Ripple_Carry_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_Adder_testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	BCD_Adder uut (
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
		A=4'b0001; B=4'b0001; Cin=0; #10
		A=4'b0101; B=4'b0001; Cin=0; #10
		A=4'b0101; B=4'b0001; Cin=1; #10
		A=4'b1001; B=4'b0001; Cin=0; #10
		A=4'b0110; B=4'b0110; Cin=0;

	end
      
endmodule

