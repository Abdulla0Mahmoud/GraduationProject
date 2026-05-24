
module FullAdder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;

assign sum = a ^ b ^ cin;
assign cout = ((a^b)&cin) | (a&b) ;

endmodule 

module CSA (X ,Y ,Z ,S ,C);

    input [27:0] X, Y, Z;
    output [27:0] S, C;
 
    assign C[0] = 1'b0;
    FullAdder FA0(X[0], Y[0], Z[0], S[0], C[1]);
    FullAdder FA1(X[1], Y[1], Z[1], S[1], C[2]);
    FullAdder FA2(X[2], Y[2], Z[2], S[2], C[3]);
    FullAdder FA3(X[3], Y[3], Z[3], S[3], C[4]);
    FullAdder FA4(X[4], Y[4], Z[4], S[4], C[5]);
    FullAdder FA5(X[5], Y[5], Z[5], S[5], C[6]);
    FullAdder FA6(X[6], Y[6], Z[6], S[6], C[7]);
    FullAdder FA7(X[7], Y[7], Z[7], S[7], C[8]);
    FullAdder FA8(X[8], Y[8], Z[8], S[8], C[9]);
    FullAdder FA9(X[9], Y[9], Z[9], S[9], C[10]);
    FullAdder FA10(X[10], Y[10], Z[10], S[10], C[11]);
    FullAdder FA11(X[11], Y[11], Z[11], S[11], C[12]);
    FullAdder FA12(X[12], Y[12], Z[12], S[12], C[13]);
    FullAdder FA13(X[13], Y[13], Z[13], S[13], C[14]);
    FullAdder FA14(X[14], Y[14], Z[14], S[14], C[15]);
    FullAdder FA15(X[15], Y[15], Z[15], S[15], C[16]);
    FullAdder FA16(X[16], Y[16], Z[16], S[16], C[17]);
    FullAdder FA17(X[17], Y[17], Z[17], S[17], C[18]);
    FullAdder FA18(X[18], Y[18], Z[18], S[18], C[19]);
    FullAdder FA19(X[19], Y[19], Z[19], S[19], C[20]);
    FullAdder FA20(X[20], Y[20], Z[20], S[20], C[21]);
    FullAdder FA21(X[21], Y[21], Z[21], S[21], C[22]);
    FullAdder FA22(X[22], Y[22], Z[22], S[22], C[23]);
    FullAdder FA23(X[23], Y[23], Z[23], S[23], C[24]);
    FullAdder FA24(X[24], Y[24], Z[24], S[24], C[25]);
    FullAdder FA25(X[25], Y[25], Z[25], S[25], C[26]);
    FullAdder FA26(X[26], Y[26], Z[26], S[26], C[27]);
    assign S[27] = 1'b0;

endmodule

module multiplier (A, B, C);

    input [13:0] A;
    input B;
    output reg [13:0] C;
    
    always@(A, B)
    begin
        if(B != 0)
            C = A;
        else
            C = 14'b0_0000000000_00;   
    end
    
endmodule 


module WallaceTreeMul (A,B,C);

 input [13:0] A, B;
 output reg [27:0] C;
 
 reg [26:0] C_reg;


    wire [27:0] AB [13:0], temp1 [13:0];
    wire [13:0] temp [13:0];
    wire [27:0] s [13:0];
    wire [27:0] c [13:0];
    genvar i;
    generate
        for(i = 0; i < 14; i = i + 1)
        begin : and_loop
            multiplier mul(A, B[i], temp[i]);
            assign temp1[i] = {{14{temp[i][13]}}, temp[i]};
            assign AB[i] = temp1[i] << i;
        end
    endgenerate

    CSA ca01(AB[0],  AB[1],  AB[2],  s[0], c[0]);
    CSA ca02(AB[3],  AB[4],  AB[5],  s[1], c[1]);
    CSA ca03(AB[6],  AB[7],  AB[8],  s[2], c[2]);
    CSA ca04(AB[9],  AB[10], AB[11], s[3], c[3]);
    CSA ca05(AB[12], ~AB[13], 28'd1,  s[4], c[4]);

    CSA ca06(s[0], c[0], s[1], s[5], c[5]);
    CSA ca07(c[1], s[2], c[2], s[6], c[6]);
    CSA ca08(s[3], c[3], s[4], s[7], c[7]);

    CSA ca10(s[5], c[5], s[6], s[8], c[8]);
    CSA ca11(c[6], s[7], c[7], s[9], c[9]);

    CSA ca12(s[8], c[8], s[9], s[10], c[10]);
    CSA ca13(c[9], c[4], 28'd0, s[11], c[11]);

    CSA ca14(s[10], c[10], s[11], s[12], c[12]);

    CSA ca15(s[12], c[12], c[11], s[13], c[13]);

    
always @(*) begin
    C_reg = s[13] + c[13];
    C = {C_reg[26], C_reg};
end

    
endmodule



module my_top;

reg [13:0] a,b;
wire [27:0] prod;

WallaceTreeMul wtm1(a,b,prod);

initial 
begin
    //a = 17'b0_00000010000_01110;
    a = 14'b0_00000000_00000;
    b = 14'b1_11111111_10010;
    #10;
end
initial
begin
    $monitor("\na = %d, \nb = %d,\nresult = %d",a,b,prod);
    $dumpfile("wtm.vcd");
    $dumpvars;
end

endmodule


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////



module Kogge_Stone_Rounder #(parameter DATA_WIDTH = 28, OUTPUT_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] IN,
    output reg [OUTPUT_WIDTH-1:0] OUT
);

wire [OUTPUT_WIDTH-1:0] out_round;
Kogge_Stone_ADDER_14 Stage_Round (IN[23:10], 14'b0, 1'b1, out_round);

always @(*) begin
    if(IN[9] == 1'b1) begin
        OUT = out_round;
    end
    else begin
        OUT = IN[23:10];
    end
end
endmodule

module Kogge_Stone_3IN #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] IN1,
    input wire [DATA_WIDTH-1:0] IN2,
    input wire [DATA_WIDTH-1:0] IN3,

    output wire [OUTPUT_WIDTH-1:0] RES
);

wire [DATA_WIDTH-1:0] out_1_12;

Kogge_Stone_ADDER_14 Stage1  (IN1, IN2, 1'b0, out_1_12);
Kogge_Stone_ADDER_14 Stage2  (out_1_12, IN3, 1'b0, RES);

endmodule


module Kogge_Stone_5IN #(parameter DATA_WIDTH = 28, OUTPUT_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] IN1,
    input wire [DATA_WIDTH-1:0] IN2,
    input wire [DATA_WIDTH-1:0] IN3,
    input wire [DATA_WIDTH-1:0] IN4,
    input wire [DATA_WIDTH-1:0] IN5,

    output reg [OUTPUT_WIDTH-1:0] RES
);

wire [DATA_WIDTH-1:0] out_1_12;
wire [DATA_WIDTH-1:0] out_1_34;
wire [DATA_WIDTH-1:0] out_2;
wire [DATA_WIDTH-1:0] out_3;

wire [OUTPUT_WIDTH-1:0] out_3_round;

Kogge_Stone_ADDER_28 Stage1_14_12(IN1, IN2, 1'b0, out_1_12);
Kogge_Stone_ADDER_28 Stage1_14_34(IN3, IN4, 1'b0, out_1_34);
Kogge_Stone_ADDER_28 Stage2      (out_1_12, out_1_34, 1'b0, out_2);
Kogge_Stone_ADDER_28 Stage3      (out_2, IN5, 1'b0, out_3);

Kogge_Stone_ADDER_14 Stage_Round (out_3[23:10], 14'b0, 1'b1, out_3_round);

always @(*) begin
    if(out_3[9] == 1'b1) begin
        RES = out_3_round;
    end
    else begin
        RES = out_3[23:10];
    end
end

endmodule


module Kogge_Stone_ADDER_14 #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] A,
    input wire [DATA_WIDTH-1:0] B,
    input wire                  Cin,

    output reg [OUTPUT_WIDTH-1:0] S
);

wire [DATA_WIDTH-1:0] G;
wire [DATA_WIDTH-1:0] P;

// Level 0.
Gen  G0(A[0], B[0], G[0]);
Prob P0(A[0], B[0], P[0]);
Gen  G1(A[1], B[1], G[1]);
Prob P1(A[1], B[1], P[1]);
Gen  G2(A[2], B[2], G[2]);
Prob P2(A[2], B[2], P[2]);
Gen  G3(A[3], B[3], G[3]);
Prob P3(A[3], B[3], P[3]);
Gen  G4(A[4], B[4], G[4]);
Prob P4(A[4], B[4], P[4]);
Gen  G5(A[5], B[5], G[5]);
Prob P5(A[5], B[5], P[5]);
Gen  G6(A[6], B[6], G[6]);
Prob P6(A[6], B[6], P[6]);
Gen  G7(A[7], B[7], G[7]);
Prob P7(A[7], B[7], P[7]);
Gen  G8(A[8], B[8], G[8]);
Prob P8(A[8], B[8], P[8]);
Gen  G9(A[9], B[9], G[9]);
Prob P9(A[9], B[9], P[9]);
Gen  G10(A[10], B[10], G[10]);
Prob P10(A[10], B[10], P[10]);
Gen  G11(A[11], B[11], G[11]);
Prob P11(A[11], B[11], P[11]);
Gen  G12(A[12], B[12], G[12]);
Prob P12(A[12], B[12], P[12]);
Gen  G13(A[13], B[13], G[13]);
Prob P13(A[13], B[13], P[13]);



//Level 1.
wire G0_1, P0_1;
wire G1_2, P1_2;
wire G2_3, P2_3;
wire G3_4, P3_4;
wire G4_5, P4_5;
wire G5_6, P5_6;
wire G6_7, P6_7;
wire G7_8, P7_8;
wire G8_9, P8_9;
wire G9_10, P9_10;
wire G10_11, P10_11;
wire G11_12, P11_12;
wire G12_13, P12_13;
Dot D0_1(G[0], P[0], G[1], P[1], G0_1, P0_1);
Dot D1_2(G[1], P[1], G[2], P[2], G1_2, P1_2);
Dot D2_3(G[2], P[2], G[3], P[3], G2_3, P2_3);
Dot D3_4(G[3], P[3], G[4], P[4], G3_4, P3_4);
Dot D4_5(G[4], P[4], G[5], P[5], G4_5, P4_5);
Dot D5_6(G[5], P[5], G[6], P[6], G5_6, P5_6);
Dot D6_7(G[6], P[6], G[7], P[7], G6_7, P6_7);
Dot D7_8(G[7], P[7], G[8], P[8], G7_8, P7_8);
Dot D8_9(G[8], P[8], G[9], P[9], G8_9, P8_9);
Dot D9_10(G[9], P[9], G[10], P[10], G9_10, P9_10);
Dot D10_11(G[10], P[10], G[11], P[11], G10_11, P10_11);
Dot D11_12(G[11], P[11], G[12], P[12], G11_12, P11_12);
Dot D12_13(G[12], P[12], G[13], P[13], G12_13, P12_13);


//Level 2.
wire G0_2, P0_2;
wire G0_3, P0_3;
wire G1_4, P1_4;
wire G2_5, P2_5;
wire G3_6, P3_6;
wire G4_7, P4_7;
wire G5_8, P5_8;
wire G6_9, P6_9;
wire G7_10, P7_10;
wire G8_11, P8_11;
wire G9_12, P9_12;
wire G10_13, P10_13;
Dot D0_2(G[0], P[0], G1_2, P1_2, G0_2, P0_2);
Dot D0_3(G0_1, P0_1, G2_3, P2_3, G0_3, P0_3);
Dot D1_4(G1_2, P1_2, G3_4, P3_4, G1_4, P1_4);
Dot D2_5(G2_3, P2_3, G4_5, P4_5, G2_5, P2_5);
Dot D3_6(G3_4, P3_4, G5_6, P5_6, G3_6, P3_6);
Dot D4_7(G4_5, P4_5, G6_7, P6_7, G4_7, P4_7);
Dot D5_8(G5_6, P5_6, G7_8, P7_8, G5_8, P5_8);
Dot D6_9(G6_7, P6_7, G8_9, P8_9, G6_9, P6_9);
Dot D7_10(G7_8, P7_8, G9_10, P9_10, G7_10, P7_10);
Dot D8_11(G8_9, P8_9, G10_11, P10_11, G8_11, P8_11);
Dot D9_12(G9_10,  P9_10, G11_12, P11_12, G9_12, P9_12);
Dot D10_13(G10_11, P10_11, G12_13, P12_13, G10_13, P10_13);


//Level 3.
wire G0_4, P0_4;
wire G0_5, P0_5;
wire G0_6, P0_6;
wire G0_7, P0_7;
wire G1_8, P1_8;
wire G2_9, P2_9;
wire G3_10, P3_10;
wire G4_11, P4_11;
wire G5_12, P5_12;
wire G6_13, P6_13;
Dot D0_4(G[0], P[0], G1_4, P1_4, G0_4, P0_4);
Dot D0_5(G0_1, P0_1, G2_5, P2_5, G0_5, P0_5);
Dot D0_6(G0_2, P0_2, G3_6, P3_6, G0_6, P0_6);
Dot D0_7(G0_3, P0_3, G4_7, P4_7, G0_7, P0_7);
Dot D1_8(G1_4, P1_4, G5_8, P5_8, G1_8, P1_8);
Dot D2_9(G2_5, P2_5, G6_9, P6_9, G2_9, P2_9);
Dot D3_10(G3_6, P3_6, G7_10, P7_10, G3_10, P3_10);
Dot D4_11(G4_7, P4_7, G8_11, P8_11, G4_11, P4_11);
Dot D5_12(G5_8, P5_8, G9_12, P9_12, G5_12, P5_12);
Dot D6_13(G6_9, P6_9, G10_13, P10_13, G6_13, P6_13);


//Level 4.
wire G0_8, P0_8;
wire G0_9, P0_9;
wire G0_10, P0_10;
wire G0_11, P0_11;
wire G0_12, P0_12;
wire G0_13, P0_13;
Dot D0_8(G[0], P[0], G1_8, P1_8, G0_8, P0_8);
Dot D0_9(G0_1, P0_1, G2_9, P2_9, G0_9, P0_9);
Dot D0_10(G0_2, P0_2, G3_10, P3_10, G0_10, P0_10);
Dot D9_11(G0_3, P0_3, G4_11, P4_11, G0_11, P0_11);
Dot D0_12(G0_4, P0_4, G5_12, P5_12, G0_12, P0_12);
Dot D0_13(G0_5, P0_5, G6_13, P6_13, G0_13, P0_13);


reg C0;
reg C1;
reg C2;
reg C3;
reg C4;
reg C5;
reg C6;
reg C7;
reg C8;
reg C9;
reg C10;
reg C11;
reg C12;
//reg C13;


always @(*) begin
    C0 = G[0] | (P[0] & Cin);
    C1 = G0_1 | (P0_1 & Cin);
    C2 = G0_2 | (P0_2 & Cin);
    C3 = G0_3 | (P0_3 & Cin);
    C4 = G0_4 | (P0_4 & Cin);
    C5 = G0_5 | (P0_5 & Cin);
    C6 = G0_6 | (P0_6 & Cin);
    C7 = G0_7 | (P0_7 & Cin);
    C8 = G0_8 | (P0_8 & Cin);
    C9 = G0_9 | (P0_9 & Cin);
    C10 = G0_10 | (P0_10 & Cin);
    C11 = G0_11 | (P0_11 & Cin);
    C12 = G0_12 | (P0_12 & Cin);
    //C13 = G0_13 | (P0_13 & Cin);
end


always @(*) begin
    S[0] = P[0] ^ Cin;
    S[1] = P[1] ^ C0;
    S[2] = P[2] ^ C1;
    S[3] = P[3] ^ C2;
    S[4] = P[4] ^ C3;
    S[5] = P[5] ^ C4;
    S[6] = P[6] ^ C5;
    S[7] = P[7] ^ C6;
    S[8] = P[8] ^ C7;
    S[9] = P[9] ^ C8;
    S[10] = P[10] ^ C9;
    S[11] = P[11] ^ C10;
    S[12] = P[12] ^ C11;
    S[13] = P[13] ^ C12;
    //S[14] = C12 ^ C13;
end

endmodule




module Kogge_Stone_ADDER_28 #(parameter DATA_WIDTH = 28, OUTPUT_WIDTH = 28) (
    input wire [DATA_WIDTH-1:0] A,
    input wire [DATA_WIDTH-1:0] B,
    input wire                  Cin,

    output reg [OUTPUT_WIDTH-1:0] S
);

wire [DATA_WIDTH-1:0] G;
wire [DATA_WIDTH-1:0] P;

// Level 0.
Gen  G0(A[0], B[0], G[0]);
Prob P0(A[0], B[0], P[0]);
Gen  G1(A[1], B[1], G[1]);
Prob P1(A[1], B[1], P[1]);
Gen  G2(A[2], B[2], G[2]);
Prob P2(A[2], B[2], P[2]);
Gen  G3(A[3], B[3], G[3]);
Prob P3(A[3], B[3], P[3]);
Gen  G4(A[4], B[4], G[4]);
Prob P4(A[4], B[4], P[4]);
Gen  G5(A[5], B[5], G[5]);
Prob P5(A[5], B[5], P[5]);
Gen  G6(A[6], B[6], G[6]);
Prob P6(A[6], B[6], P[6]);
Gen  G7(A[7], B[7], G[7]);
Prob P7(A[7], B[7], P[7]);
Gen  G8(A[8], B[8], G[8]);
Prob P8(A[8], B[8], P[8]);
Gen  G9(A[9], B[9], G[9]);
Prob P9(A[9], B[9], P[9]);
Gen  G10(A[10], B[10], G[10]);
Prob P10(A[10], B[10], P[10]);
Gen  G11(A[11], B[11], G[11]);
Prob P11(A[11], B[11], P[11]);
Gen  G12(A[12], B[12], G[12]);
Prob P12(A[12], B[12], P[12]);
Gen  G13(A[13], B[13], G[13]);
Prob P13(A[13], B[13], P[13]);
Gen  G14(A[14], B[14], G[14]);
Prob P14(A[14], B[14], P[14]);
Gen  G15(A[15], B[15], G[15]);
Prob P15(A[15], B[15], P[15]);
Gen  G16(A[16], B[16], G[16]);
Prob P16(A[16], B[16], P[16]);
Gen  G17(A[17], B[17], G[17]);
Prob P17(A[17], B[17], P[17]);
Gen  G18(A[18], B[18], G[18]);
Prob P18(A[18], B[18], P[18]);
Gen  G19(A[19], B[19], G[19]);
Prob P19(A[19], B[19], P[19]);
Gen  G20(A[20], B[20], G[20]);
Prob P20(A[20], B[20], P[20]);
Gen  G21(A[21], B[21], G[21]);
Prob P21(A[21], B[21], P[21]);
Gen  G22(A[22], B[22], G[22]);
Prob P22(A[22], B[22], P[22]);
Gen  G23(A[23], B[23], G[23]);
Prob P23(A[23], B[23], P[23]);
Gen  G24(A[24], B[24], G[24]);
Prob P24(A[24], B[24], P[24]);
Gen  G25(A[25], B[25], G[25]);
Prob P25(A[25], B[25], P[25]);
Gen  G26(A[26], B[26], G[26]);
Prob P26(A[26], B[26], P[26]);
Gen  G27(A[27], B[27], G[27]);
Prob P27(A[27], B[27], P[27]);


//Level 1.
wire G0_1, P0_1;
wire G1_2, P1_2;
wire G2_3, P2_3;
wire G3_4, P3_4;
wire G4_5, P4_5;
wire G5_6, P5_6;
wire G6_7, P6_7;
wire G7_8, P7_8;
wire G8_9, P8_9;
wire G9_10, P9_10;
wire G10_11, P10_11;
wire G11_12, P11_12;
wire G12_13, P12_13;
wire G13_14, P13_14;
wire G14_15, P14_15;
wire G15_16, P15_16;
wire G16_17, P16_17;
wire G17_18, P17_18;
wire G18_19, P18_19;
wire G19_20, P19_20;
wire G20_21, P20_21;
wire G21_22, P21_22;
wire G22_23, P22_23;
wire G23_24, P23_24;
wire G24_25, P24_25;
wire G25_26, P25_26;
wire G26_27, P26_27;
Dot D0_1(G[0], P[0], G[1], P[1], G0_1, P0_1);
Dot D1_2(G[1], P[1], G[2], P[2], G1_2, P1_2);
Dot D2_3(G[2], P[2], G[3], P[3], G2_3, P2_3);
Dot D3_4(G[3], P[3], G[4], P[4], G3_4, P3_4);
Dot D4_5(G[4], P[4], G[5], P[5], G4_5, P4_5);
Dot D5_6(G[5], P[5], G[6], P[6], G5_6, P5_6);
Dot D6_7(G[6], P[6], G[7], P[7], G6_7, P6_7);
Dot D7_8(G[7], P[7], G[8], P[8], G7_8, P7_8);
Dot D8_9(G[8], P[8], G[9], P[9], G8_9, P8_9);
Dot D9_10(G[9], P[9], G[10], P[10], G9_10, P9_10);
Dot D10_11(G[10], P[10], G[11], P[11], G10_11, P10_11);
Dot D11_12(G[11], P[11], G[12], P[12], G11_12, P11_12);
Dot D12_13(G[12], P[12], G[13], P[13], G12_13, P12_13);
Dot D13_14(G[13], P[13], G[14], P[14], G13_14, P13_14);
Dot D14_15(G[14], P[14], G[15], P[15], G14_15, P14_15);
Dot D15_16(G[15], P[15], G[16], P[16], G15_16, P15_16);
Dot D16_17(G[16], P[16], G[17], P[17], G16_17, P16_17);
Dot D17_18(G[17], P[17], G[18], P[18], G17_18, P17_18);
Dot D18_19(G[18], P[18], G[19], P[19], G18_19, P18_19);
Dot D19_20(G[19], P[19], G[20], P[20], G19_20, P19_20);
Dot D20_21(G[20], P[20], G[21], P[21], G20_21, P20_21);
Dot D21_22(G[21], P[21], G[22], P[22], G21_22, P21_22);
Dot D22_23(G[22], P[22], G[23], P[23], G22_23, P22_23);
Dot D23_24(G[23], P[23], G[24], P[24], G23_24, P23_24);
Dot D24_25(G[24], P[24], G[25], P[25], G24_25, P24_25);
Dot D25_26(G[25], P[25], G[26], P[26], G25_26, P25_26);
Dot D26_27(G[26], P[26], G[27], P[27], G26_27, P26_27);



//Level 2.
wire G0_2, P0_2;
wire G0_3, P0_3;
wire G1_4, P1_4;
wire G2_5, P2_5;
wire G3_6, P3_6;
wire G4_7, P4_7;
wire G5_8, P5_8;
wire G6_9, P6_9;
wire G7_10, P7_10;
wire G8_11, P8_11;
wire G9_12, P9_12;
wire G10_13, P10_13;
wire G11_14, P11_14;
wire G12_15, P12_15;
wire G13_16, P13_16;
wire G14_17, P14_17;
wire G15_18, P15_18;
wire G16_19, P16_19;
wire G17_20, P17_20;
wire G18_21, P18_21;
wire G19_22, P19_22;
wire G20_23, P20_23;
wire G21_24, P21_24;
wire G22_25, P22_25;
wire G23_26, P23_26;
wire G24_27, P24_27;
Dot D0_2(G[0], P[0], G1_2, P1_2, G0_2, P0_2);
Dot D0_3(G0_1, P0_1, G2_3, P2_3, G0_3, P0_3);
Dot D1_4(G1_2, P1_2, G3_4, P3_4, G1_4, P1_4);
Dot D2_5(G2_3, P2_3, G4_5, P4_5, G2_5, P2_5);
Dot D3_6(G3_4, P3_4, G5_6, P5_6, G3_6, P3_6);
Dot D4_7(G4_5, P4_5, G6_7, P6_7, G4_7, P4_7);
Dot D5_8(G5_6, P5_6, G7_8, P7_8, G5_8, P5_8);
Dot D6_9(G6_7, P6_7, G8_9, P8_9, G6_9, P6_9);
Dot D7_10(G7_8, P7_8, G9_10, P9_10, G7_10, P7_10);
Dot D8_11(G8_9, P8_9, G10_11, P10_11, G8_11, P8_11);
Dot D9_12(G9_10,  P9_10, G11_12, P11_12, G9_12, P9_12);
Dot D10_13(G10_11, P10_11, G12_13, P12_13, G10_13, P10_13);
Dot D11_14(G11_12, P11_12, G13_14, P13_14, G11_14, P11_14);
Dot D12_15(G12_13, P12_13, G14_15, P14_15, G12_15, P12_15);
Dot D13_16(G13_14, P13_14, G15_16, P15_16, G13_16, P13_16);
Dot D14_17(G14_15, P14_15, G16_17, P16_17, G14_17, P14_17);
Dot D15_18(G15_16, P15_16, G17_18, P17_18, G15_18, P15_18);
Dot D16_19(G16_17, P16_17, G18_19, P18_19, G16_19, P16_19);
Dot D17_20(G17_18, P17_18, G19_20, P19_20, G17_20, P17_20);
Dot D18_21(G18_19, P18_19, G20_21, P20_21, G18_21, P18_21);
Dot D19_22(G19_20, P19_20, G21_22, P21_22, G19_22, P19_22);
Dot D20_23(G20_21, P20_21, G22_23, P22_23, G20_23, P20_23);
Dot D21_24(G21_22, P21_22, G23_24, P23_24, G21_24, P21_24);
Dot D22_25(G22_23, P22_23, G24_25, P24_25, G22_25, P22_25);
Dot D23_26(G23_24, P23_24, G25_26, P25_26, G23_26, P23_26);
Dot D24_27(G24_25, P24_25, G26_27, P26_27, G24_27, P24_27);


//Level 3.
wire G0_4, P0_4;
wire G0_5, P0_5;
wire G0_6, P0_6;
wire G0_7, P0_7;
wire G1_8, P1_8;
wire G2_9, P2_9;
wire G3_10, P3_10;
wire G4_11, P4_11;
wire G5_12, P5_12;
wire G6_13, P6_13;
wire G7_14, P7_14;
wire G8_15, P8_15;
wire G9_16, P9_16;
wire G10_17, P10_17;
wire G11_18, P11_18;
wire G13_19, P13_19;
wire G14_20, P14_20;
wire G15_21, P15_21;
wire G16_22, P16_22;
wire G17_23, P17_23;
wire G18_24, P18_24;
wire G19_25, P19_25;
wire G20_26, P20_26;
wire G21_27, P21_27;
Dot D0_4(G[0], P[0], G1_4, P1_4, G0_4, P0_4);
Dot D0_5(G0_1, P0_1, G2_5, P2_5, G0_5, P0_5);
Dot D0_6(G0_2, P0_2, G3_6, P3_6, G0_6, P0_6);
Dot D0_7(G0_3, P0_3, G4_7, P4_7, G0_7, P0_7);
Dot D1_8(G1_4, P1_4, G5_8, P5_8, G1_8, P1_8);
Dot D2_9(G2_5, P2_5, G6_9, P6_9, G2_9, P2_9);
Dot D3_10(G3_6, P3_6, G7_10, P7_10, G3_10, P3_10);
Dot D4_11(G4_7, P4_7, G8_11, P8_11, G4_11, P4_11);
Dot D5_12(G5_8, P5_8, G9_12, P9_12, G5_12, P5_12);
Dot D6_13(G6_9, P6_9, G10_13, P10_13, G6_13, P6_13);
Dot D7_14(G7_10, P7_10, G11_14, P11_14, G7_14, P7_14);
Dot D8_15(G8_11, P8_11, G12_15, P12_15, G8_15, P8_15);
Dot D9_16(G9_12, P9_12, G13_16, P13_16, G9_16, P9_16);
Dot D10_17(G10_13, P10_13, G14_17, P14_17, G10_17, P10_17);
Dot D11_18(G11_14, P11_14, G15_18, P15_18, G11_18, P11_18);
Dot D12_19(G12_15, P12_15, G16_19, P16_19, G12_19, P12_19);
Dot D13_20(G13_16, P13_16, G17_20, P17_20, G13_20, P13_20);
Dot D14_21(G14_17, P14_17, G18_21, P18_21, G14_21, P14_21);
Dot D15_22(G15_18, P15_18, G19_22, P19_22, G15_22, P15_22);
Dot D16_23(G16_19, P16_19, G20_23, P20_23, G16_23, P16_23);
Dot D17_24(G17_20, P17_20, G21_24, P21_24, G17_24, P17_24);
Dot D18_25(G18_21, P18_21, G22_25, P22_25, G18_25, P18_25);
Dot D19_26(G19_22, P19_22, G23_26, P23_26, G19_26, P19_26);
Dot D20_27(G20_23, P20_23, G24_27, P24_27, G20_27, P20_27);


//Level 4.
wire G0_8, P0_8;
wire G0_9, P0_9;
wire G0_10, P0_10;
wire G0_11, P0_11;
wire G0_12, P0_12;
wire G0_13, P0_13;
wire G0_14, P0_14;
wire G0_15, P0_15;
wire G1_16, P1_16;
wire G2_17, P2_17;
wire G3_18, P3_18;
wire G4_19, P4_19;
wire G5_20, P5_20;
wire G6_21, P6_21;
wire G7_22, P7_22;
wire G8_23, P8_23;
wire G9_24, P9_24;
wire G10_25, P10_25;
wire G11_26, P11_26;
wire G12_27, P12_27;
Dot D0_8(G[0], P[0], G1_8, P1_8, G0_8, P0_8);
Dot D0_9(G0_1, P0_1, G2_9, P2_9, G0_9, P0_9);
Dot D0_10(G0_2, P0_2, G3_10, P3_10, G0_10, P0_10);
Dot D0_11(G0_3, P0_3, G4_11, P4_11, G0_11, P0_11);
Dot D0_12(G0_4, P0_4, G5_12, P5_12, G0_12, P0_12);
Dot D0_13(G0_5, P0_5, G6_13, P6_13, G0_13, P0_13);
Dot D0_14(G0_6, P0_6, G7_14, P7_14, G0_14, P0_14);
Dot D0_15(G0_7, P0_7, G8_15, P8_15, G0_15, P0_15);
Dot D1_16(G1_8, P1_8, G9_16, P9_16, G1_16, P1_16);
Dot D2_17(G2_9, P2_9, G10_17, P10_17, G2_17, P2_17);
Dot D3_18(G3_10, P3_10, G11_18, P11_18, G3_18, P3_18);
Dot D4_19(G4_11, P4_11, G12_19, P12_19, G4_19, P4_19);
Dot D5_20(G5_12, P5_12, G13_20, P13_20, G5_20, P5_20);
Dot D6_21(G6_13, P6_13, G14_21, P14_21, G6_21, P6_21);
Dot D7_22(G7_14, P7_14, G15_22, P15_22, G7_22, P7_22);
Dot D8_23(G8_15, P8_15, G16_23, P16_23, G8_23, P8_23);
Dot D9_24(G9_16, P9_16, G17_24, P17_24, G9_24, P9_24);
Dot D10_25(G10_17, P10_17, G18_25, P18_25, G10_25, P10_25);
Dot D11_26(G11_18, P11_18, G19_26, P19_26, G11_26, P11_26);
Dot D12_27(G12_19, P12_19, G20_27, P20_27, G12_27, P12_27);


//Level 5.
wire G0_16, P0_16;
wire G0_17, P0_17;
wire G0_18, P0_18;
wire G0_19, P0_19;
wire G0_20, P0_20;
wire G0_21, P0_21;
wire G0_22, P0_22;
wire G0_23, P0_23;
wire G0_24, P0_24;
wire G0_25, P0_25;
wire G0_26, P0_26;
wire G0_27, P0_27;
Dot D0_16(G[0], P[0], G1_16, P1_16, G0_16, P0_16);
Dot D0_17(G0_1, P0_1, G2_17, P2_17, G0_17, P0_17);
Dot D0_18(G0_2, P0_2, G3_18, P3_18, G0_18, P0_18);
Dot D0_19(G0_3, P0_3, G4_19, P4_19, G0_19, P0_19);
Dot D0_20(G0_4, P0_4, G5_20, P5_20, G0_20, P0_20);
Dot D0_21(G0_5, P0_5, G6_21, P6_21, G0_21, P0_21);
Dot D0_22(G0_6, P0_6, G7_22, P7_22, G0_22, P0_22);
Dot D0_23(G0_7, P0_7, G8_23, P8_23, G0_23, P0_23);
Dot D0_24(G0_8, P0_8, G9_24, P9_24, G0_24, P0_24);
Dot D0_25(G0_9, P0_9, G10_25, P10_25, G0_25, P0_25);
Dot D0_26(G0_10, P0_10, G11_26, P11_26, G0_26, P0_26);
Dot D0_27(G0_11, P0_11, G12_27, P12_27, G0_27, P0_27);

reg C0;
reg C1;
reg C2;
reg C3;
reg C4;
reg C5;
reg C6;
reg C7;
reg C8;
reg C9;
reg C10;
reg C11;
reg C12;
reg C13;
reg C14;
reg C15;
reg C16;
reg C17;
reg C18;
reg C19;
reg C20;
reg C21;
reg C22;
reg C23;
reg C24;
reg C25;
reg C26;
reg C27;

always @(*) begin
    C0 = G[0] | (P[0] & Cin);
    C1 = G0_1 | (P0_1 & Cin);
    C2 = G0_2 | (P0_2 & Cin);
    C3 = G0_3 | (P0_3 & Cin);
    C4 = G0_4 | (P0_4 & Cin);
    C5 = G0_5 | (P0_5 & Cin);
    C6 = G0_6 | (P0_6 & Cin);
    C7 = G0_7 | (P0_7 & Cin);
    C8 = G0_8 | (P0_8 & Cin);
    C9 = G0_9 | (P0_9 & Cin);
    C10 = G0_10 | (P0_10 & Cin);
    C11 = G0_11 | (P0_11 & Cin);
    C12 = G0_12 | (P0_12 & Cin);
    C13 = G0_13 | (P0_13 & Cin);
    C14 = G0_14 | (P0_14 & Cin);
    C15 = G0_15 | (P0_15 & Cin);
    C16 = G0_16 | (P0_16 & Cin);
    C17 = G0_17 | (P0_17 & Cin);
    C18 = G0_18 | (P0_18 & Cin);
    C19 = G0_19 | (P0_19 & Cin);
    C20 = G0_20 | (P0_20 & Cin);
    C21 = G0_21 | (P0_21 & Cin);
    C22 = G0_22 | (P0_22 & Cin);
    C23 = G0_23 | (P0_23 & Cin);
    C24 = G0_24 | (P0_24 & Cin);
    C25 = G0_25 | (P0_25 & Cin);
    C26 = G0_26 | (P0_26 & Cin);
    C27 = G0_27 | (P0_27 & Cin);
end


always @(*) begin
    S[0] = P[0] ^ Cin;
    S[1] = P[1] ^ C0;
    S[2] = P[2] ^ C1;
    S[3] = P[3] ^ C2;
    S[4] = P[4] ^ C3;
    S[5] = P[5] ^ C4;
    S[6] = P[6] ^ C5;
    S[7] = P[7] ^ C6;
    S[8] = P[8] ^ C7;
    S[9] = P[9] ^ C8;
    S[10] = P[10] ^ C9;
    S[11] = P[11] ^ C10;
    S[12] = P[12] ^ C11;
    S[13] = P[13] ^ C12;
    S[14] = P[14] ^ C13;
    S[15] = P[15] ^ C14;
    S[16] = P[16] ^ C15;
    S[17] = P[17] ^ C16;
    S[18] = P[18] ^ C17;
    S[19] = P[19] ^ C18;
    S[20] = P[20] ^ C19;
    S[21] = P[21] ^ C20;
    S[22] = P[22] ^ C21;
    S[23] = P[23] ^ C22;
    S[24] = P[24] ^ C23;
    S[25] = P[25] ^ C24;
    S[26] = P[26] ^ C25;
    S[27] = P[27] ^ C26;
end

endmodule




// Generate Block.
module Gen (
    input wire A,
    input wire B,

    output reg G
);

always @(*) begin
    G = A & B;
end

endmodule

// Probagate Block.
module Prob (
    input wire A,
    input wire B,

    output reg P
);

always @(*) begin
    P = A ^ B;
end

endmodule

// Dot Operator.
module Dot (
    input wire G1,
    input wire P1,
    input wire G2,
    input wire P2,

    output reg Go,
    output reg Po
);

always @(*) begin
    Po = P1 & P2;
    Go = G2 | (P2 & G1);    
end
    
endmodule

