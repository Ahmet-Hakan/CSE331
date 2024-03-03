module xor_32b(
    output [31:0] res,
    input [31:0] a,
    input [31:0] b
);
    xor u0 (res[0], a[0], b[0]);
    xor u1 (res[1], a[1], b[1]);
    xor u2 (res[2], a[2], b[2]);
    xor u3 (res[3], a[3], b[3]);
    xor u4 (res[4], a[4], b[4]);
    xor u5 (res[5], a[5], b[5]);
    xor u6 (res[6], a[6], b[6]);
    xor u7 (res[7], a[7], b[7]);
    xor u8 (res[8], a[8], b[8]);
    xor u9 (res[9], a[9], b[9]);
    xor u10 (res[10], a[10], b[10]);
    xor u11 (res[11], a[11], b[11]);
    xor u12 (res[12], a[12], b[12]);
    xor u13 (res[13], a[13], b[13]);
    xor u14 (res[14], a[14], b[14]);
    xor u15 (res[15], a[15], b[15]);
    xor u16 (res[16], a[16], b[16]);
    xor u17 (res[17], a[17], b[17]);
    xor u18 (res[18], a[18], b[18]);
    xor u19 (res[19], a[19], b[19]);
    xor u20 (res[20], a[20], b[20]);
    xor u21 (res[21], a[21], b[21]);
    xor u22 (res[22], a[22], b[22]);
    xor u23 (res[23], a[23], b[23]);
    xor u24 (res[24], a[24], b[24]);
    xor u25 (res[25], a[25], b[25]);
    xor u26 (res[26], a[26], b[26]);
    xor u27 (res[27], a[27], b[27]);
    xor u28 (res[28], a[28], b[28]);
    xor u29 (res[29], a[29], b[29]);
    xor u30 (res[30], a[30], b[30]);
    xor u31 (res[31], a[31], b[31]);
endmodule
