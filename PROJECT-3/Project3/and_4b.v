module and_4b(output wire res,input wire a, input wire b, input wire c, input wire d );
    wire ab, cd; // Intermediate wires
    and (ab, a, b); // AND gate for a and b
    and (cd, c, d); // AND gate for c and d
    and (res, ab, cd); // AND gate for ab and cd
endmodule
