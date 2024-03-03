module zero_bit (
    input [31:0] data,
    output wire all_zero
);
    wire [31:0] not_data_in;
    not not_gate_0 (not_data_in[0], data[0]);
    not not_gate_1 (not_data_in[1], data[1]);
    not not_gate_2 (not_data_in[2], data[2]);
    not not_gate_3 (not_data_in[3], data[3]);
    not not_gate_4 (not_data_in[4], data[4]);
    not not_gate_5 (not_data_in[5], data[5]);
    not not_gate_6 (not_data_in[6], data[6]);
    not not_gate_7 (not_data_in[7], data[7]);
    not not_gate_8 (not_data_in[8], data[8]);
    not not_gate_9 (not_data_in[9], data[9]);
    not not_gate_10 (not_data_in[10], data[10]);
    not not_gate_11 (not_data_in[11], data[11]);
    not not_gate_12 (not_data_in[12], data[12]);
    not not_gate_13 (not_data_in[13], data[13]);
    not not_gate_14 (not_data_in[14], data[14]);
    not not_gate_15 (not_data_in[15], data[15]);
    not not_gate_16 (not_data_in[16], data[16]);
    not not_gate_17 (not_data_in[17], data[17]);
    not not_gate_18 (not_data_in[18], data[18]);
    not not_gate_19 (not_data_in[19], data[19]);
    not not_gate_20 (not_data_in[20], data[20]);
    not not_gate_21 (not_data_in[21], data[21]);
    not not_gate_22 (not_data_in[22], data[22]);
    not not_gate_23 (not_data_in[23], data[23]);
    not not_gate_24 (not_data_in[24], data[24]);
    not not_gate_25 (not_data_in[25], data[25]);
    not not_gate_26 (not_data_in[26], data[26]);
    not not_gate_27 (not_data_in[27], data[27]);
    not not_gate_28 (not_data_in[28], data[28]);
    not not_gate_29 (not_data_in[29], data[29]);
    not not_gate_30 (not_data_in[30], data[30]);
    not not_gate_31 (not_data_in[31], data[31]);

    wire [30:0] inter_wire;
    and and_gate_0 (inter_wire[0],   not_data_in[0], not_data_in[1]);
    and and_gate_1 (inter_wire[1],   inter_wire[0],    not_data_in[2]);
    and and_gate_2 (inter_wire[2],   inter_wire[1],    not_data_in[3]);
    and and_gate_3 (inter_wire[3],   inter_wire[2],    not_data_in[4]);
    and and_gate_4 (inter_wire[4],   inter_wire[3],    not_data_in[5]);
    and and_gate_5 (inter_wire[5],   inter_wire[4],    not_data_in[6]);
    and and_gate_6 (inter_wire[6],   inter_wire[5],    not_data_in[7]);
    and and_gate_7 (inter_wire[7],   inter_wire[6],    not_data_in[8]);
    and and_gate_8 (inter_wire[8],   inter_wire[7],    not_data_in[9]);
    and and_gate_9 (inter_wire[9],   inter_wire[8],    not_data_in[10]);
    and and_gate_10 (inter_wire[10], inter_wire[9],    not_data_in[11]);
    and and_gate_11 (inter_wire[11], inter_wire[10],   not_data_in[12]);
    and and_gate_12 (inter_wire[12], inter_wire[11],   not_data_in[13]);
    and and_gate_13 (inter_wire[13], inter_wire[12],   not_data_in[14]);
    and and_gate_14 (inter_wire[14], inter_wire[13],   not_data_in[15]);
    and and_gate_15 (inter_wire[15], inter_wire[14],   not_data_in[16]);
    and and_gate_16 (inter_wire[16], inter_wire[15],   not_data_in[17]);
    and and_gate_17 (inter_wire[17], inter_wire[16],   not_data_in[18]);
    and and_gate_18 (inter_wire[18], inter_wire[17],   not_data_in[19]);
    and and_gate_19 (inter_wire[19], inter_wire[18],   not_data_in[20]);
    and and_gate_20 (inter_wire[20], inter_wire[19],   not_data_in[21]);
    and and_gate_21 (inter_wire[21], inter_wire[20],   not_data_in[22]);
    and and_gate_22 (inter_wire[22], inter_wire[21],   not_data_in[23]);
    and and_gate_23 (inter_wire[23], inter_wire[22],   not_data_in[24]);
    and and_gate_24 (inter_wire[24], inter_wire[23],   not_data_in[25]);
    and and_gate_25 (inter_wire[25], inter_wire[24],   not_data_in[26]);
    and and_gate_26 (inter_wire[26], inter_wire[25],   not_data_in[27]);
    and and_gate_27 (inter_wire[27], inter_wire[26],   not_data_in[28]);
    and and_gate_28 (inter_wire[28], inter_wire[27],   not_data_in[29]);
    and and_gate_29 (inter_wire[29], inter_wire[28],   not_data_in[30]);
    and and_gate_30 (inter_wire[30], inter_wire[29],   not_data_in[31]);
    and and_gate_31 (all_zero, inter_wire[30], inter_wire[29]);



    

endmodule