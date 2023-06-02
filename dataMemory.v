`timescale 1ns / 1ps

module dataMemory(clk, read, wrt, addr, dataIn, dataOut);

input clk, read, wrt;
input [31:0] addr;
input [31:0] dataIn;
reg [31:0] data[65535:0];
output reg [31:0] dataOut;

always@(posedge clk)
begin
    if(read == 1)
        dataOut = data[addr[15:0]];
    if(wrt == 1)
        data[addr[15:0]] = dataIn;
end
endmodule