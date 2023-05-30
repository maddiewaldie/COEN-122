`timescale 1ns / 1ps

module programCounter(input in, input clk, output out);

input [31:0] in;
input clk;
output [31:0] out;
wire [31:0] pcValue;

always@(posedge clk)
    begin
        pcValue = in;
        out = pcValue;
    end

endmodule