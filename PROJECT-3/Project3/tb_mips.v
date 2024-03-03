`timescale 1ns / 1ps
module tb_mips;
    reg clock;
	wire[2:0] S;
    wire[2:0] P;
    wire[31:0] R;
    wire[31:0] ins;
    wire[31:0] rd;
    wire[31:0] alin;
    
    mips uut (
        .clock(clock)
    );

    initial begin
        // Initialize clock
        clock = 0;
        forever #10 clock = ~clock; // Toggle clock every 10 time units
    end

    initial begin
        // Test sequence

        #500 $finish; // Wait for 100 time units then finish simulation
    end
endmodule