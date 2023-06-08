`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 02:13:11 PM
// Design Name: 
// Module Name: register
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


module register(clk, wrt, rd, rs1, rs2, dataIn, rsOut, rtOut);

input clk, wrt;
input [5:0] rd;
input [5:0] rs1;
input [5:0] rs2;
input [31:0 ]dataIn;
reg[31:0] registers[63:0];
output reg[31:0] rsOut;
output reg[31:0] rtOut;

initial
begin
    registers[2] = 2;
    registers[3] = 6;
end

always@(posedge clk)
begin
    #0.5
    rsOut = registers[rs1];
    rtOut = registers[rs2];
    if(wrt == 1)
        registers[rd] = dataIn;
end
endmodule
