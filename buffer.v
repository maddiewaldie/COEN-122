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


module IF_ID(clk, PC_in, inst_in, PC_out, inst_out);
    input clk;
    input [31:0] PC_in;
    input [31:0] inst_in;
    output reg [31:0] PC_out;
    output reg [31:0] inst_out;
    
    always@(posedge clk)
    begin
        PC_out = PC_in;
        inst_out = inst_in;
    end
endmodule

module ID_EX(clk, WB_in, M_in, EX_in,PC_in, rs1_in, rs2_in, ImmGen_in, ALUcontrol_in, rd_in, 
            WB_out, M_out, EX_out, PC_out, rs1_out, rs2_out, ImmGen_out, ALUcontrol_out, rd_out);
    input clk;
    input [1:0] WB_in;
    input [2:0] M_in;
    input [2:0] EX_in;
    input [31:0] PC_in;
    input [31:0] rs1_in;
    input [31:0] rs2_in;
    input [31:0] ImmGen_in;
    input [3:0] ALUcontrol_in;
    input [4:0] rd_in;
    output reg  [1:0] WB_out;
    output reg [2:0] M_out;
    output reg [2:0] EX_out;
    output reg [31:0] PC_out;
    output reg [31:0] rs1_out;
    output reg [31:0] rs2_out;
    output reg [31:0] ImmGen_out;
    output reg [3:0] ALUcontrol_out;
    output reg [4:0] rd_out;
    
    always@(posedge clk)
    begin
        WB_out = WB_in;
        M_out = M_in;
        EX_out = EX_in;
        PC_out = PC_in;
        rs1_out = rs1_in;
        rs2_out = rs2_in;
        ImmGen_out = ImmGen_in;
        ALUcontrol_out = ALUcontrol_in;
        rd_out = rd_in;
    end 
endmodule

module EX_MEM(clk, WB_in, M_in, AddSum_in, Zero_in, ALU_in, rs2_in, rd_in, 
                    WB_out, M_out, AddSum_out, Zero_out, ALU_out, rs2_out, rd_out);
    input clk;
    input [1:0] WB_in;
    input [2:0] M_in;
    input [31:0] AddSum_in;
    input Zero_in;
    input [31:0] ALU_in;
    input [31:0] rs2_in;
    input [4:0] rd_in;
    output reg [1:0] WB_out;
    output reg [2:0] M_out;
    output reg [31:0] AddSum_out;
    output reg Zero_out;
    output reg [31:0] ALU_out;
    output reg [31:0] rs2_out;
    output reg [4:0] rd_out;
    
    always@(posedge clk)
    begin
        WB_out = WB_in;
        M_out = M_in;
        AddSum_out = AddSum_in;
        Zero_out = Zero_in;
        ALU_out = ALU_in;
        rs2_out = rs2_in;
        rd_out = rd_in;
    end
endmodule

module MEM_WB(clk, WB_in, readData_in, ALU_in, rd_in,
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
endmodule
