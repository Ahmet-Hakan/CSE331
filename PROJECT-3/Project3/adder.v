module adder(input [31:0] a, b, input c_in, output [31:0] S, output c_out);
	cla_32b cla1(a,b,c_in,S,c_out);
endmodule