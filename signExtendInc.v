`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2023 04:12:43 PM
// Design Name: 
// Module Name: signExtendInc
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


module signExtendInc(signIn_inc, signOut);
    input [15:0] signIn_inc;
    output reg [31:0] signOut;

    always@(signIn_inc, signOut)
        if (signIn_inc[15] == 1)
            signOut = {16'b1111111111111111, signIn_inc};
        else 
            signOut = {16'b0000000000000000, signIn_inc};
endmodule
