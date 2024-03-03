module buf_26b(  output wire [31:0] out, input wire [31:0] in );
        buf_4b buf_4b_1 (out[3:0], in[3:0]);
        buf_4b buf_4b_2 (out[7:4], in[7:4]);
        buf_4b buf_4b_3 (out[11:8], in[11:8]);
        buf_4b buf_4b_4 (out[15:12], in[15:12]);
        buf_4b buf_4b_5 (out[19:16], in[19:16]);
        buf_4b buf_4b_6 (out[23:20], in[23:20]);
        buf buf_1 (out[24], in[24]);
        buf buf_2 (out[25], in[25]);  
    
endmodule