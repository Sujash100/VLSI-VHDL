`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:54:07 02/01/2019 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(input A,B,Cin,output S,Cout);
	reg [1:0]temp;
	always @(*)
	begin
		temp<={1'b0,A}+{1'b0,B}+{1'b0,Cin};
	end
	assign S=temp[0];
	assign Cout=temp[1];
endmodule
