module cla_32b(input [31:0] a, b, input c_in, output [31:0] S, output c_out);
		
		wire wc;
		cla_16b cla1(a[15:0], b[15:0], c_in, S[15:0], wc);
		cla_16b cla2(a[31:16], b[31:16], wc, S[31:16], c_out);
endmodule 