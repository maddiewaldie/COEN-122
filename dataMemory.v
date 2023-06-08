`timescale 1ns / 1ps

module dataMemory(clk, read, wrt, addr, dataIn, dataOut);

input clk, read, wrt;
input [31:0] addr;
input [31:0] dataIn;
reg [31:0] data[65535:0];
output reg [31:0] dataOut;

initial
begin
    data[2] = 3; //register 2 = address which is 2
    data[3] = -4;
    data[4] = 5;
    data[5] = 2;
    data[6] = 20; //register 3 = address which is 6
end

always@(posedge clk)
begin
    if(read == 1)
        dataOut = data[addr[15:0]];
    if(wrt == 1)
        data[addr[15:0]] = dataIn;
end
endmodule