`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:19 01/31/2019 
// Design Name: 
// Module Name:    up_down_counter 
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
module up_down_counter(input clk,reset,up_down_flag,output [3:0]counter);
	reg [3:0]up_down_counter;
	always @(posedge clk or posedge reset)
	begin
		if(reset)
			up_down_counter<=4'd0;
		else if(~up_down_flag)
			up_down_counter<=up_down_counter+4'd1;
		else
			up_down_counter<=up_down_counter-4'd1;	
	end
	assign counter=up_down_counter;
endmodule
