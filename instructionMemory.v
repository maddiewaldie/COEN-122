module instructionMemory(clk, addr, out);
    input clk;
    input [7:0] addr;
    wire [31:0] instructions [255:0];
    output reg [31:0] out;

    // Sum program:
    assign instructions[0] = 32'b0111_000100_000100_000100_0000000000; //SUB x4, x4, x4 
    assign instructions[1] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[2] = 32'b0000_000000_000000_000000_0000000000;		
    assign instructions[3] = 32'b0100_000101_000010_000011_0000000000;// ADD x5, x2, x3;
    assign instructions[4] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[5] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[6] = 32'b1111_001001_0000000000000000000001; //SVPC x9, 1
    assign instructions[7] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[8] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[9] = 32'b1110_000110_000010_0000000000000000; //LD x6, x2
    assign instructions[10] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[12] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[13] = 32'b0100_000100_000100_000110_0000000000; //ADD x4, x4, x6
    assign instructions[14] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[15] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[16] = 32'b0101_000010_000010_0000000000000001; //INC x2, x2, 1
    assign instructions[17] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[18] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[19] = 32'b0111_001000_000010_000101_0000000000; //SUB x8, x2, x5
    assign instructions[20] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[21] = 32'b0000_000000_000000_000000_0000000000;
    
    assign instructions[22] = 32'b1011_000000_001001_0000000000000000; //BRN x9

    // Other instructions:
    assign instructions[23] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[24] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[25] = 32'b0011_000000_000101_000011_0000000000; //ST x5, x3
    assign instructions[26] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[27] = 32'b0000_000000_000000_000000_0000000000;
    assign instructions[25] = 32'b0011_000000_000101_000011_0000000000; //ST x5, x3
    assign instructions[28] = 32'b1010_000000_001001_0000000000000000; //JM x9
    assign instructions[29] = 32'b0000_000000_000000_000000_0000000000;	
    assign instructions[30] = 32'b0000_000000_000000_000000_0000000000;
    /*assign instructions[31] = 32'b1001_000110_0000000000000000000000;//BRZ x6*/

    always@(posedge clk)
    begin
        out = instructions[addr];
    end
endmodule
