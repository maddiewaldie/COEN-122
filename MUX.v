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


module MUX(clk, adder_out, rs_WB, data_WB,  jumpMem, or_out, out);
    input clk;
    input [31:0] adder_out; 
    input [31:0] data_WB;
    input [31:0] rs_WB;
    input jumpMem, or_out;
    output reg [31:0] out;

always @(adder_out, data_WB, rs_WB, jumpMem, or_out)
begin
    if (jumpMem == 1)
        out = data_WB; 
    else if (or_out == 1)
        out = rs_WB;
    else
        out=adder_out;
end    
    
    /*and(outA, adder_out, ~or_out, ~jumpMem);
    and(outB, data_WB, 1, jumpMem);
    and(outC, rs_WB, or_out, ~jumpMem);
   
    or(out, outA, outB, outC);*/
endmodule
