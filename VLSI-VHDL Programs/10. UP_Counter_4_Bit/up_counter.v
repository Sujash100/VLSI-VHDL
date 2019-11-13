`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:48 01/31/2019 
// Design Name: 
// Module Name:    up_counter 
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
module up_counter(input clk,reset,output [3:0]counter);
	reg [3:0]up_counter;
	always @(posedge clk or posedge reset)
	begin
		if(reset)
			up_counter<=4'd0;
		else
			up_counter<=up_counter+4'd1;
	end
	assign counter=up_counter;
endmodule
