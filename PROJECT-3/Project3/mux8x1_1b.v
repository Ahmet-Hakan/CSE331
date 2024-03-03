module mux8x1_1b(
    input [2:0] sel,
    output wire res,
    input in0, in1, in2, in3, in4, in5, in6, in7
);
    wire and_out0, and_out1, and_out2, and_out3, and_out4, and_out5, and_out6, and_out7;
    wire or_out0, or_out1, or_out2, or_out3;
	 wire sel0,sel1,sel2,sel3,sel4,sel5,sel6,sel7;

    and_3b and1(sel0,!sel[2],!sel[1],!sel[0] );
	 and_3b and2(sel1,!sel[2],!sel[1],sel[0] );
	 and_3b and3(sel2,!sel[2],sel[1],!sel[0] );
	 and_3b and4(sel3,!sel[2],sel[1],sel[0] );
	 and_3b and5(sel4,sel[2],!sel[1],!sel[0] );
	 and_3b and6(sel5,sel[2],!sel[1],sel[0] );
	 and_3b and7(sel6,sel[2],sel[1],!sel[0] );
	 and_3b and8(sel7,sel[2],sel[1],sel[0] );
	 

    // AND gates
    and(and_out0, sel0, in0);
    and(and_out1, sel1, in1);
    and(and_out2, sel2, in2);
    and(and_out3, sel3, in3);
    and(and_out4, sel4, in4);
    and(and_out5, sel5, in5);
    and(and_out6, sel6, in6);
    and(and_out7, sel7, in7);

    // OR gates
    or(or_out0, and_out0, and_out1);
    or(or_out1, and_out2, and_out3);
    or(or_out2, and_out4, and_out5);
    or(or_out3, and_out6, and_out7);
    or_4b or1(res, or_out0, or_out1, or_out2, or_out3);
endmodule
