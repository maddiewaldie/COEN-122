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

assign instructions[0] = SUB x4, x4, x4 		//clear x4 to 0;
assign instructions[1] = ADD x5, x2, x3;
assign instructions[2] = ADD x5, x2, x3
assign instructions[3] = 1111_000001_0000000000000000000001;

opcode4_rd6b_rs6_rt6_unused10b

ADD x5, x2, x3   	//save location of last element to be summed
SVPC x9, 1		//save branch address	

LD x6, x2		//load first element in memory to register x6
ADD x4, x4, x6		//add first element to x4
INC x2, x2, 1		//go to next element
SUB x8, x2, x5		//set up negative flag
BRN x9			//if negative flag == 1, jump back to beginning of loop

//end sun program

store
jump memory
brz

always@(negedge clk)
begin
    out = instructions[addr];
end

endmodule
