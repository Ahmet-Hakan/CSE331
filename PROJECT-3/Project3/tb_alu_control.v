module tb_alu_control();
    wire [2:0] C;
    reg [5:0] F;
    reg [2:0] P;
    alu_control uut(
        .C(C),
        .F(F),
        .P(P)
    );

    initial begin
         F = 6'b000010; P = 3'b111 ; 
        #5 $display("F: %b, P: %b, C: %b : 3'b101", F, P, C);
         F = 6'b000011; P = 3'b111 ;
        #5 $display("F: %b, P: %b, C: %b 3'b110", F, P, C);
         F = 6'b000100; P = 3'b111 ;
        #5 $display("F: %b, P: %b, C: %b 3'b000", F, P, C);
         F = 6'b000101; P = 3'b111 ;
        #5 $display("F: %b, P: %b, C: %b 3'b001", F, P, C);
         F = 6'b000111; P = 3'b111 ;
        #5 $display("F: %b, P: %b, C: %b 3'b100", F, P, C);
         F = 6'b001000; P = 3'b000;
        #5 $display("F: %b, P: %b, C: %b 3'b000", F, P, C);
         F = 6'b001010; P = 3'b001;
        #5 $display("F: %b, P: %b, C: %b 3'b001", F, P, C);
         F = 6'b001000; P = 3'b010;
        #5 $display("F: %b, P: %b, C: %b 3'b010", F, P, C);
         F = 6'b001010; P = 3'b011;
        #5 $display("F: %b, P: %b, C: %b 3'b011", F, P, C);
         F = 6'b001000; P = 3'b100;
        #5 $display("F: %b, P: %b, C: %b 3'b100", F, P, C);
         F = 6'b001010; P = 3'b101;
        #5 $display("F: %b, P: %b, C: %b 3'b101", F, P, C);
         F = 6'b001000; P = 3'b110;
        #5 $display("F: %b, P: %b, C: %b 3'b110", F, P, C);
    end
    
    
endmodule
