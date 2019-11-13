`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:01 01/31/2019 
// Design Name: 
// Module Name:    down_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module down_counter(input clk,reset,output [3:0]counter);
	reg [3:0]down_counter;
	always @(posedge clk or posedge reset)
	begin
		if(reset)
			down_counter<=4'hf;
		else
			down_counter<=down_counter-4'd1;
	end
	assign counter=down_counter;
endmodule
