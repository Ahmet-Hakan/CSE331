`timescale 1ns / 1ps

module tb_zero_bit;

    reg [31:0] data_in;
    wire all_zero;

    // Instantiate the unit under test (UUT)
    zero_bit uut (
        .data(data_in),
        .all_zero(all_zero)
    );

    initial begin
        // Initialize inputs
        data_in = 32'b0;

        // Wait for 100 ns for the design to settle
        #100;

        // Check the output
        if (all_zero != 1'b1) begin
            $display("Test failed: all_zero should be 1 when data_in is all zeros");
        end

        // Change inputs
        data_in = 32'b1;

        // Wait for 100 ns for the design to settle
        #100;

        // Check the output
        if (all_zero != 1'b0) begin
            $display("Test failed: all_zero should be 0 when data_in is not all zeros");
        end

        // Indicate that the tests passed
        $display("All tests passed!");

        // Finish the simulation
        $finish;
    end

endmodule
