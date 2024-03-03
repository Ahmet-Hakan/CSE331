module mux_2x1_5b (
    output wire [4:0] out,
    input wire [4:0] in1,
    input wire [4:0] in2,
    input wire sel
);
    genvar i;
    generate
        for (i = 0; i < 5; i = i + 1) begin : mux_gen
            mux_2x1_1b mux_i (.out(out[i]), .in1(in1[i]), .in2(in2[i]), .sel(sel));
        end
    endgenerate
endmodule
