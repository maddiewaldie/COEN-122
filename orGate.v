`timescale 1ns / 1ps

module or_gate(d1, d2, out);
input d1 ,d2;
output reg out;

always@(d1, d2)
begin
    out = d1 | d2;
end

endmodule