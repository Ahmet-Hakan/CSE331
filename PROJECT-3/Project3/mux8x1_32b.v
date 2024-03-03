module mux8x1_32b(
    input [2:0] sel,
    output [31:0] res,
    input [31:0] in0, in1, in2, in3, in4, in5, in6, in7
);
    mux8x1_1b u0 (.sel(sel), .res(res[0]), .in0(in0[0]), .in1(in1[0]), .in2(in2[0]), .in3(in3[0]), .in4(in4[0]), .in5(in5[0]), .in6(in6[0]), .in7(in7[0]));
    mux8x1_1b u1 (.sel(sel), .res(res[1]), .in0(in0[1]), .in1(in1[1]), .in2(in2[1]), .in3(in3[1]), .in4(in4[1]), .in5(in5[1]), .in6(in6[1]), .in7(in7[1]));
    mux8x1_1b u2 (.sel(sel), .res(res[2]), .in0(in0[2]), .in1(in1[2]), .in2(in2[2]), .in3(in3[2]), .in4(in4[2]), .in5(in5[2]), .in6(in6[2]), .in7(in7[2]));
    mux8x1_1b u3 (.sel(sel), .res(res[3]), .in0(in0[3]), .in1(in1[3]), .in2(in2[3]), .in3(in3[3]), .in4(in4[3]), .in5(in5[3]), .in6(in6[3]), .in7(in7[3]));
    mux8x1_1b u4 (.sel(sel), .res(res[4]), .in0(in0[4]), .in1(in1[4]), .in2(in2[4]), .in3(in3[4]), .in4(in4[4]), .in5(in5[4]), .in6(in6[4]), .in7(in7[4]));
    mux8x1_1b u5 (.sel(sel), .res(res[5]), .in0(in0[5]), .in1(in1[5]), .in2(in2[5]), .in3(in3[5]), .in4(in4[5]), .in5(in5[5]), .in6(in6[5]), .in7(in7[5]));
    mux8x1_1b u6 (.sel(sel), .res(res[6]), .in0(in0[6]), .in1(in1[6]), .in2(in2[6]), .in3(in3[6]), .in4(in4[6]), .in5(in5[6]), .in6(in6[6]), .in7(in7[6]));
    mux8x1_1b u7 (.sel(sel), .res(res[7]), .in0(in0[7]), .in1(in1[7]), .in2(in2[7]), .in3(in3[7]), .in4(in4[7]), .in5(in5[7]), .in6(in6[7]), .in7(in7[7]));
    mux8x1_1b u8 (.sel(sel), .res(res[8]), .in0(in0[8]), .in1(in1[8]), .in2(in2[8]), .in3(in3[8]), .in4(in4[8]), .in5(in5[8]), .in6(in6[8]), .in7(in7[8]));
    mux8x1_1b u9 (.sel(sel), .res(res[9]), .in0(in0[9]), .in1(in1[9]), .in2(in2[9]), .in3(in3[9]), .in4(in4[9]), .in5(in5[9]), .in6(in6[9]), .in7(in7[9]));
    mux8x1_1b u10 (.sel(sel), .res(res[10]), .in0(in0[10]), .in1(in1[10]), .in2(in2[10]), .in3(in3[10]), .in4(in4[10]), .in5(in5[10]), .in6(in6[10]), .in7(in7[10]));
    mux8x1_1b u11 (.sel(sel), .res(res[11]), .in0(in0[11]), .in1(in1[11]), .in2(in2[11]), .in3(in3[11]), .in4(in4[11]), .in5(in5[11]), .in6(in6[11]), .in7(in7[11]));
    mux8x1_1b u12 (.sel(sel), .res(res[12]), .in0(in0[12]), .in1(in1[12]), .in2(in2[12]), .in3(in3[12]), .in4(in4[12]), .in5(in5[12]), .in6(in6[12]), .in7(in7[12]));
    mux8x1_1b u13 (.sel(sel), .res(res[13]), .in0(in0[13]), .in1(in1[13]), .in2(in2[13]), .in3(in3[13]), .in4(in4[13]), .in5(in5[13]), .in6(in6[13]), .in7(in7[13]));
    mux8x1_1b u14 (.sel(sel), .res(res[14]), .in0(in0[14]), .in1(in1[14]), .in2(in2[14]), .in3(in3[14]), .in4(in4[14]), .in5(in5[14]), .in6(in6[14]), .in7(in7[14]));
    mux8x1_1b u15 (.sel(sel), .res(res[15]), .in0(in0[15]), .in1(in1[15]), .in2(in2[15]), .in3(in3[15]), .in4(in4[15]), .in5(in5[15]), .in6(in6[15]), .in7(in7[15]));
    mux8x1_1b u16 (.sel(sel), .res(res[16]), .in0(in0[16]), .in1(in1[16]), .in2(in2[16]), .in3(in3[16]), .in4(in4[16]), .in5(in5[16]), .in6(in6[16]), .in7(in7[16]));
    mux8x1_1b u17 (.sel(sel), .res(res[17]), .in0(in0[17]), .in1(in1[17]), .in2(in2[17]), .in3(in3[17]), .in4(in4[17]), .in5(in5[17]), .in6(in6[17]), .in7(in7[17]));
    mux8x1_1b u18 (.sel(sel), .res(res[18]), .in0(in0[18]), .in1(in1[18]), .in2(in2[18]), .in3(in3[18]), .in4(in4[18]), .in5(in5[18]), .in6(in6[18]), .in7(in7[18]));
    mux8x1_1b u19 (.sel(sel), .res(res[19]), .in0(in0[19]), .in1(in1[19]), .in2(in2[19]), .in3(in3[19]), .in4(in4[19]), .in5(in5[19]), .in6(in6[19]), .in7(in7[19]));
    mux8x1_1b u20 (.sel(sel), .res(res[20]), .in0(in0[20]), .in1(in1[20]), .in2(in2[20]), .in3(in3[20]), .in4(in4[20]), .in5(in5[20]), .in6(in6[20]), .in7(in7[20]));
    mux8x1_1b u21 (.sel(sel), .res(res[21]), .in0(in0[21]), .in1(in1[21]), .in2(in2[21]), .in3(in3[21]), .in4(in4[21]), .in5(in5[21]), .in6(in6[21]), .in7(in7[21]));
    mux8x1_1b u22 (.sel(sel), .res(res[22]), .in0(in0[22]), .in1(in1[22]), .in2(in2[22]), .in3(in3[22]), .in4(in4[22]), .in5(in5[22]), .in6(in6[22]), .in7(in7[22]));
    mux8x1_1b u23 (.sel(sel), .res(res[23]), .in0(in0[23]), .in1(in1[23]), .in2(in2[23]), .in3(in3[23]), .in4(in4[23]), .in5(in5[23]), .in6(in6[23]), .in7(in7[23]));
    mux8x1_1b u24 (.sel(sel), .res(res[24]), .in0(in0[24]), .in1(in1[24]), .in2(in2[24]), .in3(in3[24]), .in4(in4[24]), .in5(in5[24]), .in6(in6[24]), .in7(in7[24]));
    mux8x1_1b u25 (.sel(sel), .res(res[25]), .in0(in0[25]), .in1(in1[25]), .in2(in2[25]), .in3(in3[25]), .in4(in4[25]), .in5(in5[25]), .in6(in6[25]), .in7(in7[25]));
    mux8x1_1b u26 (.sel(sel), .res(res[26]), .in0(in0[26]), .in1(in1[26]), .in2(in2[26]), .in3(in3[26]), .in4(in4[26]), .in5(in5[26]), .in6(in6[26]), .in7(in7[26]));
    mux8x1_1b u27 (.sel(sel), .res(res[27]), .in0(in0[27]), .in1(in1[27]), .in2(in2[27]), .in3(in3[27]), .in4(in4[27]), .in5(in5[27]), .in6(in6[27]), .in7(in7[27]));
    mux8x1_1b u28 (.sel(sel), .res(res[28]), .in0(in0[28]), .in1(in1[28]), .in2(in2[28]), .in3(in3[28]), .in4(in4[28]), .in5(in5[28]), .in6(in6[28]), .in7(in7[28]));
    mux8x1_1b u29 (.sel(sel), .res(res[29]), .in0(in0[29]), .in1(in1[29]), .in2(in2[29]), .in3(in3[29]), .in4(in4[29]), .in5(in5[29]), .in6(in6[29]), .in7(in7[29]));
    mux8x1_1b u30 (.sel(sel), .res(res[30]), .in0(in0[30]), .in1(in1[30]), .in2(in2[30]), .in3(in3[30]), .in4(in4[30]), .in5(in5[30]), .in6(in6[30]), .in7(in7[30]));
    mux8x1_1b u31 (.sel(sel), .res(res[31]), .in0(in0[31]), .in1(in1[31]), .in2(in2[31]), .in3(in3[31]), .in4(in4[31]), .in5(in5[31]), .in6(in6[31]), .in7(in7[31]));
endmodule