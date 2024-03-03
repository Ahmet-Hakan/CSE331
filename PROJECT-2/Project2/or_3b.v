module or_3b( output wire res, input wire a, input wire b, input wire c);
    wire ab; // Intermediate wire for a and b
    or (ab, a, b); // OR gate for a and b
    or (res, ab, c); // OR gate for ab and c
endmodule