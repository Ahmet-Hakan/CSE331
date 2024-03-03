module control_unit (
output regDst,//+
output branch,//+
output memRead,//
output memWrite,//
output [2:0] ALUop,
output ALUsrc,//
output regWrite,//
output jump,//
output byteOperations,//
output move, //+
input [5:0] opcode);
    not not_0 (not_p0, opcode[0]);
    not not_1 (not_p1, opcode[1]);
    not not_2 (not_p2, opcode[2]);
    not not_3 (not_p3, opcode[3]);
    not not_4 (not_p4, opcode[4]);
    not not_5 (not_p5, opcode[5]);

    and_6b and_6b_0 (move, opcode[5], not_p4, not_p3, not_p2, not_p1, not_p0);
    
    and_3b and_3b_0 (branch, opcode[5], opcode[1], opcode[0]); //check
    
    and_6b and_6b_1 ( regDst, not_p5, not_p4, not_p3, not_p2, not_p1, not_p0);

    
    and_6b and_6b_5 ( temp4, not_p5, opcode[4], not_p3, not_p2, not_p1, opcode[0]);
    and_6b and_6b_3 ( temp2, not_p5, opcode[4], not_p3, not_p2, not_p1, not_p0);
    or or_0 ( memWrite, temp4, temp2);

    and_6b and_6b_4 ( temp3, not_p5, not_p4, opcode[3], not_p2, not_p1, opcode[0]);
    and_6b and_6b_2 ( temp1, not_p5, not_p4, opcode[3], not_p2, not_p1, not_p0);
    or or_1 (  memRead, temp3, temp1);

    and_3b and_3b_1 ( temp5, opcode[5], opcode[4], opcode[3]);
    not not_6 ( not_regDst, regDst);
    not not_7(temp6, temp5);
    and_3b and_3b_7 ( temp11, opcode[5], opcode[1], opcode[0]);
    not not_9 ( not_temp11, temp11);
    and_3b and_3b_6 ( ALUsrc, temp6, not_regDst, not_temp11);


    and_3b and_3b_3 ( jump, opcode[5], opcode[4], opcode[3]);
    or or_2 ( byteOperations, temp3, temp4 );

    or_3b or_3b_0 (temp10, memWrite, jump , branch );
    not not_8 ( regWrite, temp10);
	 
	     xor xor_0 ( xor_1_0, opcode[0], opcode[1]); 
    or or_3 ( or_3_4, opcode[3], opcode[4]);
    or or_4 ( temp7 , or_3_4, xor_1_0);
    or or_5(ALUop[0], temp7, regDst);

    and_3b and_3b_5 ( temp8, not_p2, opcode[1], opcode[0]);
    or or_6 ( temp9, opcode[5], temp8);
    or or_7 ( ALUop[1], temp9, regDst);

    nand nand_0 ( ALUop[2] , opcode[2], not_p1);

endmodule