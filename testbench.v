`timescale 1ns / 1ps

module testbenchLoop();
    wire [31:0] PCIn;
    wire [31:0] PCOut;
    reg clock;

    programCounter test1(PCIn, PCOut, clock);

    wire NN, Z;

    alu test1_5(PCOut, 1, 4'b0, PCIn, N, Z);

    initial

    begin
        clock = 0;
        forever %5 clock = ~clock;
    end

endmodule

module testbench();

    wire [31:0] A;
    wire [31:0] alu_out;
    wire [31:0] ex_dataMemoryOut_out;
    wire ex_jumpMemOut, orOut;
    wire [31:0] dataOut;



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