`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 02:09:13 PM
// Design Name: 
// Module Name: OneBitAdder
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


module OneBitAdder(A, B, cin, out, cout);

input A, B, cin;
output cout, out;
wire xor_out, andAB_out, cin_and_out;

xor(xor_out, A, B);
xor(out, xor_out, cin);
and(cin_and_out, cin, xor_out);
and(andAB_out, A, B);
or(cout, andAB_out, cin_and_out);

endmodule
