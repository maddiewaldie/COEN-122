`timescale 1ns / 1ps

module testbench();

    wire [31:0] rs_EX;
    wire [31:0] adder_out;
    wire [31:0] data_WB;
    wire jumpMem_WB, or_out;
    wire [31:0] mux_out;
    wire [31:0] PCIn;

    MUX mux_test(rs_EX, adder_out, data_WB, jumpMem_WB, or_out, PCIn);
    
   
    wire [31:0] PCOut;
    reg clock;
    
    programCounter PC_test(PCIn, clock, PCOut);

    wire N, Z;

    alu adder_test(PCOut, 1, 4'b0, PCIn, N, Z);
    
    wire [31:0] inst_in;
    
    instructionMemory im_test (clock, PCOut, inst_in);
    
    wire [31:0] PC_if;
    wire [31:0] PC_id;
    wire [3:0] opcode;
    wire [5:0] rs1;
    wire [5:0] rs2;
    wire [5:0] rd;
    wire [21:0] signIn;
    wire [15:0] signIn_inc;
    
    
    IF_ID ifid_test (clock, PC_if, inst_in, PC_id, opcode, rs1, rs2, rd, signIn, signIn_inc);
    
    wire [31:0] imm;
    signExtend imm_gen_test1(signIn, imm);
    
    wire [31:0] imm_inc;
    signExtend imm_gen_test2(signIn_inc, imm_inc);
    
    wire regWrite;
    wire memToReg;
    wire ALUSrc1;
    wire ALUSrc2;
    wire branchN;
    wire branchZ;
    wire jump;
    wire jumpMem;
    wire memWrite;
    wire [3:0] aluOp;
    
    controlUnit control_test(opcode, regWrite, memToReg, ALUSrc1, ALUSrc2, branchN, branchZ, jump, jumpMem, memRead, memWrite, aluOp);
    
    wire regWrite_WB; //from wb? or directly from control? 
    wire [31:0] rs;
    wire [31:0] rt;
    wire [31:0] dataOut;
    register register_file_test(clock, regWrite_WB, rd, rs1, rs2, dataOut, rs, rt);
    
   
   /*unfinished*/ ID_EXMEM id_exmem_test(clock, regWrite, memToReg, ALUSrc1, ALUSrc2, jumpMem, memRead, memWrite, aluOp, PC_id, rs, rt, 
                     imm, imm_inc, rd, regWrite_EX, memToReg_EX, ALUSrc1_EX, jumpMem_EX, memRead_EX, 
                memWrie_EX, aluOp_EX, ALUSrc2_EX, PC_EX, rs_EX, rt_EX, 
                imm_EX, imm_incEX, rd_EX);
    
    /* alu_mux1_test (two-to-one mux*/
    /* alu_mux2_test (three-to-one mux*/  
    
    wire [31:0] alu_mux1;
    wire [31:0] alu_mux2;
    wire [3:0] ALUOp_EX;
    wire [31:0] ALU_EX;
    
    alu alu_test(alu_mux1, alu_mux2, ALUOp_EX, ALU_EX, N, Z);
    
    /*unfinished*/ dataMemory dataMemory_test(clock, read, wrt, addr, dataIn, dataOut);
    
    
    wire regWrite_EX, memToReg_EX, jumpMem_EX; 
    wire [31:0] ALU_EX;
    wire [31:0] data_EX;
    wire [5:0] rd_EX;
    wire memToReg_WB, jumpMem_WB, ALU_WB;
    wire [31:0] data_WB;
    wire [5:0] rd_MEM;   
   
    EXMEM_WB exmem_wb_test(clock, regWrite_EX, memToReg_EX, jumpMem_EX, ALU_EX, data_EX, rd_EX,
                regWrite_WB, memToReg_WB, jumpMem_WB, ALU_WB, data_WB, rd_MEM);
    initial
    begin
        clock = 0;
        forever #5 clock = ~clock;
    end    

endmodule



module instructionMemSum(addr, clk, instrOut);
    wire[31:0] instr[255:0];
    input clock;
    input [7:0] addr;
    output reg [31:0] instrOut;

    assign instr[0] = 32'b1111_001000_000000_000000_0000000001;
    assign instr[1] = 
    assign instr[2] = 
    assign instr[3] = 
    assign instr[4] = 
    assign instr[5] = 
    assign instr[6] = 
    assign instr[7] = 
    assign instr[8] = 
    assign instr[9] = 
    assign instr[10] = 
    assign instr[11] = 
    assign instr[12] = 
    assign instr[13] = 
    assign instr[14] = 
    assign instr[15] = 
    assign instr[16] = 

endmodule