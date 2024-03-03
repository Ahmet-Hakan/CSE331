module and_5b(output wire res,input wire a, input wire b, input wire c, input wire d, input wire e);
	and_4b and1(t1, a,b,c,d);
	and and2(res, t1,e);


endmodule