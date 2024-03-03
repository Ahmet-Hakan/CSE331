module sign_extend (
    output wire [31:0] sign_ext_imm,
    input wire [15:0] imm
); 
    wire zero = 1'b0;
    buf_4b buf_4b0 ( sign_ext_imm[3:0],imm[3:0]);
    buf_4b buf_4b1 ( sign_ext_imm[7:4],imm[7:4]);
    buf_4b buf_4b2 ( sign_ext_imm[11:8],imm[11:8]);
    buf_4b buf_4b3 ( sign_ext_imm[15:12],imm[15:12]);
    
    buf buf_0 ( sign_ext_imm[16],imm[15]);
    buf buf_1 ( sign_ext_imm[17],imm[15]);
    buf buf_2 ( sign_ext_imm[18],imm[15]);
    buf buf_3 ( sign_ext_imm[19],imm[15]);
    buf buf_4 ( sign_ext_imm[20],imm[15]);
    buf buf_5 ( sign_ext_imm[21],imm[15]);
    buf buf_6 ( sign_ext_imm[22],imm[15]);
    buf buf_7 ( sign_ext_imm[23],imm[15]);
    buf buf_8 ( sign_ext_imm[24],imm[15]);
    buf buf_9 ( sign_ext_imm[25],imm[15]);
    buf buf_10 ( sign_ext_imm[26],imm[15]);
    buf buf_11 ( sign_ext_imm[27],imm[15]);
    buf buf_12 ( sign_ext_imm[28],imm[15]);
    buf buf_13 ( sign_ext_imm[29],imm[15]);
    buf buf_14 ( sign_ext_imm[30],imm[15]);
    buf buf_15 ( sign_ext_imm[31],imm[15]);

    // buf buf_16 ( sign_ext_imm[16],zero);
    // buf buf_17 ( sign_ext_imm[17],zero);
    // buf buf_18 ( sign_ext_imm[18],zero);
    // buf buf_19 ( sign_ext_imm[19],zero);
    // buf buf_20 ( sign_ext_imm[20],zero);
    // buf buf_21 ( sign_ext_imm[21],zero);
    // buf buf_22 ( sign_ext_imm[22],zero);
    // buf buf_23 ( sign_ext_imm[23],zero);
    // buf buf_24 ( sign_ext_imm[24],zero);
    // buf buf_25 ( sign_ext_imm[25],zero);
    // buf buf_26 ( sign_ext_imm[26],zero);
    // buf buf_27 ( sign_ext_imm[27],zero);
    // buf buf_28 ( sign_ext_imm[28],zero);
    // buf buf_29 ( sign_ext_imm[29],zero);
    // buf buf_30 ( sign_ext_imm[30],zero);
    // buf buf_31 ( sign_ext_imm[31],zero);


    

    
endmodule