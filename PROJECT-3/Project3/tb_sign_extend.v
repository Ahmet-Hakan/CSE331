`timescale 1ns / 1ps

module tb_sign_extend;
    // Parameters
    reg [15:0] imm;
    wire [31:0] sign_ext_imm;

    // Instantiate the Unit Under Test (UUT)
    sign_extend uut (
        .sign_ext_imm(sign_ext_imm),
        .imm(imm)
    );

    initial begin
        // Initialize inputs
        imm = 16'h0000;

        // Wait for 100 ns for global reset to finish
        #100;

        // Add stimulus here
        imm = 16'b1111111111111111; // Change the imm
        #50;

        // Display the values of imm and sign_ext_imm
        $display("imm: %b, sign_ext_imm: %b", imm, sign_ext_imm);
    end
endmodule
