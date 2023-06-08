`timescale 1ns / 1ps

module programCounter(in, clk, out);

input [31:0] in;
input clk;
output reg [31:0] out;

initial
begin
out = 0;
end

always@(negedge clk)
    begin
    #0.5
        //out = out + 1;
    if (in != 0)
        out = in;
    end

endmodule