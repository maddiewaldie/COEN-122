`timescale 1ns / 1ps

module programCounter(input in, input clk, output out);

input in, clk;
output out;
wire pcValue;

always@(posedge clk)
    begin
        pcValue = in;
        out = pcValue;
    end

endmodule