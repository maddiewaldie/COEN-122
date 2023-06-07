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


module MUX(A, B, C, jumpMem, or_out, out);

    input A, B, C;
    input jumpMem, or_out;
    output out;
    and(outA, A, ~jumpMem, ~or_out);
    and(outB, B, ~jumpMem, or_out);
    and(outC, C, jumpMem, ~or_out);
    or(out, outA, outB, outC);

endmodule
