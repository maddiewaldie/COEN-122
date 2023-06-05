`timescale 1ns / 1ps

module or_gate(d1, d2, d3, out);
input d1 ,d2, d3;
output reg out;

    always@(d1, d2, d3)
begin
    out = d1 | d2 | d3;
end

endmodule
