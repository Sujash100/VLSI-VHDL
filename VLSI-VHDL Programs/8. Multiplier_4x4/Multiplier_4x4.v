`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:20 02/01/2019 
// Design Name: 
// Module Name:    Multiplier_4x4 
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
module Multiplier_4x4(input [3:0]A,input [3:0]B,output [7:0]C);
	wire Cout1,Cout2,Cout3;
	wire [3:0]Add_1;
	wire [3:0]Add_2;
	wire [3:0]Add_3;
	
	wire [3:0]AND_0={A[0],A[0],A[0],A[0]} & B;
	
	wire C0=AND_0[0];
	wire [3:0]AND_1={A[1],A[1],A[1],A[1]} & B;
	Adder_4_Bit u1(AND_1,{1'b0,AND_0[3:1]},{1'b0},Add_1,Cout1);
	
	wire C1=Add_1[0];
	wire [3:0]AND_2={A[2],A[2],A[2],A[2]} & B;
	Adder_4_Bit u2(AND_2,{Cout1,Add_1[3:1]},{1'b0},Add_2,Cout2);
	
	wire C2=Add_2[0];
	wire [3:0]AND_3={A[3],A[3],A[3],A[3]} & B;
	Adder_4_Bit u3(AND_3,{Cout2,Add_2[3:1]},{1'b0},Add_3,Cout3);
	
	assign C={Cout3,Add_3,C2,C1,C0};
endmodule
