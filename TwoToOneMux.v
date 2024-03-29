`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 02:08:26 PM
// Design Name: 
// Module Name: ThreeToOneMux
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


module TwoToOneMux(clk, rs_EX, PC_EX, ALUSrc2, alu_mux1);

input clk;
input [31:0] PC_EX; //alu_WB
input [31:0] rs_EX; //data_WB
input ALUSrc2; //memToReg_WB
output reg [31:0] alu_mux1; //data_out

always @(rs_EX, PC_EX, ALUSrc2)
begin
    if (ALUSrc2 == 0)
        alu_mux1 = rs_EX;
    if (ALUSrc2 == 1)
        alu_mux1 = PC_EX;
end      
    

/*not(notSel0, sel[0]);
not(notSel1, sel[1]);

and(out1[0], A[0], notSel0, notSel1);
and(out1[1], A[1], notSel0, notSel1);
and(out1[2], A[2], notSel0, notSel1);
and(out1[3], A[3], notSel0, notSel1);
and(out1[4], A[4], notSel0, notSel1);
and(out1[5], A[5], notSel0, notSel1);
and(out1[6], A[6], notSel0, notSel1);
and(out1[7], A[7], notSel0, notSel1);
and(out1[8], A[8], notSel0, notSel1);
and(out1[9], A[9], notSel0, notSel1);
and(out1[10], A[10], notSel0, notSel1);
and(out1[11], A[11], notSel0, notSel1);
and(out1[12], A[12], notSel0, notSel1);
and(out1[13], A[13], notSel0, notSel1);
and(out1[14], A[14], notSel0, notSel1);
and(out1[15], A[15], notSel0, notSel1);
and(out1[16], A[16], notSel0, notSel1);
and(out1[17], A[17], notSel0, notSel1);
and(out1[18], A[18], notSel0, notSel1);
and(out1[19], A[19], notSel0, notSel1);
and(out1[20], A[20], notSel0, notSel1);
and(out1[21], A[21], notSel0, notSel1);
and(out1[22], A[22], notSel0, notSel1);
and(out1[23], A[23], notSel0, notSel1);
and(out1[24], A[24], notSel0, notSel1);
and(out1[25], A[25], notSel0, notSel1);
and(out1[26], A[26], notSel0, notSel1);
and(out1[27], A[27], notSel0, notSel1);
and(out1[28], A[28], notSel0, notSel1);
and(out1[29], A[29], notSel0, notSel1);
and(out1[30], A[30], notSel0, notSel1);
and(out1[31], A[31], notSel0, notSel1);


and(out2[0], 1, notSel1, sel[0]);
and(out2[1], 0, notSel1, sel[0]);
and(out2[2], 0, notSel1, sel[0]);
and(out2[3], 0, notSel1, sel[0]);
and(out2[4], 0, notSel1, sel[0]);
and(out2[5], 0, notSel1, sel[0]);
and(out2[6], 0, notSel1, sel[0]);
and(out2[7], 0, notSel1, sel[0]);
and(out2[8], 0, notSel1, sel[0]);
and(out2[9], 0, notSel1, sel[0]);
and(out2[10], 0, notSel1, sel[0]);
and(out2[11], 0, notSel1, sel[0]);
and(out2[12], 0, notSel1, sel[0]);
and(out2[13], 0, notSel1, sel[0]);
and(out2[14], 0, notSel1, sel[0]);
and(out2[15], 0, notSel1, sel[0]);
and(out2[16], 0, notSel1, sel[0]);
and(out2[17], 0, notSel1, sel[0]);
and(out2[18], 0, notSel1, sel[0]);
and(out2[19], 0, notSel1, sel[0]);
and(out2[20], 0, notSel1, sel[0]);
and(out2[21], 0, notSel1, sel[0]);
and(out2[22], 0, notSel1, sel[0]);
and(out2[23], 0, notSel1, sel[0]);
and(out2[24], 0, notSel1, sel[0]);
and(out2[25], 0, notSel1, sel[0]);
and(out2[26], 0, notSel1, sel[0]);
and(out2[27], 0, notSel1, sel[0]);
and(out2[28], 0, notSel1, sel[0]);
and(out2[29], 0, notSel1, sel[0]);
and(out2[30], 0, notSel1, sel[0]);
and(out2[31], 0, notSel1, sel[0]);


and(out3[0], negA[0], sel[1], notSel0);
and(out3[1], negA[1], sel[1], notSel0);
and(out3[2], negA[2], sel[1], notSel0);
and(out3[3], negA[3], sel[1], notSel0);
and(out3[4], negA[4], sel[1], notSel0);
and(out3[5], negA[5], sel[1], notSel0);
and(out3[6], negA[6], sel[1], notSel0);
and(out3[7], negA[7], sel[1], notSel0);
and(out3[8], negA[8], sel[1], notSel0);
and(out3[9], negA[9], sel[1], notSel0);
and(out3[10], negA[10], sel[1], notSel0);
and(out3[11], negA[11], sel[1], notSel0);
and(out3[12], negA[12], sel[1], notSel0);
and(out3[13], negA[13], sel[1], notSel0);
and(out3[14], negA[14], sel[1], notSel0);
and(out3[15], negA[15], sel[1], notSel0);
and(out3[16], negA[16], sel[1], notSel0);
and(out3[17], negA[17], sel[1], notSel0);
and(out3[18], negA[18], sel[1], notSel0);
and(out3[19], negA[19], sel[1], notSel0);
and(out3[20], negA[20], sel[1], notSel0);
and(out3[21], negA[21], sel[1], notSel0);
and(out3[22], negA[22], sel[1], notSel0);
and(out3[23], negA[23], sel[1], notSel0);
and(out3[24], negA[24], sel[1], notSel0);
and(out3[25], negA[25], sel[1], notSel0);
and(out3[26], negA[26], sel[1], notSel0);
and(out3[27], negA[27], sel[1], notSel0);
and(out3[28], negA[28], sel[1], notSel0);
and(out3[29], negA[29], sel[1], notSel0);
and(out3[30], negA[30], sel[1], notSel0);
and(out3[31], negA[31], sel[1], notSel0);

or(out[0], out1[0], out2[0], out3[0]);
or(out[1], out1[1], out2[1], out3[1]);
or(out[2], out1[2], out2[2], out3[2]);
or(out[3], out1[3], out2[3], out3[3]);
or(out[4], out1[4], out2[4], out3[4]);
or(out[5], out1[5], out2[5], out3[5]);
or(out[6], out1[6], out2[6], out3[6]);
or(out[7], out1[7], out2[7], out3[7]);
or(out[8], out1[8], out2[8], out3[8]);
or(out[9], out1[9], out2[9], out3[9]);
or(out[10], out1[10], out2[10], out3[10]);
or(out[11], out1[11], out2[11], out3[11]);
or(out[12], out1[12], out2[12], out3[12]);
or(out[13], out1[13], out2[13], out3[13]);
or(out[14], out1[14], out2[14], out3[14]);
or(out[15], out1[15], out2[15], out3[15]);
or(out[16], out1[16], out2[16], out3[16]);
or(out[17], out1[17], out2[17], out3[17]);
or(out[18], out1[18], out2[18], out3[18]);
or(out[19], out1[19], out2[19], out3[19]);
or(out[20], out1[20], out2[20], out3[20]);
or(out[21], out1[21], out2[21], out3[21]);
or(out[22], out1[22], out2[22], out3[22]);
or(out[23], out1[23], out2[23], out3[23]);
or(out[24], out1[24], out2[24], out3[24]);
or(out[25], out1[25], out2[25], out3[25]);
or(out[26], out1[26], out2[26], out3[26]);
or(out[27], out1[27], out2[27], out3[27]);
or(out[28], out1[28], out2[28], out3[28]);
or(out[29], out1[29], out2[29], out3[29]);
or(out[30], out1[30], out2[30], out3[30]);
or(out[31], out1[31], out2[31], out3[31]);

*/

endmodule
