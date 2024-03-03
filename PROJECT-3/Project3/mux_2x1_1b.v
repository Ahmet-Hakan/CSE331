module mux_2x1_1b (
    output wire out,
    input wire in1,
    input wire in2,
    input wire sel
);
    wire nsel;
    wire a, b;

    not (nsel, sel); // NOT gate
    and (a, in1, nsel); // AND gate
    and (b, in2, sel); // AND gate
    or (out, a, b); // OR gate
endmodule