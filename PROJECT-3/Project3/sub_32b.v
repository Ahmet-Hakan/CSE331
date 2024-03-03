module sub_32b(input [31:0] a, b, output [31:0] res, output borrow);
    wire [31:0] b_complement;
    flip_32b flp(b_complement,b);
	 
    cla_32b adder(a, b_complement, 1'b1, res, borrow);
endmodule
