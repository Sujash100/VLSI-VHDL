`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:29 01/31/2019
// Design Name:   down_counter
// Module Name:   H:/VLSI Final Codes/DOWN_Counter_4_Bit/downcounter_testbench.v
// Project Name:  DOWN_Counter_4_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module downcounter_testbench;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] counter;

	// Instantiate the Unit Under Test (UUT)
	down_counter uut (
		.clk(clk), 
		.reset(reset), 
		.counter(counter)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #5 clk=~clk;
	end
	initial begin
		reset=1;
		#20
		reset=0;
	end
endmodule

