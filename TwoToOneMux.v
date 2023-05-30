`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 02:07:17 PM
// Design Name: 
// Module Name: TwoToOneMux
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


module TwoToOneMux(B, sel, out);

input [31:0] B;
input sel;
output [31:0] out;
wire notSel;

not(notSel, sel);
and(out[0], B[0], notSel);
and(out[1], B[1], notSel);
and(out[2], B[2], notSel);
and(out[3], B[3], notSel);
and(out[4], B[4], notSel);
and(out[5], B[5], notSel);
and(out[6], B[6], notSel);
and(out[7], B[7], notSel);
and(out[8], B[8], notSel);
and(out[9], B[9], notSel);
and(out[10], B[10], notSel);
and(out[11], B[11], notSel);
and(out[12], B[12], notSel);
and(out[13], B[13], notSel);
and(out[14], B[14], notSel);
and(out[15], B[15], notSel);
and(out[16], B[16], notSel);
and(out[17], B[17], notSel);
and(out[18], B[18], notSel);
and(out[19], B[19], notSel);
and(out[20], B[20], notSel);
and(out[21], B[21], notSel);
and(out[22], B[22], notSel);
and(out[23], B[23], notSel);
and(out[24], B[24], notSel);
and(out[25], B[25], notSel);
and(out[26], B[26], notSel);
and(out[27], B[27], notSel);
and(out[28], B[28], notSel);
and(out[29], B[29], notSel);
and(out[30], B[30], notSel);
and(out[31], B[31], notSel);

endmodule
