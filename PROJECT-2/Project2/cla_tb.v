module cla_tb();

	reg [31:0] a;
	reg [31:0] b;
	reg c_in;
	wire [31:0] result;
	wire c_out;
	cla_32b cla1 (a,b,c_in, result,c_out);
	
	initial begin
		#0 a = 32'd65536; b = 32'd65536; c_in = 0;
		#5 $display ("a: %d, b: %d, c_in: %d, result: %d, c_out: %d", a, b, c_in, result, c_out);
		#0 a = 32'd2147483648; b = 32'd2147483648; c_in = 1;
		#5 $display ("a: %d, b: %d, c_in: %d, result: %d, c_out: %d", a, b, c_in, result, c_out);
		#0 a = 32'd2147483648; b = 32'd2147483648; c_in = 0;
		#5 $display ("a: %d, b: %d, c_in: %d, result: %d, c_out: %d", a, b, c_in, result, c_out);
	end 

endmodule