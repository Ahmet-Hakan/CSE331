`timescale 1ns / 1ps

module tb_instruction_block;
    reg [31:0] pc;
    wire [31:0] instruction;

    // Instantiate the instruction_block module
    instruction_block uut (
        .pc(pc),
        .instruction(instruction)
    );

    initial begin
        // Initialize pc
        pc = 0;
        #10 
		  $display("At time %t, instruction = %b", $time, instruction);
		  
		  pc = 4;
		  #10 
		  $display("At time %t, instruction = %b", $time, instruction);
        
		  
		  pc = 8;
        #10
		  $display("At time %t, instruction = %b", $time, instruction);		  
		  
		  
		  pc = 12;
		  #10
		  $display("At time %t, instruction = %b", $time, instruction);		  
		  
		  pc = 16;
		  #10
		  $display("At time %t, instruction = %b", $time, instruction);		  
        // Finish the simulation
        #10 $finish;
    end

    // Monitor changes in the instruction output

endmodule
