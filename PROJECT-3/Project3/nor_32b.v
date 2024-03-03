module nor_32b(
    output [31:0] res,
    input [31:0] a,
    input [31:0] b
);
    nor u0 (res[0], a[0], b[0]);
    nor u1 (res[1], a[1], b[1]);
    nor u2 (res[2], a[2], b[2]);
    nor u3 (res[3], a[3], b[3]);
    nor u4 (res[4], a[4], b[4]);
    nor u5 (res[5], a[5], b[5]);
    nor u6 (res[6], a[6], b[6]);
    nor u7 (res[7], a[7], b[7]);
    nor u8 (res[8], a[8], b[8]);
    nor u9 (res[9], a[9], b[9]);
    nor u10 (res[10], a[10], b[10]);
    nor u11 (res[11], a[11], b[11]);
    nor u12 (res[12], a[12], b[12]);
    nor u13 (res[13], a[13], b[13]);
    nor u14 (res[14], a[14], b[14]);
    nor u15 (res[15], a[15], b[15]);
    nor u16 (res[16], a[16], b[16]);
    nor u17 (res[17], a[17], b[17]);
    nor u18 (res[18], a[18], b[18]);
    nor u19 (res[19], a[19], b[19]);
    nor u20 (res[20], a[20], b[20]);
    nor u21 (res[21], a[21], b[21]);
    nor u22 (res[22], a[22], b[22]);
    nor u23 (res[23], a[23], b[23]);
    nor u24 (res[24], a[24], b[24]);
    nor u25 (res[25], a[25], b[25]);
    nor u26 (res[26], a[26], b[26]);
    nor u27 (res[27], a[27], b[27]);
    nor u28 (res[28], a[28], b[28]);
    nor u29 (res[29], a[29], b[29]);
    nor u30 (res[30], a[30], b[30]);
    nor u31 (res[31], a[31], b[31]);
endmodule
