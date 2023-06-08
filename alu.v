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

module alu(A, B, sel, out, N, Z);
    input [31:0] A, B;
    input [3:0] sel;
    output reg [31:0] out;
    output reg N, Z;

    always@(A, B, sel)

    begin
        if(sel == 4'b0000) // add
            out = A + B;
        if(sel == 4'b0101) // increment
            out = A + 4'b1000; // increment by 16 - check later
        if(sel == 4'b0010) // negate
            out = ~A + 1;
        if(sel == 4'b0011) // subtract
            out = A + (~B + 1);
        if(sel == 4'b0100) // pass val
            out = A;
    end

    always@(out)

    begin
        if (sel != 4'b0100)
        begin
            if(out == 0)
                Z = 1;
            else if (out != 0)
                Z = 0;
            if (out[31] == 1)
                N = 1;
            else if (out[31] == 0)
                N = 0;
        end
    end

endmodule
