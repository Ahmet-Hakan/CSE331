module sub_tb();
	reg [31:0] a;
	reg [31:0] b;
	wire [31:0] result,res1,res2,res3,res4;
	wire borrow;
	wire lt;
	//sub_32b sub1(a, b, result, borrow);
	//lt_32b lt1(a, b,lt);
	//and_32b u1(res1,a,b);
	//or_32b u2(res2,a,b);
	//nor_32b u3(res3,a,b);
	//xor_32b u4(res4,a,b);
	initial begin
		// #0 a = 32'd720; b = 32'd17200;
		// #5 $display ("a: %d, b: %d, result: %d, borrow: %d", a, b, result, borrow);
		// #0 a = 32'd720; b = 32'd1720;
		// #5 $display ("a: %b, b: %b, result: %b, borrow: %d", a, b, result, borrow);
		// #0 a = 32'd65536; b = 32'd65536;
		// #5 $display ("a: %d, b: %d, result: %d, borrow: %d", a, b, result, borrow);
		// #0 a = 32'd69; b = 32'd64;
		// #5 $display ("a: %d, b: %d, lt: %d, borrow: %d", a, b, lt, borrow);
		// #0 a = 32'd69; b = 32'd164;
		// #5 $display ("a: %d, b: %d, lt: %d, borrow: %d", a, b, lt, borrow);
		 #0 a = 32'b00000001111111000001111111111111; b = 32'b11111111111111000000000000001111;
		 #5 $display ("a: %b, b: %b, res: %b", a, b,  res1);
		 #5 $display ("a: %b, b: %b, res: %b", a, b,  res2);
		 #5 $display ("a: %b, b: %b, res: %b", a, b,  res3);
		 #5 $display ("a: %b, b: %b, res: %b", a, b,  res4);
	end
	
endmodule 