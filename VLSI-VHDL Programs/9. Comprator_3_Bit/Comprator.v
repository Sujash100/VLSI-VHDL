`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:34 02/01/2019 
// Design Name: 
// Module Name:    Comprator 
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
module Comprator(input [2:0]A,input [2:0]B,output L,E,G);
	wire n3,n2,n1;
	wire nd1,nd2,nd3;
	wire x1,x2,x3;
	wire nt1,nt2,nt3;
	wire ntd1,ntd2,ntd3;
	wire L1,L2,L3;
	wire G1,G2,G3;
	wire e1;
	//==========Equal=========//
	xnor u1(x1,A[2],B[2]);
	xnor u2(x2,A[1],B[1]);
	xnor u3(x3,A[0],B[0]);
	
	and u4(e1,x1,x2);
	and u5(E,e1,x3);
	
	//=========Less==========//
	not u6(n3,A[2]);
	not u7(n2,A[1]);
	not u8(n1,A[0]);
	
	and u9(nd3,n3,B[2]);
	and u10(nd2,n2,B[1]);
	and u11(nd1,n1,B[0]);
	
	and u12(L3,x1,nd2);
	and u13(L1,e1,nd1);
	or u14(L2,nd3,L3);
	or u15(L,L1,L2);
	
	//=======Greater==========//
	not u16(nt1,B[0]);
	not u17(nt2,B[1]);
	not u18(nt3,B[2]);
	
	and u19(ntd1,nt1,A[0]);
	and u20(ntd2,nt2,A[1]);
	and u21(ntd3,nt3,A[2]);
	
	and u22(G1,e1,ntd1);
	and u23(G3,x1,ntd2);
	or u24(G2,G1,G3);
	or u25(G,G2,ntd3);
	
endmodule
