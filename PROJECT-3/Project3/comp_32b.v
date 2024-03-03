module comp_32b (
    input [31:0] A, B,
    output reg is_A_less_than_B
);
    always @(*) begin
        is_A_less_than_B = (A < B) ? 1'b1 : 1'b0;
    end
endmodule
