module mod(
	input clk,
	input reset,
	input [31:0] a,
	input [31:0] b,
	output [31:0]result);
	
	 wire [1:0] state;
    wire x;

	// Instantiate the control unit
    mod_cu cu(
        .clk(clk),
        .reset(reset),
        .x(x),
        .state(state)
    );

    // Instantiate the datapath
    mod_dp dp(
        .clk(clk),
        .a(a),
        .b(b),
        .state(state),
        .x(x),
        .result(result)
    );
	

	
endmodule
	