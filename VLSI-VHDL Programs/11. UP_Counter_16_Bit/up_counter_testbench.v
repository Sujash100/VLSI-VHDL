`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:36:09 02/01/2019
// Design Name:   up_counter
// Module Name:   H:/VLSI Final Codes/UP_Counter_16_Bit/up_counter_testbench.v
// Project Name:  UP_Counter_16_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: up_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module up_counter_testbench;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] counter;

	// Instantiate the Unit Under Test (UUT)
	up_counter uut (
		.clk(clk), 
		.reset(reset), 
		.counter(counter)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		forever #5 clk=~clk;
	end
	initial begin
		reset=1;
		#200
		reset=0;
		//#20
		#200
		reset=1;
		#200
		reset=0;
	end
      
endmodule

