module tb_control_unit();



wire move_tb, byteOperations_tb, jump_tb, regWrite_tb, ALUsrc_tb, memWrite_tb, memRead_tb, branch_tb, regDst_tb;
reg [5:0] opcode_tb;
wire [2:0] ALUop_tb;


control_unit cntr_unit(
.regDst(regDst_tb),
.branch(branch_tb),
.memRead(memRead_tb), //(This can also be used as memToReg)
.memWrite(memWrite_tb),
.ALUop(ALUop_tb), //(This was assigned as [1:0] before, by mistake. It should be [2:0])
.ALUsrc(ALUsrc_tb),
.regWrite(regWrite_tb),
.jump(jump_tb),
.byteOperations(byteOperations_tb), //(This is an optional signal for lb and sb operations)
.move(move_tb), //(This is an optional signal for MOVE operation)
.opcode(opcode_tb)
);


initial begin

	//clk_tb = 1'b0;
    //reset_tb = 1'b1;

    opcode_tb = 6'b000000;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b100000;

	  #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b000000;
	 
    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b000010;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b000011;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b000100;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b000101;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b001000;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b010000;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b001001;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b010001;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b000111;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b100011;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b100111;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b111000;

    #20;
    $display("regDst_tb: %b, branch_tb: %b, memRead_tb: %b, memWrite_tb: %b, ALUop_tb: %b, ALUsrc_tb: %b, regWrite_tb: %b, jump_tb: %b, byteOperations_tb: %b, move_tb: %b, opcode_tb: %b", regDst_tb, branch_tb, memRead_tb, memWrite_tb, ALUop_tb, ALUsrc_tb, regWrite_tb, jump_tb, byteOperations_tb, move_tb, opcode_tb);
    opcode_tb = 6'b111001;


    $stop;
	 

end


endmodule