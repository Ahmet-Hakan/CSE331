module mod_cu(input clk, reset, input x, output reg [1:0] state);
	reg [1:0] curr_state, next_state;
	
	parameter START = 2'b00,
					SUB = 2'b01,
					FINAL = 2'b10,
					COMP = 2'b11;
	
	//State Registers			
	always @(posedge clk)
	begin
		if (reset)
			curr_state <= START;
		else
			curr_state <= next_state;
	end
	
	//Next State Logic
	always @(*)
	begin
	case(curr_state)
	START: 	begin
				next_state = SUB;
			end
	COMP:begin
			if(x)
				next_state = FINAL;
			else
				next_state = SUB;
			end
	SUB: begin
			next_state = COMP;
			end
	
	FINAL: begin
			 end
	
	endcase
	end
	
	//ouyput logic
	always @(*)
	begin 
	case(curr_state)
	START: begin
			state= 2'b00;
			end
	
	SUB: begin
			state= 2'b01;
			end
			
	COMP: begin 
			state= 2'b11;
			end
			
	FINAL: begin
			state= 2'b10;
			 end
	endcase
	end
	
	
endmodule