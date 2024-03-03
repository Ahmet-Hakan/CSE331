module mux_tb();
	reg in0, in1, in2, in3, in4, in5, in6, in7;
	reg [2:0] sel;
	wire res;
	
	mux8x1_1b mux(sel, res, in0, in1, in2, in3, in4, in5, in6, in7);
	
	initial begin
	#0 in0=1'd0; in1=1'd1; in2=1'd0; in3=1'd0; in4=1'd0; in5=1'd0; in6=1'd0; in7=1'd1 ;
	
	#0 sel = 3'b000;
	#5 $display ("res: %d",res);
	#0 sel = 3'b001;
	#5 $display ("res: %d",res);
	#0 sel = 3'b010;
	#5 $display ("res: %d",res);
	#0 sel = 3'b011;
	#5 $display ("res: %d",res);
	#0 sel = 3'b100;
	#5 $display ("res: %d",res);
	#0 sel = 3'b101;
	#5 $display ("res: %d",res);
	#0 sel = 3'b110;
	#5 $display ("res: %d",res);
	#0 sel = 3'b111;
	#5 $display ("res: %d",res);

	
	end
endmodule 