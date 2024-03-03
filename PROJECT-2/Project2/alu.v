module alu(
    output [31:0] res,
    input [31:0] a,
    input [31:0] b,
	 input [2:0] sel,
	 input clk,
	 input reset
);
	wire borrow;
	wire c_in = 1'b0;
	wire x;
	wire [31:0] res_and,res_or,res_xor,res_nor,res_add,res_lt,res_sub,res_mod;
	and_32b u1(res_and,a,b);						//000
	or_32b u2(res_or,a,b);							//001
	xor_32b u4(res_xor,a,b);						//010		
	nor_32b u3(res_nor,a,b);						//011
	adder u5(a, b, c_in, res_add, x);			//100
	lt_32b lt1(a, b,res_lt);						//101
	sub_32b sub1(a, b, res_sub, borrow);		//110
	mod mod1 (clk,reset,a,b,res_mod);			//111
	
	
	mux8x1_32b mux(sel, res, res_and,res_or,res_xor,res_nor,res_add,res_lt,res_sub, res_mod);
	
endmodule 