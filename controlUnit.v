`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 02:45:55 PM
// Design Name: 
// Module Name: controlUnit
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


module controlUnit(opcode, regWrite, memToReg, ALUSrc1, ALUSrc2, branchN, branchZ, jump, jumpMem, memRead, memWrite, aluOp);

input [3:0] opcode;
output reg regWrite, memToReg, ALUSrc2, branchN, branchZ, jump, jumpMem, memRead, memWrite;
output reg [1:0] ALUSrc1;
output reg [3:0] aluOp;

always@(opcode)
	begin
	   // No Operation
        if (opcode == 4'b0000)
        begin
            regWrite = 0;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0100;
        end
        // Save PC
        else if (opcode == 4'b1111)
        begin
            regWrite = 1;
            memToReg = 0;
            ALUSrc1 = 01;
            ALUSrc2 = 1;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0000;
        end
        // Load
        else if (opcode == 4'b1110)
        begin
            regWrite = 1;
            memToReg = 1;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 1;
            memWrite = 0;
            aluOp = 4'b0100;
        end
        // Store
        else if (opcode == 4'b0011)
        begin
            regWrite = 0;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 1;
            aluOp = 4'b0100;
        end
        // Add
        else if (opcode == 4'b0100)
        begin
            regWrite = 1;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0000;
        end
        // Increment
        else if (opcode == 4'b0101)
        begin
            regWrite = 1;
            memToReg = 0;
            ALUSrc1 = 10;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0000;
        end
        // Negate
        else if (opcode == 4'b0110)
        begin
            regWrite = 1;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0010;
        end
        // Subtract
        else if (opcode == 4'b0111)
        begin
            regWrite = 1;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0011;
        end
        // Jump
        else if (opcode == 4'b1000)
        begin
            regWrite = 0;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 1;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0100;
        end
        //Branch if Zero
        else if (opcode == 4'b0100)
        begin
            regWrite = 0;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 1;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0100;
        end
        // Jump Memory
        else if (opcode == 4'b1010)
        begin
            regWrite = 0;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 0;
            branchZ = 0;
            jump = 0;
            jumpMem = 1;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0100;
        end
        // Branch if Negative
        else if (opcode == 4'b1011)
        begin
            regWrite = 0;
            memToReg = 0;
            ALUSrc1 = 00;
            ALUSrc2 = 0;
            branchN = 1;
            branchZ = 0;
            jump = 0;
            jumpMem = 0;
            memRead = 0;
            memWrite = 0;
            aluOp = 4'b0100;
        end
    end
endmodule



