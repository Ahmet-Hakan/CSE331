module shift_left_2 (
output [31:0] shifted_address,
input [31:0] address);
wire [1:0] zero = 2'b00;
buf_4b buf_4b0 ( shifted_address[5:2],address[3:0]);
buf_4b buf_4b1 ( shifted_address[9:6],address[7:4]);
buf_4b buf_4b2 ( shifted_address[13:10],address[11:8]);
buf_4b buf_4b3 ( shifted_address[17:14],address[15:12]);
buf_4b buf_4b4 ( shifted_address[21:18],address[19:16]);
buf_4b buf_4b5 ( shifted_address[25:22],address[23:20]);
buf_4b buf_4b6 ( shifted_address[29:26],address[27:24]);
buf buf_0 ( shifted_address[30],address[28]);
buf buf_1 ( shifted_address[31],address[29]);
buf buf_2 ( shifted_address[0],zero[0]);
buf buf_3 ( shifted_address[1],zero[1]);
endmodule