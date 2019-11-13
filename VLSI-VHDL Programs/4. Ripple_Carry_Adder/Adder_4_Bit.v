`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:55 02/01/2019 
// Design Name: 
// Module Name:    Adder_4_Bit 
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
module Adder_4_Bit(input [3:0]A,input [3:0]B,input Cin,output [3:0]S,output Cout);
	wire C1,C2,C3;
	Adder_1_Bit u1(A[0],B[0],Cin,S[0],C1);
	Adder_1_Bit u2(A[1],B[1],C1,S[1],C2);
	Adder_1_Bit u3(A[2],B[2],C2,S[2],C3);
	Adder_1_Bit u4(A[3],B[3],C3,S[3],Cout);
endmodule
