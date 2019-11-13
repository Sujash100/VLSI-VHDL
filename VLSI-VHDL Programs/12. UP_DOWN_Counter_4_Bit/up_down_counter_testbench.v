`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:27 01/31/2019
// Design Name:   up_down_counter
// Module Name:   H:/VLSI Final Codes/UP_DOWN_Counter_4_Bit/up_down_counter_testbench.v
// Project Name:  UP_DOWN_Counter_4_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: up_down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module up_down_counter_testbench;

	// Inputs
	reg clk;
	reg reset;
	reg up_down_flag;

	// Outputs
	wire [3:0] counter;

	// Instantiate the Unit Under Test (UUT)
	up_down_counter uut (
		.clk(clk), 
		.reset(reset), 
		.up_down_flag(up_down_flag), 
		.counter(counter)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		up_down_flag = 0;

		// Wait 100 ns for global reset to finish
		//#100;
		// Add stimulus here
		forever #5 clk=~clk;
	end
	initial begin
		reset=1;
		#20
		reset=0;
		#200
		up_down_flag=1;
	end
endmodule

