`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2023 02:21:09 PM
// Design Name: 
// Module Name: buffer
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


module IF_ID(clk, PC_in, inst_in, PC_id, opcode, rs1, rs2, rd, signIn, signIn_inc );
    input clk;
    input [31:0] PC_in;
    input [31:0] inst_in;
    output reg [31:0] PC_id;
    output reg [3:0] opcode;
    output reg [5:0] rs1;
    output reg [5:0] rs2;
    output reg [5:0] rd;
    output reg [21:0] signIn;
    output reg [15:0] signIn_inc;
    
    always@(posedge clk)
    begin
        PC_id = PC_in;
        opcode = inst_in[31:28];
        rs1 = inst_in[21:16];
        rs2 = inst_in[15:10];
        rd = inst_in[27:22];
        signIn = inst_in[21:0];
        signIn_inc = inst_in[15:0];
    end
endmodule

module ID_EXMEM(clk, input regWrite, input memToReg, 
                input ALUSrc1, input ALUSrc2, input jumpMem, 
                input memRead, input memWrite, input aluOp, input PC_id, input rs, input rt, input imm, input imm_inc, input rd,
                output regWrite_EX, output memToReg_EX, output ALUSrc1_EX, output jumpMem_EX, output memRead_EX, 
                output memWrie_EX, output aluOp_EX, output ALUSrc2_EX, output PC_EX, output rs_EX, output rt_EX, 
                output imm_EX, output imm_incEX, output rd_EX);
    input clk;
    input regWrite;
    input memToReg; 
    input [1:0] ALUSrc1;
    input ALUSrc2, jumpMem, memRead, memWrite;
    input [3:0] aluOp;
    input [31:0] PC_id;
    input [31:0] rs;
    input [31:0] rt;
    input [31:0] imm;
    input [31:0] imm_inc; 
    input [5:0] rd; 
    
    output reg regWrite_EX, memToReg_EX, ALUSrc2_EX, jumpMem_EX, memRead_EX, memWrite_EX;
    output reg [1:0] ALUSrc1_EX;
    output reg [3:0] aluOp_EX;
    output reg [31:0] PC_EX;
    output reg [31:0] rs_EX, rt_EX; 
    output reg [31:0] imm_EX; //ASK ABOUT THIIS
    output reg [31:0] imm_incEX;
    output reg [5:0] rd_EX;
    
    always@(posedge clk)
    begin
        regWrite_EX = regWrite;
        memToReg_EX = memToReg;
        ALUSrc1_EX = ALUSrc1;
        ALUSrc2_EX = ALUSrc2;
        jumpMem_EX = jumpMem;
        memRead_EX = memRead;
        memWrite_EX = memWrite;
        aluOp_EX = aluOp;
        PC_EX = PC;
        rs_EX = rs;
        rt_EX = rt;
        imm_EX = imm; 
        imm_incEX = imm_inc;
        rd_EX = rd;
    
    end 
endmodule

module EXMEM_WB(input clk, input regWrite_EX, input memToReg_EX, input jumpMem_EX, input ALU_EX, input data_EX, input rd_EX,
                output regWrite_WB, output memToReg_WB, output jumpMem_WB, output ALU_WB, output data_WB, output rd_MEM);
    input clk;
    input regWrite_EX, memToReg_EX, jumpMem_EX; 
    input [31:0] ALU_EX;
    input [31:0] data_EX;
    input [5:0] rd_EX;
    output reg regWrite_WB, memToReg_WB, jumpMem_WB, ALU_WB;
    output reg [31:0] data_WB;
    output reg [5:0] rd_MEM;
    always@(posedge clk)
    begin
        regWrite_WB = regWrite_EX;
        memToReg_WB = memToReg_EX;
        jumpMem_WB = jumpMem_EX;
        ALU_WB = ALU_EX;
        data_WB = data_EX;
        rd_WB = rd_EX;
    end
endmodule

/*module MEM_WB(clk, WB_in, readData_in, ALU_in, rd_in,
                WB_out, readData_out, ALU_out, rd_out);
    input clk;
    input [1:0] WB_in;
    input [31:0] readData_in;
    input [31:0] ALU_in;
    input [4:0] rd_in;
    output reg [1:0] WB_out;
    output reg [31:0] readData_out;
    output reg [31:0] ALU_out;
    output reg [4:0] rd_out;
    
    always@(posedge clk)
    begin
        WB_out = WB_in;
        readData_out = readData_in;
        ALU_out = ALU_in;
        rd_out = rd_in;
    end
endmodule*/
