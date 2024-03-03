module mod_dp(
	input clk,
	input [31:0] a,
	input [31:0] b,
	input [1:0] state,
	output reg x,
	output reg[31:0] result);
	
	
	reg [31:0] temp = 32'd500;
	
	
	always @(posedge clk)
	begin
	if(state == 2'b00)
		temp <= a;
	else if(state == 2'b11)
		temp <=temp;
    else if(state == 2'b01)begin
      temp <= temp - b;
		end
		else if (state == 2'b10) // FINAL state
            result = temp;
    end

	 always@(*)
	 begin
	 x = (temp < b) ? 1'b1 : 1'b0;
	 end

endmodule