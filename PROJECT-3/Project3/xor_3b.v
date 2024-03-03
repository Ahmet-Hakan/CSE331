module xor_3b( output wire y,input wire a, input wire b, input wire c);
    wire ab; // Intermediate wires
    xor (ab, a, b); // XOR gate for a and b
    xor (y, ab, c); // XOR gate for ab and c
endmodule
