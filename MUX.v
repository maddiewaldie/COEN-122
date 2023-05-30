`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2023 03:41:28 PM
// Design Name: 
// Module Name: MUX
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


module MUX(A, B, C, D, sel, out);

    input A, B, C, D;
    input [1:0] sel;
    output out;
    and(outA, A, ~sel[1], ~sel[0]);
    and(outB, B, ~sel[1], sel[0]);
    and(outC, C, sel[1], ~sel[0]);
    and(outD, D, sel[1], sel[0]);
    or(out, outA, outB, outC, outD);

endmodule
