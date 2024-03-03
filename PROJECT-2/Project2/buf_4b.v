module buf_4b( output  [3:0] y, input  [3:0] a);
    buf buf0 ( y[0],a[0]);
    buf buf1 ( y[1],a[1]);
    buf buf2 ( y[2],a[2]);
    buf buf3 ( y[3],a[3]);
endmodule