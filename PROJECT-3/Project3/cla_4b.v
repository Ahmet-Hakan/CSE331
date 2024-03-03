module cla_4b(input [3:0] a, b, input c_in, output [3:0] S //, output c_out 
, output G,P );
	wire g[3:0];
	wire p[3:0];
	
	and and1(g[0],a[0], b[0]);
	and and2(g[1],a[1], b[1]);
	and and3(g[2],a[2], b[2]);
	and and4(g[3],a[3], b[3]);
	
	or or1 (p[0],a[0], b[0]);
	or or2 (p[1],a[1], b[1]);
	or or3 (p[2],a[2], b[2]);
	or or4 (p[3],a[3], b[3]);
	
	wire c1;
	and and5(t1,p[0], c_in);
	or or5 (c1, g[0], t1);
	
	wire c2;
	and and6(t2, p[1],g[0]);
	and_3b and7(t3, p[1],p[0],c_in);
	or_3b or6(c2, g[1], t2, t3);

	wire c3;
	and and8(t4, p[2],g[1]);
	and_3b and9(t5, p[2],p[1],g[0]);
	and_4b and10(t6, p[2],p[1],p[0],c_in);
	or_4b or7(c3, g[2], t4, t5, t6);
	
	wire c4;
	and and11(t7, p[3],g[2]);
	and_3b and12(t8, p[3],p[2],g[1]);
	and_4b and13(t9, p[3],p[2],p[1],g[0]);
	and_5b and14(t10, p[3],p[2],p[1],p[0],c_in);
	or_5b or8(c4, g[3], t7, t8,t9,t10);
	
	xor_3b xor1(S[0], a[0],b[0],c_in);
	xor_3b xor2(S[1], a[1],b[1],c1);
	xor_3b xor3(S[2], a[2],b[2],c2);
	xor_3b xor4(S[3], a[3],b[3],c3);
	
	and_4b and15(P,p[3],p[2],p[1],p[0]);
	
	and and16(t11,p[3],g[2]);
	and_3b and17(t12, p[3],p[2],g[1]);
	and_4b and18(t13, p[3],p[2],p[1],g[0]);
	or_4b or9(G,g[3],t11,t12,t13);
	
endmodule