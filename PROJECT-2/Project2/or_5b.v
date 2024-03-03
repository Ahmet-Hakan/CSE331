module or_5b( output wire res, input wire a, input wire b, input wire c, input wire d, input wire e);
    wire ab, cd, abc; // Intermediate wires
    or (ab, a, b); // OR gate for a and b
    or (cd, c, d); // OR gate for c and d
    or (abc, ab, cd); // OR gate for ab and cd
    or (res, abc, e); // OR gate for abc and e
endmodule