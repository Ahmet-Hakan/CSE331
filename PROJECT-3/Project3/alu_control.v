 module alu_control(
output  [2:0] C,
input [5:0] F,
input [2:0] P);
    wire rtype;
    wire not_rtype;
    wire N0, N1, N2;
    wire H0, H1, H2;
    wire R0, R1;
	 wire Mq;

    and_3b and1(rtype, P[0], P[1], P[2]);
    not not1(not_rtype, rtype);
    xor xor1(R0, F[1], F[0]);
    not not2(M1, F[2]);
    and_3b and_3b_1(R1, M1,F[1], F[0]);
    
    and and3(N0, P[0], not_rtype);
    and and4(N1, P[1], not_rtype);
    and and5(N2, P[2], not_rtype);

    and and6(H0, R0, rtype);
    and and7(H1, R1, rtype);
    and and8(H2, F[1], rtype);
    or or1(C[0], H0, N0);
    or or2(C[1], H1, N1);
    or or3(C[2], H2, N2);


endmodule