module and_6b (
    output wire out,
    input wire in1,
    input wire in2,
    input wire in3,
    input wire in4,
    input wire in5,
    input wire in6
);
    wire temp; 
    and_5b and_5b_0 (temp, in1, in2, in3, in4, in5);
    and and_0 (out, temp, in6);
    
endmodule