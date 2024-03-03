module instruction_block (
    output reg [31:0] instruction,
    input [31:0] pc
);
    // Memory initialization file
        reg [7:0] memory [63:0];

    initial begin
        $readmemb("instructions.mem", memory); // Read memory initialization file
    end

    always @(pc) begin
                instruction[31:24] <= memory[pc[5:0]  +3];
                instruction[23:16] <= memory[pc[5:0] +2];
                instruction[15:8] <= memory[pc[5:0]  +1];
                instruction[7:0] <= memory[pc[5:0]   ];
    end
endmodule
