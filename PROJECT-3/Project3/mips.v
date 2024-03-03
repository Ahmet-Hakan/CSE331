module mips (input clock);
    wire [31:0]  instruction, read_data1, read_data2, sign_ext_imm, shifted_address, alu_result, mem_data;
    wire regDst, branch, memRead, memWrite, ALUsrc, regWrite, jump, byteOperations, move;
    wire [2:0] ALUop;
    wire [4:0] read_reg1, read_reg2, write_reg;
    wire zero;
    wire [17:0]address;
    wire  wires [15:0];
    wire [31:0] alu_in, write_data;
    wire [2:0] alu_sel;
    wire memToReg;
    wire [31:0] add_con = 32'h00000004;
    wire [31:0] temp1, temp2;
    wire temp3;
	 reg [31:0] pc;
	 wire  [31:0] pc_in;
	 wire [31:0] write_move_or_not;

    wire [31:0] jumpadress;
    wire [31:0] pc_in_1;
    initial begin
		pc =0;
	 end 

    always @(posedge clock) begin
        pc = pc_in;
    end
	
	
    instruction_block instruction_block (
        .instruction(instruction),
        .pc(pc)
    );
	     

    control_unit control_unit (
        .regDst(regDst),
        .branch(branch),
        .memRead(memRead),
        .memWrite(memWrite),
        .ALUop(ALUop),
        .ALUsrc(ALUsrc),
        .regWrite(regWrite),
        .jump(jump),
        .byteOperations(byteOperations),
        .move(move),
        .opcode(instruction[31:26])
    );
 
	mux_2x1_5b mux_2x1_5b (
        .out(write_reg),
        .in1( instruction[20:16]),
        .in2(instruction[15:11]),
        .sel(regDst)
    ); 


    mux_2x1_32b mux_2x1_32b_1 (
        .out(write_move_or_not),
        .in1(write_data),
        .in2(read_data1),
        .sel(move)
    );

    register_block register_block (
        .read_data1(read_data1),
        .read_data2(read_data2),
        .write_data(write_move_or_not),
        .read_reg1(instruction[25:21]),
        .read_reg2(instruction[20:16]),
        .write_reg(write_reg),
        .regWrite(regWrite)
    );

    sign_extend sign_extend (
        .sign_ext_imm(sign_ext_imm),
        .imm(instruction[15:0])
    );
    shift_left_2 shift_left_2 (
        .shifted_address(shifted_address),
        .address(sign_ext_imm)
    );

    mux_2x1_32b mux_2x1_32b_4 (
        .out(alu_in),
        .in1(read_data2),
        .in2(sign_ext_imm),
        .sel(ALUsrc)
    );

    alu_control alu_control (
        .C(alu_sel),
        .F(instruction[5:0]),
        .P(ALUop)
    );
	     


    alu alu (
        .res(alu_result),
        .zero(zero),
        .a(read_data1),
        .b(alu_in),
        .sel(alu_sel)
    );

    memory_block memory_block (
        .read_data(mem_data),
        .byteOperations(byteOperations),
        .address(alu_result[17:0]),
        .write_data(read_data2),
        .memRead(memRead),
        .memWrite(memWrite)
    );

    mux_2x1_32b mux_2x1_32b_2 (
        .out(write_data),
        .in1(alu_result),
        .in2( mem_data),
        .sel(memRead)
    );

    wire c_out;
    adder adder_1 (
        .S(temp1),
        .a(pc),
        .b(add_con),
        .c_in(1'b0),
        .c_out(c_out)
    );

    wire c_out2;
    adder adder_2 
    (
        .S(temp2),
        .a(temp1),
        .b(shifted_address),
        .c_in(1'b0),
        .c_out(c_out2)
    );





    and and1 (temp3, branch, zero);

    mux_2x1_32b mux_2x1_32b_3 (
       .out(pc_in_1),
       .in1(temp1),
       .in2(temp2),
       .sel(temp3)
    );

        buf_26b buf_26b_1 (
        jumpadress[25:0],
        instruction[25:0]
    );
    buf_4b buf_4b_1 (
        jumpadress[29:26],
        4'b0000
    );
    buf buf_1 (
        jumpadress[30],
        1'b0
    );
    buf buf_2 (
        jumpadress[31],
        1'b0
    );
    mux_2x1_32b mux_2x1_32b_5 (
       .out(pc_in),
       .in1(pc_in_1),
       .in2(jumpadress),
       .sel(jump)
    );


endmodule