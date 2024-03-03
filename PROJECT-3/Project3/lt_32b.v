module lt_32b(input [31:0] a, b, output[31:0] res);
    wire borrow;
		wire[31:0] result;
    sub_32b sub(a, b, result, borrow);
	wire zero = 1'b0;	
	
not not0 (res[0 ],borrow);
and andt1 (res[1 ],zero);
and andt2 (res[2 ],zero);
and andt3 (res[3 ],zero);
and andt4 (res[4 ],zero);
and andt5 (res[5 ],zero);
and andt6 (res[6 ],zero);
and andt7 (res[7 ],zero);
and andt8 (res[8 ],zero);
and andt9 (res[9 ],zero);
and andt10(res[10],zero);
and andt11(res[11],zero);
and andt12(res[12],zero);
and andt13(res[13],zero);
and andt14(res[14],zero);
and andt15(res[15],zero);
and andt16(res[16],zero);
and andt17(res[17],zero);
and andt18(res[18],zero);
and andt19(res[19],zero);
and andt20(res[20],zero);
and andt21(res[21],zero);
and andt22(res[22],zero);
and andt23(res[23],zero);
and andt24(res[24],zero);
and andt25(res[25],zero);
and andt26(res[26],zero);
and andt27(res[27],zero);
and andt28(res[28],zero);
and andt29(res[29],zero);
and andt30(res[30],zero);
and andt31(res[31],zero);

endmodule