`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:26 02/01/2019 
// Design Name: 
// Module Name:    Adder_1_Bit 
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
module Adder_1_Bit(input A,B,Cin,output S,Cout);
	wire x1,x2,x3;
	xor u1(x1,A,B);
	xor u2(S,x1,Cin);
	and u3(x2,x1,Cin);
	and u4(x3,A,B);
	or u5(Cout,x2,x3);
endmodule
