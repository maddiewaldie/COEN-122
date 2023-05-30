`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 02:09:43 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(A, B, add, inc, neg, sub, out, Z, N);
    input [31:0] A;
    input [31:0] B;
    input add, inc, neg, sub;
    output[31:0] out;
    output Z,N;
    
    wire [1: 0] select;
    wire [31:0] outA;
    wire [31:0] outB;
    wire [31:0] neg_A;
    wire [31:0] out_adder;
    wire not_sub, carry;
    
    not(not_sub, sub);
    
    and(select[0], inc, not_sub);
    nor(select[1], add, inc);
    
    Negate negate_A(A, neg_A);
    ThreeToOneMux mux_A(A, neg_A, select, outA);
    TwoToOneMux mux_B(B, neg, outB);
    FullAdder addAB(.A(outA), .B(outB), .cout(carry), .sum(out));
    
    nor(Z, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], out[8], out[9], out[10], out[11], out[12], out[13], out[14], out[15], out[16], out[17], out[18], out[19], out[20], out[21], out[22], out[23], out[24], out[25], out[26], out[27], out[28], out[29], out[30], out[31]);
    
    assign N = out[31];

endmodule
