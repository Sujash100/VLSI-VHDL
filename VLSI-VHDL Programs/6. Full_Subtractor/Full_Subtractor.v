`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:38:18 02/01/2019 
// Design Name: 
// Module Name:    Full_Subtractor 
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
module Full_Subtractor(input A,B,Bin,output D,Bout);
	wire a1,a2,a3,a4,a5;
	xor u1(a1,A,B);
	xor u2(D,a1,Bin);
	not u3(a2,a1);
	and u4(a3,a2,Bin);
	not u5(a4,A);
	and u6(a5,a4,B);
	or u7(Bout,a5,a3);
endmodule
