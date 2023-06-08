`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2023 02:38:23 PM
// Design Name: 
// Module Name: PC_adder
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


module PC_adder(PC_to_adder, adder_out);


input [31:0] PC_to_adder;
output reg [31:0] adder_out;

always@(PC_to_adder) 
    begin
    adder_out = PC_to_adder + 1;
    end 


endmodule
