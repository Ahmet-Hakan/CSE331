`timescale 1ns / 1ps

module tb_register_block;
    // Parameters
    reg [31:0] write_data;
    reg [4:0] read_reg1;
    reg [4:0] read_reg2;
    reg regWrite;
    reg clk;
    wire [31:0] read_data1;
    wire [31:0] read_data2;
    reg [4:0] write_reg;

    // Instantiate the Unit Under Test (UUT)
    register_block uut (
        .read_data1(read_data1),
        .read_data2(read_data2),
        .write_data(write_data),
        .read_reg1(read_reg1),
        .read_reg2(read_reg2),
        .write_reg(write_reg),
        .regWrite(regWrite)
    );

    initial begin
        // Initialize inputs
        write_data = 32'b11111111111111111111111111111111;
        read_reg1 = 5'b00000;
        read_reg2 = 5'b00000;
        regWrite = 1'b0;
        write_reg = 5'b11111;
        // Wait for 100 ns for global reset to finish
        #100;

        // Add stimulus here
        write_data = 32'b00000000000000000011000000000000;
        read_reg1 = 5'b00001;
        read_reg2 = 5'b00010;
        regWrite = 1'b1;
        #50;
        regWrite = 1'b0;
        #50;
		  
		  write_reg = 5'b11110;
		  write_data = 32'b00000000000000000011000000000000;
        read_reg1 = 5'b00001;
        read_reg2 = 5'b00010;
        regWrite = 1'b1;
        #50;
        regWrite = 1'b0;
        #50;
		  read_reg1 = 5'b00010;
		  read_reg1 = 5'b00110;
        $display("read_data1 = %b", read_data1);
        $display("read_data2 = %b", read_data2);
		  
		  #500;
		  $finish;
    end

    

endmodule
