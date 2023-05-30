`timescale 1ns / 1ps

module signExtend(signIn, signOut);
    input [21:0] signIn;
    output reg [31:0] signOut;

    always@(signIn, signOut)
        if (signIn[21] == 1)
            signOut = (10'b1111111111, signIn);
        else if (signIn[21] == 0) 
            signOut = (10'b0000000000, signIn);
endmodule