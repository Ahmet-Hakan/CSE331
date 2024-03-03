module flip_bit(
    input wire in_bit,
    output wire out_bit
);
    not(in_bit, out_bit);
endmodule

module flip_32b(
    input [31:0] in_number,
    output [31:0] out_number
);
    flip_bit u0 (.in_bit(in_number[0]), .out_bit(out_number[0]));
    flip_bit u1 (.in_bit(in_number[1]), .out_bit(out_number[1]));
    flip_bit u2 (.in_bit(in_number[2]), .out_bit(out_number[2]));
    flip_bit u3 (.in_bit(in_number[3]), .out_bit(out_number[3]));
    flip_bit u4 (.in_bit(in_number[4]), .out_bit(out_number[4]));
    flip_bit u5 (.in_bit(in_number[5]), .out_bit(out_number[5]));
    flip_bit u6 (.in_bit(in_number[6]), .out_bit(out_number[6]));
    flip_bit u7 (.in_bit(in_number[7]), .out_bit(out_number[7]));
    flip_bit u8 (.in_bit(in_number[8]), .out_bit(out_number[8]));
    flip_bit u9 (.in_bit(in_number[9]), .out_bit(out_number[9]));
    flip_bit u10 (.in_bit(in_number[10]), .out_bit(out_number[10]));
    flip_bit u11 (.in_bit(in_number[11]), .out_bit(out_number[11]));
    flip_bit u12 (.in_bit(in_number[12]), .out_bit(out_number[12]));
    flip_bit u13 (.in_bit(in_number[13]), .out_bit(out_number[13]));
    flip_bit u14 (.in_bit(in_number[14]), .out_bit(out_number[14]));
    flip_bit u15 (.in_bit(in_number[15]), .out_bit(out_number[15]));
    flip_bit u16 (.in_bit(in_number[16]), .out_bit(out_number[16]));
    flip_bit u17 (.in_bit(in_number[17]), .out_bit(out_number[17]));
    flip_bit u18 (.in_bit(in_number[18]), .out_bit(out_number[18]));
    flip_bit u19 (.in_bit(in_number[19]), .out_bit(out_number[19]));
    flip_bit u20 (.in_bit(in_number[20]), .out_bit(out_number[20]));
    flip_bit u21 (.in_bit(in_number[21]), .out_bit(out_number[21]));
    flip_bit u22 (.in_bit(in_number[22]), .out_bit(out_number[22]));
    flip_bit u23 (.in_bit(in_number[23]), .out_bit(out_number[23]));
    flip_bit u24 (.in_bit(in_number[24]), .out_bit(out_number[24]));
    flip_bit u25 (.in_bit(in_number[25]), .out_bit(out_number[25]));
    flip_bit u26 (.in_bit(in_number[26]), .out_bit(out_number[26]));
    flip_bit u27 (.in_bit(in_number[27]), .out_bit(out_number[27]));
    flip_bit u28 (.in_bit(in_number[28]), .out_bit(out_number[28]));
    flip_bit u29 (.in_bit(in_number[29]), .out_bit(out_number[29]));
    flip_bit u30 (.in_bit(in_number[30]), .out_bit(out_number[30]));
    flip_bit u31 (.in_bit(in_number[31]), .out_bit(out_number[31]));
endmodule
