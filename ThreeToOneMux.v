module three_oneMux(a, negA, b, sel, out);

input [31:0] a;
input [31:0] negA;
input [31:0] b;
input [1:0] sel;

wire [1:0] notwire;
wire [31:0] andwire1;
wire [31:0] andwire2;
wire [31:0] andwire3;

output [31:0] out;

//Not gate applies to all bits of A & -A
not(notwire[0], sel[0]);
not(notwire[1], sel[1]);

//A0 & -A0
and(andwire1[0], a[0], notwire[0], notwire[1]);
and(andwire2[0], sel[0], notwire[1], b[0]);
and(andwire3[0], negA[0], notwire[0], sel[1]);
or(out[0], andwire1[0], andwire2[0], andwire3[0]);

//A1 & -A1
and(andwire1[1], a[1], notwire[0], notwire[1]);
and(andwire2[1], sel[0], notwire[1], b[1]);
and(andwire3[1], negA[1], notwire[0], sel[1]);
or(out[1], andwire1[1], andwire2[1], andwire3[1]);

//A2 & -A2
and(andwire1[2], a[2], notwire[0], notwire[1]);
and(andwire2[2], sel[0], notwire[1], b[2]);
and(andwire3[2], negA[2], notwire[0], sel[1]);
or(out[2], andwire1[2], andwire2[2], andwire3[2]);

//A3 & -A3
and(andwire1[3], a[3], notwire[0], notwire[1]);
and(andwire2[3], sel[0], notwire[1], b[3]);
and(andwire3[3], negA[3], notwire[0], sel[1]);
or(out[3], andwire1[3], andwire2[3], andwire3[3]);

//A4 & -A4
and(andwire1[4], a[4], notwire[0], notwire[1]);
and(andwire2[4], sel[0], notwire[1], b[4]);
and(andwire3[4], negA[4], notwire[0], sel[1]);
or(out[4], andwire1[4], andwire2[4], andwire3[4]);

//A5 & -A5
and(andwire1[5], a[5], notwire[0], notwire[1]);
and(andwire2[5], sel[0], notwire[1], b[5]);
and(andwire3[5], negA[5], notwire[0], sel[1]);
or(out[5], andwire1[5], andwire2[5], andwire3[5]);

//A6 & -A6
and(andwire1[6], a[6], notwire[0], notwire[1]);
and(andwire2[6], sel[0], notwire[1], b[6]);
and(andwire3[6], negA[6], notwire[0], sel[1]);
or(out[6], andwire1[6], andwire2[6], andwire3[6]);

//A7 & -A7
and(andwire1[7], a[7], notwire[0], notwire[1]);
and(andwire2[7], sel[0], notwire[1], b[7]);
and(andwire3[7], negA[7], notwire[0], sel[1]);
or(out[7], andwire1[7], andwire2[7], andwire3[7]);

//A8 & -A8
and(andwire1[8], a[8], notwire[0], notwire[1]);
and(andwire2[8], sel[0], notwire[1], b[8]);
and(andwire3[8], negA[8], notwire[0], sel[1]);
or(out[8], andwire1[8], andwire2[8], andwire3[8]);

//A9 & -A9
and(andwire1[9], a[9], notwire[0], notwire[1]);
and(andwire2[9], sel[0], notwire[1], b[9]);
and(andwire3[9], negA[9], notwire[0], sel[1]);
or(out[9], andwire1[9], andwire2[9], andwire3[9]);

//A10 & -A10
and(andwire1[10], a[10], notwire[0], notwire[1]);
and(andwire2[10], sel[0], notwire[1], b[10]);
and(andwire3[10], negA[10], notwire[0], sel[1]);
or(out[10], andwire1[10], andwire2[10], andwire3[10]);

//A11 & -A11
and(andwire1[11], a[11], notwire[0], notwire[1]);
and(andwire2[11], sel[0], notwire[1], b[11]);
and(andwire3[11], negA[11], notwire[0], sel[1]);
or(out[11], andwire1[11], andwire2[11], andwire3[11]);

//A12 & -A12
and(andwire1[12], a[12], notwire[0], notwire[1]);
and(andwire2[12], sel[0], notwire[1], b[12]);
and(andwire3[12], negA[12], notwire[0], sel[1]);
or(out[12], andwire1[12], andwire2[12], andwire3[12]);

//A13 & -A13
and(andwire1[13], a[13], notwire[0], notwire[1]);
and(andwire2[13], sel[0], notwire[1], b[13]);
and(andwire3[13], negA[13], notwire[0], sel[1]);
or(out[13], andwire1[13], andwire2[13], andwire3[13]);

//A14 & -A14
and(andwire1[14], a[14], notwire[0], notwire[1]);
and(andwire2[14], sel[0], notwire[1], b[14]);
and(andwire3[14], negA[14], notwire[0], sel[1]);
or(out[14], andwire1[14], andwire2[14], andwire3[14]);

//A15 & -A15
and(andwire1[15], a[15], notwire[0], notwire[1]);
and(andwire2[15], sel[0], notwire[1], b[15]);
and(andwire3[15], negA[15], notwire[0], sel[1]);
or(out[15], andwire1[15], andwire2[15], andwire3[15]);

//A16 & -A16
and(andwire1[16], a[16], notwire[0], notwire[1]);
and(andwire2[16], sel[0], notwire[1], b[16]);
and(andwire3[16], negA[16], notwire[0], sel[1]);
or(out[16], andwire1[16], andwire2[16], andwire3[16]);

//A17 & -A17
and(andwire1[17], a[17], notwire[0], notwire[1]);
and(andwire2[17], sel[0], notwire[1], b[17]);
and(andwire3[17], negA[17], notwire[0], sel[1]);
or(out[17], andwire1[17], andwire2[17], andwire3[17]);

//A18 & -A18
and(andwire1[18], a[18], notwire[0], notwire[1]);
and(andwire2[18], sel[0], notwire[1], b[18]);
and(andwire3[18], negA[18], notwire[0], sel[1]);
or(out[18], andwire1[18], andwire2[18], andwire3[18]);

//A19 & -A19
and(andwire1[19], a[19], notwire[0], notwire[1]);
and(andwire2[19], sel[0], notwire[1], b[19]);
and(andwire3[19], negA[19], notwire[0], sel[1]);
or(out[19], andwire1[19], andwire2[19], andwire3[19]);

//A20 & -A20
and(andwire1[20], a[20], notwire[0], notwire[1]);
and(andwire2[20], sel[0], notwire[1], b[20]);
and(andwire3[20], negA[20], notwire[0], sel[1]);
or(out[20], andwire1[20], andwire2[20], andwire3[20]);

//A21 & -A21
and(andwire1[21], a[21], notwire[0], notwire[1]);
and(andwire2[21], sel[0], notwire[1], b[21]);
and(andwire3[21], negA[21], notwire[0], sel[1]);
or(out[21], andwire1[21], andwire2[21], andwire3[21]);

//A22 & -A22
and(andwire1[22], a[22], notwire[0], notwire[1]);
and(andwire2[22], sel[0], notwire[1], b[22]);
and(andwire3[22], negA[22], notwire[0], sel[1]);
or(out[22], andwire1[22], andwire2[22], andwire3[22]);

//A23 & -A23
and(andwire1[23], a[23], notwire[0], notwire[1]);
and(andwire2[23], sel[0], notwire[1], b[23]);
and(andwire3[23], negA[23], notwire[0], sel[1]);
or(out[23], andwire1[23], andwire2[23], andwire3[23]);

//A24 & -A24
and(andwire1[24], a[24], notwire[0], notwire[1]);
and(andwire2[24], sel[0], notwire[1], b[24]);
and(andwire3[24], negA[24], notwire[0], sel[1]);
or(out[24], andwire1[24], andwire2[24], andwire3[24]);

//A25 & -A25
and(andwire1[25], a[25], notwire[0], notwire[1]);
and(andwire2[25], sel[0], notwire[1], b[25]);
and(andwire3[25], negA[25], notwire[0], sel[1]);
or(out[25], andwire1[25], andwire2[25], andwire3[25]);

//A26 & -A26
and(andwire1[26], a[26], notwire[0], notwire[1]);
and(andwire2[26], sel[0], notwire[1], b[26]);
and(andwire3[26], negA[26], notwire[0], sel[1]);
or(out[26], andwire1[26], andwire2[26], andwire3[26]);

//A27 & -A27
and(andwire1[27], a[27], notwire[0], notwire[1]);
and(andwire2[27], sel[0], notwire[1],b[27]);
and(andwire3[27], negA[27], notwire[0], sel[1]);
or(out[27], andwire1[27], andwire2[27], andwire3[27]);

//A28 & -A28
and(andwire1[28], a[28], notwire[0], notwire[1]);
and(andwire2[28], sel[0], notwire[1], b[28]);
and(andwire3[28], negA[28], notwire[0], sel[1]);
or(out[28], andwire1[28], andwire2[28], andwire3[28]);

//A29 & -A29
and(andwire1[29], a[29], notwire[0], notwire[1]);
and(andwire2[29], sel[0], notwire[1], b[29]);
and(andwire3[29], negA[29], notwire[0], sel[1]);
or(out[29], andwire1[29], andwire2[29], andwire3[29]);

//A30 & -A30
and(andwire1[30], a[30], notwire[0], notwire[1]);
and(andwire2[30], sel[0], notwire[1], b[30]);
and(andwire3[30], negA[30], notwire[0], sel[1]);
or(out[30], andwire1[30], andwire2[30], andwire3[30]);

//A31 & -A31
and(andwire1[31], a[31], notwire[0], notwire[1]);
and(andwire2[31], sel[0], notwire[1], b[31]);
and(andwire3[31], negA[31], notwire[0], sel[1]);
or(out[31], andwire1[31], andwire2[31], andwire3[31]);

endmodule