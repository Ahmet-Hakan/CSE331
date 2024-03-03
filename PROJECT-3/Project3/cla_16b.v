module cla_16b(input [15:0] a, b, input c_in, output [15:0] S, output c_out);
		wire [31:0] g;
		wire [31:0] p;
		
		wire c4,c8,c12;
		cla_4b cla_1 (a[3:0],b[3:0], c_in, S[3:0],g[0],p[0]); 
		
		and and1(t1, p[0],c_in);
		or or1 (c4, g[0], t1);
		
		cla_4b cla_2 (a[7:4],b[7:4], c4, S[7:4],g[1],p[1]); 
		and and6(t2, p[1],g[0]);
		and_3b and7(t3, p[1],p[0],c_in);
		or_3b or6(c8, g[1], t2, t3);
		
		cla_4b cla_3 (a[11:8],b[11:8], c8, S[11:8],g[2],p[2]);
		and and8(t4, p[2],g[1]);
		and_3b and9(t5, p[2],p[1],g[0]);
		and_4b and10(t6, p[2],p[1],p[0],c_in);
		or_4b or7(c12, g[2], t4, t5, t6);
		
		cla_4b cla_4 (a[15:12],b[15:12], c12, S[15:12],g[3],p[3]);
		and and11(t7, p[3],g[2]);
		and_3b and12(t8, p[3],p[2],g[1]);
		and_4b and13(t9, p[3],p[2],p[1],g[0]);
		and_5b and14(t10, p[3],p[2],p[1],p[0],c_in);
		or_5b or8(c_out, g[3], t7, t8,t9,t10);
		
		
		
endmodule