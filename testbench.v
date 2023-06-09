`timescale 1ns / 1ps

module testbench();
    
    /* LEft-most mux */

    wire [31:0] rs_EX; 
    wire [31:0] adder_out;
    wire [31:0] data_WB;
    wire jumpMem_WB;
    wire or_out;
    wire [31:0] muxOut;
    wire [31:0] PCIn;
    reg clock;

   // MUX mux_test(PCIn, rs_EX, data_WB, jumpMem_WB, or_out, muxOut); //needs to be double checked if rs_EX is correct wire
    MUX mux_test(clock, adder_out, rs_WB, data_WB, jumpMem_WB, or_out, PCIn);
    /* PC */
   
    wire [31:0] PCOut;
   
    
    programCounter PC_test(PCIn, clock, PCOut);

    /* first adder */
    
    //wire N_ignore, Z_ignore;

   // alu adder_test(PCOut, 1, 4'b0, PCIn, N_ignore, Z_ignore);
   
   PC_adder pc_adder_test(PCOut, adder_out);
    
    /*Instruction Memory */
    
    wire [31:0] inst_in;
    
    instructionMemory im_test (clock, PCOut, inst_in);
    
    /* IF/ID Buffer */
    wire [31:0] PC_id;
    wire [3:0] opcode;
    wire [5:0] rs1;
    wire [5:0] rs2;
    wire [5:0] rd;
    wire [21:0] signIn;
    wire [15:0] signIn_inc;
    
    
    IF_ID ifid_test (clock, PCOut, inst_in, PC_id, opcode, rs1, rs2, rd, signIn, signIn_inc);
    
    /* immediate generator 1 */
    wire [31:0] imm;
    signExtend imm_gen_test1(signIn, imm);
    
    /* immediate generator 2 (for increment instruction) */
    wire [31:0] imm_inc;
    signExtendInc imm_gen_inc(signIn_inc, imm_inc);
    
    /* Control Unit */
    wire regWrite;
    wire memToReg;
    wire [1:0] ALUSrc1;
    wire ALUSrc2;
    wire branchN;
    wire branchZ;
    wire jump;
    wire jumpMem;
    wire memRead;
    wire memWrite;
    wire [3:0] aluOp;
    
    controlUnit control_test(opcode, regWrite, memToReg, ALUSrc1, ALUSrc2, branchN, branchZ, jump, jumpMem, memRead, memWrite, aluOp);
    
   
    /*Register File */
    
    wire regWrite_WB; //from wb? or directly from control? 
    wire [31:0] rs;
    wire [31:0] rt;
    wire [31:0] dataOut;
    register register_file_test(clock, regWrite_WB, rd_WB, rs1, rs2, dataOut, rs, rt);
    
    /* ID_EXMEM Buffer */
    wire regWrite_EX, memToReg_EX, jumpMem_EX, memRead_EX, memWrite_EX, ALUSrc2_EX;
    wire [1:0] ALUSrc1_EX;
    wire [3:0] aluOp_EX;
    wire [31:0] PC_EX;
    wire [31:0] rs_EX;
    wire [31:0] rt_EX;
    wire [31:0] imm_EX;
    wire [31:0] imm_incEX;
    wire [5:0] rd_EX;
    wire jump_EX;
    wire branchZEX;
    wire branchNEX;
    ID_EXMEM id_exmem_test(clock, regWrite, memToReg, ALUSrc1, ALUSrc2, jumpMem, memRead, memWrite, aluOp, PC_id, rs, rt, 
                     imm, imm_inc, rd, regWrite_EX, memToReg_EX, ALUSrc1_EX, jumpMem_EX, memRead_EX, 
                memWrite_EX, aluOp_EX, ALUSrc2_EX, PC_EX, rs_EX, rt_EX, 
                imm_EX, imm_incEX, rd_EX,
                jump, branchZ, branchN, jump_EX, branchZEX, branchNEX);
    
    wire [31:0] alu_mux1; 
    wire [31:0] alu_mux2;

    /* alu_mux1_test (two-to-one mux) */
    TwoToOneMux alu_mux1_test(clock, rs_EX, PC_EX, ALUSrc2_EX, alu_mux1);

    /* alu_mux2_test (three-to-one mux) */ 
    ThreeToOneMux alu_mux2_test(rt_EX, imm_EX, imm_incEX, ALUSrc1_EX, alu_mux2);
    
    /* ALU test */
    wire [31:0] alu_EX;
    wire N, Z;
    
    alu alu_test(alu_mux1, alu_mux2, aluOp_EX, alu_EX, N, Z);
    
    /* Data Memory test */
    wire [31:0] data_EX;
    
    dataMemory dataMemory_test(clock, memRead_EX, memWrite_EX,  rt_EX,rs_EX, data_EX);
    
    /* EXMEM_WB Buffer */
 

    wire memToReg_WB, regWrite_WB, jumpMem_WB;
    wire [31:0] alu_WB;
    wire [31:0] data_WB;
    wire [5:0] rd_WB;   
    wire [31:0] rs_WB;
    wire jump_WB;
    wire branchZWB;
    wire branchNWB;
    wire NWB;
    wire ZWB;
    EXMEM_WB exmem_wb_test(clock, regWrite_EX, memToReg_EX, jumpMem_EX, alu_EX, data_EX, rd_EX, rs_EX,
                regWrite_WB, memToReg_WB, jumpMem_WB, alu_WB, data_WB, rd_WB, rs_WB,
                jump_EX,branchZEX, branchNEX, N, Z, jump_WB, branchZWB, branchNWB, NWB, ZWB);
                
     /* Logic Gates */
    wire z_and_out, n_and_out;
    
    and_gate z_andGate_test(ZWB, branchZWB, z_and_out);
    and_gate n_andGate_test(NWB, branchNWB, n_and_out);
    
    or_gate or_gate_test(z_and_out, n_and_out, jump, or_out);
    
    /* rightmost mux (two-to-one mux) */ 
    TwoToOneMux rightmost_mux_test(clock, alu_WB, data_WB, memToReg_WB, dataOut);
    
    initial
    begin
        clock = 0;
        forever #5 clock = ~clock;
    end    
    
   /* initial
    begin
        //set PC=0
        #1500;
        $finish;
    end*/

endmodule