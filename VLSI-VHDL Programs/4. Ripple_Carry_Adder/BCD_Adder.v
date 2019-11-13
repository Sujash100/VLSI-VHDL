`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:07 02/01/2019 
// Design Name: 
// Module Name:    BCD_Adder 
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
module BCD_Adder(input [3:0]A,input [3:0]B,input Cin,output [3:0]S,output Cout);
	
	wire x1,x2,x3;
	wire Cout1;
	wire [3:0]ACC;
	Adder_4_Bit u1(A,B,Cin,ACC,Cout1);
	
	or u2(x1,ACC[1],ACC[2]);
	and u3(x2,x1,ACC[3]);
	or u4(x3,x2,Cout1);


	Adder_4_Bit u5(ACC,{1'b0,x3,x3,1'b0},{1'b0},S,Cout);
	
endmodule
