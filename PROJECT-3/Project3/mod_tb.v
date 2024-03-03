`timescale 1ns/1ns
module mod_tb;
    reg clk;
    reg reset;
    reg [31:0] a;
    reg [31:0] b;
    wire [31:0] result;

    // Instantiate the mod module
    mod uut(
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .result(result)
    );
	 
	     always begin
        #1 clk = ~clk;
			end
 
    // Test procedure
    initial begin
        // Initialize signals
        #5
		  clk = 0;
        reset = 1;
        a = 32'd14;  // 10 in decimal
        b = 32'h00000005; 

        #5;
        reset = 0;
        
		  #5000
		  $display("At time %t, a = %d, b = %d result = %d", $time, a, b, result);

		  $finish; 

    end
endmodule
