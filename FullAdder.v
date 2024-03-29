`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 02:10:11 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(A, B, cout, sum);

input [31:0] A;
input [31:0] B;
output [31:0] sum;
output cout;

wire c0, c1, c2, c3, c, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30;

OneBitAdder adder_0(A[0], B[0], 1'b0, sum[0], c0);
OneBitAdder adder_1(A[1], B[1], c0, sum[1], c1);
OneBitAdder adder_2(A[2], B[2], c1, sum[2], c2);
OneBitAdder adder_3(A[3], B[3], c2, sum[3], c3);
OneBitAdder adder_4(A[4], B[4], c3, sum[4], c4);
OneBitAdder adder_5(A[5], B[5], c4, sum[5], c5);
OneBitAdder adder_6(A[6], B[6], c5, sum[6], c6);
OneBitAdder adder_7(A[7], B[7], c6, sum[7], c7);
OneBitAdder adder_8(A[8], B[8], c7, sum[8], c8);
OneBitAdder adder_9(A[9], B[9], c8, sum[9], c9);
OneBitAdder adder_10(A[10], B[10], c9, sum[10], c10);
OneBitAdder adder_11(A[11], B[11], c10, sum[11], c11);
OneBitAdder adder_12(A[12], B[12], c11, sum[12], c12);
OneBitAdder adder_13(A[13], B[13], c12, sum[13], c13);
OneBitAdder adder_14(A[14], B[14], c13, sum[14], c14);
OneBitAdder adder_15(A[15], B[15], c14, sum[15], c15);
OneBitAdder adder_16(A[16], B[16], c15, sum[16], c16);
OneBitAdder adder_17(A[17], B[17], c16, sum[17], c17);
OneBitAdder adder_18(A[18], B[18], c17, sum[18], c18);
OneBitAdder adder_19(A[19], B[19], c18, sum[19], c19);
OneBitAdder adder_20(A[20], B[20], c19, sum[20], c20);
OneBitAdder adder_21(A[21], B[21], c20, sum[21], c21);
OneBitAdder adder_22(A[22], B[22], c21, sum[22], c22);
OneBitAdder adder_23(A[23], B[23], c22, sum[23], c23);
OneBitAdder adder_24(A[24], B[24], c23, sum[24], c24);
OneBitAdder adder_25(A[25], B[25], c24, sum[25], c25);
OneBitAdder adder_26(A[26], B[26], c25, sum[26], c26);
OneBitAdder adder_27(A[27], B[27], c26, sum[27], c27);
OneBitAdder adder_28(A[28], B[28], c27, sum[28], c28);
OneBitAdder adder_29(A[29], B[29], c28, sum[29], c29);
OneBitAdder adder_30(A[30], B[30], c29, sum[30], c30);
OneBitAdder adder_31(A[31], B[31], c30, sum[31], c31);

endmodule
