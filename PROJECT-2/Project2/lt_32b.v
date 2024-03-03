module lt_32b(input [31:0] a, b, output[31:0] res);
    wire borrow;
		wire[31:0] result;
    sub_32b sub(a, b, result, borrow);
		
	
not not0 (res[0 ],borrow);
not not1 (res[1 ],borrow);
not not2 (res[2 ],borrow);
not not3 (res[3 ],borrow);
not not4 (res[4 ],borrow);
not not5 (res[5 ],borrow);
not not6 (res[6 ],borrow);
not not7 (res[7 ],borrow);
not not8 (res[8 ],borrow);
not not9 (res[9 ],borrow);
not not10(res[10],borrow);
not not11(res[11],borrow);
not not12(res[12],borrow);
not not13(res[13],borrow);
not not14(res[14],borrow);
not not15(res[15],borrow);
not not16(res[16],borrow);
not not17(res[17],borrow);
not not18(res[18],borrow);
not not19(res[19],borrow);
not not20(res[20],borrow);
not not21(res[21],borrow);
not not22(res[22],borrow);
not not23(res[23],borrow);
not not24(res[24],borrow);
not not25(res[25],borrow);
not not26(res[26],borrow);
not not27(res[27],borrow);
not not28(res[28],borrow);
not not29(res[29],borrow);
not not30(res[30],borrow);
not not31(res[31],borrow);
   
endmodule 