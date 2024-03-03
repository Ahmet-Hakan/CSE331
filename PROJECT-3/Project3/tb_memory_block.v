`timescale 1ns / 1ps

module tb_memory_block;
    reg byteOperations;
    reg [17:0] address;
    reg [31:0] write_data;
    reg memRead;
    reg memWrite;
    wire [31:0] read_data;

    // Instantiate the Unit Under Test (UUT)
    memory_block uut (
        .read_data(read_data), 
        .byteOperations(byteOperations), 
        .address(address), 
        .write_data(write_data), 
        .memRead(memRead), 
        .memWrite(memWrite)
    );

    initial begin
        // Initialize Inputs
        byteOperations = 0;
        address = 16'h0000;
        write_data = 0;
        memRead = 0;
        memWrite = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        memWrite = 1;
        write_data = 32'hFFFFFFFF;
        
        #50; // Wait for 50 ns
		  address = 16'h0008;
		  #5
        memWrite = 0;

        memRead = 1;
        #50; // Wait for 50 ns
		  
        memRead = 0;
			
			$display("read_data1 = %b", read_data);
			
        #100; // Wait for 100 ns
        $finish; // End simulation
    end
endmodule
