`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:17 02/01/2019 
// Design Name: 
// Module Name:    Subtractor_4_Bit 
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
module Subtractor_4_Bit(input [3:0]A,input [3:0]B,input Bin,output [3:0]D,output Bout);
	wire B1,B2,B3;
	Subtract_1_Bit bit1(A[0],B[0],Bin,D[0],B1);
	Subtract_1_Bit bit2(A[1],B[1],B1,D[1],B2);
	Subtract_1_Bit bit3(A[2],B[2],B2,D[2],B3);
	Subtract_1_Bit bit4(A[3],B[3],B3,D[3],Bout);
endmodule
