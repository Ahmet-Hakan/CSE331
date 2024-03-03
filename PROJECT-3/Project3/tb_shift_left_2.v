`timescale 1ns / 1ps

module tb_shift_left_2;
    // Parameters
    reg [31:0] address;
    wire [31:0] shifted_address;

    // Instantiate the Unit Under Test (UUT)
    shift_left_2 uut (
        .shifted_address(shifted_address),
        .address(address)
    );

    initial begin
        // Initialize inputs
        address = 32'h00000000;

        // Wait for 100 ns for global reset to finish
        #100;

        // Add stimulus here
        address = 32'b11111111111111111111111111111111; // Change the address
        #50;

        // Display the values of address and shifted_address
        $display("Address: %b, Shifted Address: %b", address, shifted_address);
    end
endmodule
