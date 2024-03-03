module or_4b( output wire res, input wire a, input wire b, input wire c, input wire d);
    wire ab, cd; // Intermediate wires
    or (ab, a, b); // OR gate for a and b
    or (cd, c, d); // OR gate for c and d
    or (res, ab, cd); // OR gate for ab and cd
endmodule