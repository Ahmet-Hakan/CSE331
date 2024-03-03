module and_3b(output wire res,input wire a, input wire b, input wire c );
    wire ab; // Intermediate wire for a and b
    and (ab, a, b); // AND gate for a and b
    and (res, ab, c); // AND gate for ab and c
endmodule
