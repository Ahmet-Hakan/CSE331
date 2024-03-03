`timescale 1ns/1ns
module alu_tb();

    // Inputs
    reg [31:0] a, b;
    reg [2:0] sel;
    reg clk, reset;

    // Outputs
    wire [31:0] res;

    // Instantiate the ALU module
    alu uut (
        .res(res),
        .a(a),
        .b(b),
        .sel(sel),
        .clk(clk),
        .reset(reset)
    );

    // Clock generation
     always begin
        #1 clk = ~clk;
			end

    // Test vector generation
    initial begin
   #0 a = 32'd8; b = 32'd4; sel = 3'b000;   
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b001;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b000;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b010;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b011;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b100;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b101;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#0 a = 32'd8; b = 32'd4; sel = 3'b110;
	#5 $display ("a: %d, b: %d, res: %d", a,b,res);
	#5		sel = 3'b111;
		  clk = 0;
        reset = 1;
        a = 32'd14;  // 10 in decimal
        b = 32'h00000005; 

        #5;
        reset = 0;
        
		  #5000
		  $display("At time %t, a = %d, b = %d result = %d", $time, a, b, res);
	end 
endmodule
