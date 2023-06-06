module instructionMemory(clk, addr, out);
    input clk;
    input [7:0] addr;
    wire [31:0] instructions [255:0];
    output reg [31:0] out;

    // Sum program:
    assign instructions[0] = 0111_000100_00100_00100_0000000000 //SUB x4, x4, x4 		
    assign instructions[1] = 0100_000101_000010_000011_0000000000// ADD x5, x2, x3;
    assign instructions[2] =1111_001001_0000000000000000000001 //SVPC x9, 1
    assign instructions[3] =1110_000110_000010_0000000000000000 //LD x6, x2
    assign instructions[4] =0100_000100_000100_000110_0000000000 //ADD x4, x4, x6
    assign instructions[5] =0101_000010_000010_0000000000000001 //INC x2, x2, 1
    assign instructions[6] =0111_001000_000010_000101_0000000000 //SUB x8, x2, x5
    assign instructions[7] =1011_001001_0000000000000000000000 //BRN x9

    // Other instructions:
    assign instructions[8]=0011_000101_000011_0000000000000000 //ST x5, x3
    assign instructions[9]=1010_001001_0000000000000000000000 //JM x9
    assign instructions[10]=1001_000110_0000000000000000000000//BRZ x6

    always@(negedge clk)
    begin
        out = instructions[addr];
    end
endmodule
