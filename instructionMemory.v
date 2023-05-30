`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 02:13:53 PM
// Design Name: 
// Module Name: instructionMemory
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


module instructionMemory(clk, addr, out);

input clk;
input [7:0] addr;
wire [31:0] instructions [255:0];
output reg [31:0] out;

assign instructions[100] = 12;
assign instructions[120] = 5;

always@(posedge clk)
begin
    out = instructions[addr];
end

endmodule
