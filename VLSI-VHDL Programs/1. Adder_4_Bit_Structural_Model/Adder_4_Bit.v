`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:15:32 02/01/2019 
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
module Adder_4_Bit(input [3:0]A,input [3:0]B,input Cin,output [3:0]Sum,output Cout);
	wire C1,C2,C3;
	Adder_1_Bit a1(A[0],B[0],Cin,Sum[0],C1);
	Adder_1_Bit a2(A[1],B[1],C1,Sum[1],C2);
	Adder_1_Bit a3(A[2],B[2],C2,Sum[2],C3);
	Adder_1_Bit a4(A[3],B[3],C3,Sum[3],Cout);
	
endmodule
