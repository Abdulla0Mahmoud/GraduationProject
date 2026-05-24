
module Kernel_1_MULT #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] Input_Sample,

    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4,
    output reg [OUTPUT_WIDTH-1:0] Output_5,
    output reg [OUTPUT_WIDTH-1:0] Output_6,
    output reg [OUTPUT_WIDTH-1:0] Output_7,
    output reg [OUTPUT_WIDTH-1:0] Output_8,
    output reg [OUTPUT_WIDTH-1:0] Output_9,
    output reg [OUTPUT_WIDTH-1:0] Output_10,
    output reg [OUTPUT_WIDTH-1:0] Output_11,
    output reg [OUTPUT_WIDTH-1:0] Output_12,
    output reg [OUTPUT_WIDTH-1:0] Output_13,
    output reg [OUTPUT_WIDTH-1:0] Output_14,
    output reg [OUTPUT_WIDTH-1:0] Output_15,
    output reg [OUTPUT_WIDTH-1:0] Output_16,
    output reg [OUTPUT_WIDTH-1:0] Output_17,
    output reg [OUTPUT_WIDTH-1:0] Output_18,
    output reg [OUTPUT_WIDTH-1:0] Output_19,
    output reg [OUTPUT_WIDTH-1:0] Output_20
);

reg [DATA_WIDTH-1:0] kernel1_1;
reg [DATA_WIDTH-1:0] kernel1_2;
reg [DATA_WIDTH-1:0] kernel1_3;
reg [DATA_WIDTH-1:0] kernel1_4;
reg [DATA_WIDTH-1:0] kernel1_5;
reg [DATA_WIDTH-1:0] kernel1_6;
reg [DATA_WIDTH-1:0] kernel1_7;
reg [DATA_WIDTH-1:0] kernel1_8;
reg [DATA_WIDTH-1:0] kernel1_9;
reg [DATA_WIDTH-1:0] kernel1_10;
reg [DATA_WIDTH-1:0] kernel1_11;
reg [DATA_WIDTH-1:0] kernel1_12;
reg [DATA_WIDTH-1:0] kernel1_13;
reg [DATA_WIDTH-1:0] kernel1_14;
reg [DATA_WIDTH-1:0] kernel1_15;
reg [DATA_WIDTH-1:0] kernel1_16;
reg [DATA_WIDTH-1:0] kernel1_17;
reg [DATA_WIDTH-1:0] kernel1_18;
reg [DATA_WIDTH-1:0] kernel1_19;
reg [DATA_WIDTH-1:0] kernel1_20;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        kernel1_1  <= 14'b00000011111100;
        kernel1_2  <= 14'b11111101101100;   
        kernel1_3  <= 14'b00000001110000;   
        kernel1_4  <= 14'b11111001101000;   
        kernel1_5  <= 14'b11110111110110;  
        kernel1_6  <= 14'b11111110001011;
        kernel1_7  <= 14'b00000000010111;   
        kernel1_8  <= 14'b11111111011101;   
        kernel1_9  <= 14'b11111010101000;   
        kernel1_10 <= 14'b00000001001110;   
        kernel1_11 <= 14'b00000010101100;   
        kernel1_12 <= 14'b11111101011011;   
        kernel1_13 <= 14'b11111110110111;   
        kernel1_14 <= 14'b11111001111110;   
        kernel1_15 <= 14'b11111011000111;   
        kernel1_16 <= 14'b11111100001011;   
        kernel1_17 <= 14'b00000000001101;   
        kernel1_18 <= 14'b00000000110000;   
        kernel1_19 <= 14'b00000011011000;   
        kernel1_20 <= 14'b00000100100100;     
    end
    else begin
        kernel1_1  <= 14'b00000011111100;
        kernel1_2  <= 14'b11111101101100;   
        kernel1_3  <= 14'b00000001110000;   
        kernel1_4  <= 14'b11111001101000;   
        kernel1_5  <= 14'b11110111110110;  
        kernel1_6  <= 14'b11111110001011;
        kernel1_7  <= 14'b00000000010111;   
        kernel1_8  <= 14'b11111111011101;   
        kernel1_9  <= 14'b11111010101000;   
        kernel1_10 <= 14'b00000001001110;   
        kernel1_11 <= 14'b00000010101100;   
        kernel1_12 <= 14'b11111101011011;   
        kernel1_13 <= 14'b11111110110111;   
        kernel1_14 <= 14'b11111001111110;   
        kernel1_15 <= 14'b11111011000111;   
        kernel1_16 <= 14'b11111100001011;   
        kernel1_17 <= 14'b00000000001101;   
        kernel1_18 <= 14'b00000000110000;   
        kernel1_19 <= 14'b00000011011000;   
        kernel1_20 <= 14'b00000100100100;
    end
end

localparam OUTPUT_WIDTH_NEW = 28;

wire [OUTPUT_WIDTH_NEW-1:0] out_reg1;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19;
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20;

WallaceTreeMul MULT1(kernel1_1, Input_Sample, out_reg1);
WallaceTreeMul MULT2(kernel1_2, Input_Sample, out_reg2);
WallaceTreeMul MULT3(kernel1_3, Input_Sample, out_reg3);
WallaceTreeMul MULT4(kernel1_4, Input_Sample, out_reg4);
WallaceTreeMul MULT5(kernel1_5, Input_Sample, out_reg5);
WallaceTreeMul MULT6(kernel1_6, Input_Sample, out_reg6);
WallaceTreeMul MULT7(kernel1_7, Input_Sample, out_reg7);
WallaceTreeMul MULT8(kernel1_8, Input_Sample, out_reg8);
WallaceTreeMul MULT9(kernel1_9, Input_Sample, out_reg9);
WallaceTreeMul MULT10(kernel1_10, Input_Sample, out_reg10);
WallaceTreeMul MULT11(kernel1_11, Input_Sample, out_reg11);
WallaceTreeMul MULT12(kernel1_12, Input_Sample, out_reg12);
WallaceTreeMul MULT13(kernel1_13, Input_Sample, out_reg13);
WallaceTreeMul MULT14(kernel1_14, Input_Sample, out_reg14);
WallaceTreeMul MULT15(kernel1_15, Input_Sample, out_reg15);
WallaceTreeMul MULT16(kernel1_16, Input_Sample, out_reg16);
WallaceTreeMul MULT17(kernel1_17, Input_Sample, out_reg17);
WallaceTreeMul MULT18(kernel1_18, Input_Sample, out_reg18);
WallaceTreeMul MULT19(kernel1_19, Input_Sample, out_reg19);
WallaceTreeMul MULT20(kernel1_20, Input_Sample, out_reg20);


wire [OUTPUT_WIDTH-1:0] out_round_reg1;
wire [OUTPUT_WIDTH-1:0] out_round_reg2;
wire [OUTPUT_WIDTH-1:0] out_round_reg3;
wire [OUTPUT_WIDTH-1:0] out_round_reg4;
wire [OUTPUT_WIDTH-1:0] out_round_reg5;
wire [OUTPUT_WIDTH-1:0] out_round_reg6;
wire [OUTPUT_WIDTH-1:0] out_round_reg7;
wire [OUTPUT_WIDTH-1:0] out_round_reg8;
wire [OUTPUT_WIDTH-1:0] out_round_reg9;
wire [OUTPUT_WIDTH-1:0] out_round_reg10;
wire [OUTPUT_WIDTH-1:0] out_round_reg11;
wire [OUTPUT_WIDTH-1:0] out_round_reg12;
wire [OUTPUT_WIDTH-1:0] out_round_reg13;
wire [OUTPUT_WIDTH-1:0] out_round_reg14;
wire [OUTPUT_WIDTH-1:0] out_round_reg15;
wire [OUTPUT_WIDTH-1:0] out_round_reg16;
wire [OUTPUT_WIDTH-1:0] out_round_reg17;
wire [OUTPUT_WIDTH-1:0] out_round_reg18;
wire [OUTPUT_WIDTH-1:0] out_round_reg19;
wire [OUTPUT_WIDTH-1:0] out_round_reg20;


Kogge_Stone_Rounder ROND_1(out_reg1, out_round_reg1);
Kogge_Stone_Rounder ROND_2(out_reg2, out_round_reg2);
Kogge_Stone_Rounder ROND_3(out_reg3, out_round_reg3);
Kogge_Stone_Rounder ROND_4(out_reg4, out_round_reg4);
Kogge_Stone_Rounder ROND_5(out_reg5, out_round_reg5);
Kogge_Stone_Rounder ROND_6(out_reg6, out_round_reg6);
Kogge_Stone_Rounder ROND_7(out_reg7, out_round_reg7);
Kogge_Stone_Rounder ROND_8(out_reg8, out_round_reg8);
Kogge_Stone_Rounder ROND_9(out_reg9, out_round_reg9);
Kogge_Stone_Rounder ROND_10(out_reg10, out_round_reg10);
Kogge_Stone_Rounder ROND_11(out_reg11, out_round_reg11);
Kogge_Stone_Rounder ROND_12(out_reg12, out_round_reg12);
Kogge_Stone_Rounder ROND_13(out_reg13, out_round_reg13);
Kogge_Stone_Rounder ROND_14(out_reg14, out_round_reg14);
Kogge_Stone_Rounder ROND_15(out_reg15, out_round_reg15);
Kogge_Stone_Rounder ROND_16(out_reg16, out_round_reg16);
Kogge_Stone_Rounder ROND_17(out_reg17, out_round_reg17);
Kogge_Stone_Rounder ROND_18(out_reg18, out_round_reg18);
Kogge_Stone_Rounder ROND_19(out_reg19, out_round_reg19);
Kogge_Stone_Rounder ROND_20(out_reg20, out_round_reg20);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 'b0;
        Output_2 <= 'b0;
        Output_3 <= 'b0;
        Output_4 <= 'b0;
        Output_5 <= 'b0;
        Output_6 <= 'b0;
        Output_7 <= 'b0;
        Output_8 <= 'b0;
        Output_9 <= 'b0;
        Output_10 <= 'b0;
        Output_11 <= 'b0;
        Output_12 <= 'b0;
        Output_13 <= 'b0;
        Output_14 <= 'b0;
        Output_15 <= 'b0;
        Output_16 <= 'b0;
        Output_17 <= 'b0;
        Output_18 <= 'b0;
        Output_19 <= 'b0;
        Output_20 <= 'b0;
    end
    else begin
        Output_1 <= out_round_reg1;
        Output_2 <= out_round_reg2;
        Output_3 <= out_round_reg3;
        Output_4 <= out_round_reg4;
        Output_5 <= out_round_reg5;
        Output_6 <= out_round_reg6;
        Output_7 <= out_round_reg7;
        Output_8 <= out_round_reg8;
        Output_9 <= out_round_reg9;
        Output_10 <= out_round_reg10;
        Output_11 <= out_round_reg11;
        Output_12 <= out_round_reg12;
        Output_13 <= out_round_reg13;
        Output_14 <= out_round_reg14;
        Output_15 <= out_round_reg15;
        Output_16 <= out_round_reg16;
        Output_17 <= out_round_reg17;
        Output_18 <= out_round_reg18;
        Output_19 <= out_round_reg19;
        Output_20 <= out_round_reg20;
    end
end

endmodule



module Recurrent_1_MULT #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4,
    output reg [OUTPUT_WIDTH-1:0] Output_5,
    output reg [OUTPUT_WIDTH-1:0] Output_6,
    output reg [OUTPUT_WIDTH-1:0] Output_7,
    output reg [OUTPUT_WIDTH-1:0] Output_8,
    output reg [OUTPUT_WIDTH-1:0] Output_9,
    output reg [OUTPUT_WIDTH-1:0] Output_10,
    output reg [OUTPUT_WIDTH-1:0] Output_11,
    output reg [OUTPUT_WIDTH-1:0] Output_12,
    output reg [OUTPUT_WIDTH-1:0] Output_13,
    output reg [OUTPUT_WIDTH-1:0] Output_14,
    output reg [OUTPUT_WIDTH-1:0] Output_15,
    output reg [OUTPUT_WIDTH-1:0] Output_16,
    output reg [OUTPUT_WIDTH-1:0] Output_17,
    output reg [OUTPUT_WIDTH-1:0] Output_18,
    output reg [OUTPUT_WIDTH-1:0] Output_19,
    output reg [OUTPUT_WIDTH-1:0] Output_20
);

reg [DATA_WIDTH-1:0] recurrent1_1_1;
reg [DATA_WIDTH-1:0] recurrent1_1_2;   
reg [DATA_WIDTH-1:0] recurrent1_1_3;   
reg [DATA_WIDTH-1:0] recurrent1_1_4;   
reg [DATA_WIDTH-1:0] recurrent1_1_5;   
reg [DATA_WIDTH-1:0] recurrent1_2_1;  
reg [DATA_WIDTH-1:0] recurrent1_2_2;   
reg [DATA_WIDTH-1:0] recurrent1_2_3;   
reg [DATA_WIDTH-1:0] recurrent1_2_4;   
reg [DATA_WIDTH-1:0] recurrent1_2_5;   
reg [DATA_WIDTH-1:0] recurrent1_3_1;   
reg [DATA_WIDTH-1:0] recurrent1_3_2;   
reg [DATA_WIDTH-1:0] recurrent1_3_3;   
reg [DATA_WIDTH-1:0] recurrent1_3_4;   
reg [DATA_WIDTH-1:0] recurrent1_3_5;   
reg [DATA_WIDTH-1:0] recurrent1_4_1;   
reg [DATA_WIDTH-1:0] recurrent1_4_2;   
reg [DATA_WIDTH-1:0] recurrent1_4_3;   
reg [DATA_WIDTH-1:0] recurrent1_4_4;   
reg [DATA_WIDTH-1:0] recurrent1_4_5;   
reg [DATA_WIDTH-1:0] recurrent1_5_1;   
reg [DATA_WIDTH-1:0] recurrent1_5_2;   
reg [DATA_WIDTH-1:0] recurrent1_5_3;   
reg [DATA_WIDTH-1:0] recurrent1_5_4;   
reg [DATA_WIDTH-1:0] recurrent1_5_5;   
reg [DATA_WIDTH-1:0] recurrent1_6_1;   
reg [DATA_WIDTH-1:0] recurrent1_6_2;   
reg [DATA_WIDTH-1:0] recurrent1_6_3;   
reg [DATA_WIDTH-1:0] recurrent1_6_4;   
reg [DATA_WIDTH-1:0] recurrent1_6_5;   
reg [DATA_WIDTH-1:0] recurrent1_7_1;   
reg [DATA_WIDTH-1:0] recurrent1_7_2;   
reg [DATA_WIDTH-1:0] recurrent1_7_3;   
reg [DATA_WIDTH-1:0] recurrent1_7_4;   
reg [DATA_WIDTH-1:0] recurrent1_7_5;   
reg [DATA_WIDTH-1:0] recurrent1_8_1;   
reg [DATA_WIDTH-1:0] recurrent1_8_2;   
reg [DATA_WIDTH-1:0] recurrent1_8_3;   
reg [DATA_WIDTH-1:0] recurrent1_8_4;   
reg [DATA_WIDTH-1:0] recurrent1_8_5;   
reg [DATA_WIDTH-1:0] recurrent1_9_1;   
reg [DATA_WIDTH-1:0] recurrent1_9_2;   
reg [DATA_WIDTH-1:0] recurrent1_9_3;   
reg [DATA_WIDTH-1:0] recurrent1_9_4;   
reg [DATA_WIDTH-1:0] recurrent1_9_5;   
reg [DATA_WIDTH-1:0] recurrent1_10_1;   
reg [DATA_WIDTH-1:0] recurrent1_10_2;   
reg [DATA_WIDTH-1:0] recurrent1_10_3;   
reg [DATA_WIDTH-1:0] recurrent1_10_4;   
reg [DATA_WIDTH-1:0] recurrent1_10_5;   
reg [DATA_WIDTH-1:0] recurrent1_11_1;   
reg [DATA_WIDTH-1:0] recurrent1_11_2;   
reg [DATA_WIDTH-1:0] recurrent1_11_3;   
reg [DATA_WIDTH-1:0] recurrent1_11_4;   
reg [DATA_WIDTH-1:0] recurrent1_11_5;   
reg [DATA_WIDTH-1:0] recurrent1_12_1;   
reg [DATA_WIDTH-1:0] recurrent1_12_2;   
reg [DATA_WIDTH-1:0] recurrent1_12_3;   
reg [DATA_WIDTH-1:0] recurrent1_12_4;   
reg [DATA_WIDTH-1:0] recurrent1_12_5;   
reg [DATA_WIDTH-1:0] recurrent1_13_1;   
reg [DATA_WIDTH-1:0] recurrent1_13_2;   
reg [DATA_WIDTH-1:0] recurrent1_13_3;   
reg [DATA_WIDTH-1:0] recurrent1_13_4;   
reg [DATA_WIDTH-1:0] recurrent1_13_5;   
reg [DATA_WIDTH-1:0] recurrent1_14_1;   
reg [DATA_WIDTH-1:0] recurrent1_14_2;   
reg [DATA_WIDTH-1:0] recurrent1_14_3;   
reg [DATA_WIDTH-1:0] recurrent1_14_4;   
reg [DATA_WIDTH-1:0] recurrent1_14_5;   
reg [DATA_WIDTH-1:0] recurrent1_15_1;   
reg [DATA_WIDTH-1:0] recurrent1_15_2;   
reg [DATA_WIDTH-1:0] recurrent1_15_3;   
reg [DATA_WIDTH-1:0] recurrent1_15_4;   
reg [DATA_WIDTH-1:0] recurrent1_15_5;   
reg [DATA_WIDTH-1:0] recurrent1_16_1;   
reg [DATA_WIDTH-1:0] recurrent1_16_2;   
reg [DATA_WIDTH-1:0] recurrent1_16_3;   
reg [DATA_WIDTH-1:0] recurrent1_16_4;   
reg [DATA_WIDTH-1:0] recurrent1_16_5;   
reg [DATA_WIDTH-1:0] recurrent1_17_1;   
reg [DATA_WIDTH-1:0] recurrent1_17_2;   
reg [DATA_WIDTH-1:0] recurrent1_17_3;
reg [DATA_WIDTH-1:0] recurrent1_17_4;   
reg [DATA_WIDTH-1:0] recurrent1_17_5;   
reg [DATA_WIDTH-1:0] recurrent1_18_1;  
reg [DATA_WIDTH-1:0] recurrent1_18_2;   
reg [DATA_WIDTH-1:0] recurrent1_18_3;   
reg [DATA_WIDTH-1:0] recurrent1_18_4;   
reg [DATA_WIDTH-1:0] recurrent1_18_5;   
reg [DATA_WIDTH-1:0] recurrent1_19_1;   
reg [DATA_WIDTH-1:0] recurrent1_19_2;   
reg [DATA_WIDTH-1:0] recurrent1_19_3;   
reg [DATA_WIDTH-1:0] recurrent1_19_4;   
reg [DATA_WIDTH-1:0] recurrent1_19_5;   
reg [DATA_WIDTH-1:0] recurrent1_20_1;
reg [DATA_WIDTH-1:0] recurrent1_20_2;
reg [DATA_WIDTH-1:0] recurrent1_20_3;
reg [DATA_WIDTH-1:0] recurrent1_20_4;
reg [DATA_WIDTH-1:0] recurrent1_20_5;



always @(posedge clk or negedge rst) begin
    if(!rst) begin
        recurrent1_1_1 <= 14'b11111010100111;
        recurrent1_1_2 <= 14'b00000000011100;   
        recurrent1_1_3 <= 14'b00000110111101;   
        recurrent1_1_4 <= 14'b11111111000010;   
        recurrent1_1_5 <= 14'b00000001000100;   
        recurrent1_2_1 <= 14'b00000000010111;  
        recurrent1_2_2 <= 14'b11111010000100;   
        recurrent1_2_3 <= 14'b00000011001001;   
        recurrent1_2_4 <= 14'b00001001100111;   
        recurrent1_2_5 <= 14'b00000100100011;   
        recurrent1_3_1 <= 14'b00000001100111;   
        recurrent1_3_2 <= 14'b11111100100110;   
        recurrent1_3_3 <= 14'b11111011111111;   
        recurrent1_3_4 <= 14'b00000110001100;   
        recurrent1_3_5 <= 14'b11111110011111;   
        recurrent1_4_1 <= 14'b00000000101011;   
        recurrent1_4_2 <= 14'b00001010110110;   
        recurrent1_4_3 <= 14'b11111101011111;   
        recurrent1_4_4 <= 14'b00000100010001;   
        recurrent1_4_5 <= 14'b11111111111110;   
        recurrent1_5_1 <= 14'b11111100100100;   
        recurrent1_5_2 <= 14'b00000110010001;   
        recurrent1_5_3 <= 14'b11111001110100;   
        recurrent1_5_4 <= 14'b11111001001010;   
        recurrent1_5_5 <= 14'b00000110001110;   
        recurrent1_6_1 <= 14'b11111111110001;   
        recurrent1_6_2 <= 14'b00000011101000;   
        recurrent1_6_3 <= 14'b00000010100111;   
        recurrent1_6_4 <= 14'b00000010011001;   
        recurrent1_6_5 <= 14'b00000101001101;   
        recurrent1_7_1 <= 14'b00000001111101;   
        recurrent1_7_2 <= 14'b11111011001110;   
        recurrent1_7_3 <= 14'b00000001101010;   
        recurrent1_7_4 <= 14'b00000011100111;   
        recurrent1_7_5 <= 14'b11111100011010;   
        recurrent1_8_1 <= 14'b00000001000011;   
        recurrent1_8_2 <= 14'b11111101111000;   
        recurrent1_8_3 <= 14'b11111001001010;   
        recurrent1_8_4 <= 14'b00000011100111;   
        recurrent1_8_5 <= 14'b00000001101000;   
        recurrent1_9_1 <= 14'b00000000010110;   
        recurrent1_9_2 <= 14'b00000101000010;   
        recurrent1_9_3 <= 14'b00000010000101;   
        recurrent1_9_4 <= 14'b00000110111111;   
        recurrent1_9_5 <= 14'b00000101110110;   
        recurrent1_10_1 <= 14'b00000001110101;   
        recurrent1_10_2 <= 14'b11110101001001;   
        recurrent1_10_3 <= 14'b11111111000100;   
        recurrent1_10_4 <= 14'b11111101001000;   
        recurrent1_10_5 <= 14'b00000100001101;   
        recurrent1_11_1 <= 14'b00001000100110;   
        recurrent1_11_2 <= 14'b00000110110110;   
        recurrent1_11_3 <= 14'b11111111101001;   
        recurrent1_11_4 <= 14'b11111100100101;   
        recurrent1_11_5 <= 14'b11111010001111;   
        recurrent1_12_1 <= 14'b11111111111111;   
        recurrent1_12_2 <= 14'b00000100000110;   
        recurrent1_12_3 <= 14'b11110110101110;   
        recurrent1_12_4 <= 14'b11111011011101;   
        recurrent1_12_5 <= 14'b11111000110110;   
        recurrent1_13_1 <= 14'b00001100100011;   
        recurrent1_13_2 <= 14'b11111100110010;   
        recurrent1_13_3 <= 14'b00000101111101;   
        recurrent1_13_4 <= 14'b00000100001010;   
        recurrent1_13_5 <= 14'b11111011010110;   
        recurrent1_14_1 <= 14'b00000000010100;   
        recurrent1_14_2 <= 14'b11111010101001;   
        recurrent1_14_3 <= 14'b00001000010000;   
        recurrent1_14_4 <= 14'b11111100100011;   
        recurrent1_14_5 <= 14'b00000001000100;   
        recurrent1_15_1 <= 14'b11111001100001;   
        recurrent1_15_2 <= 14'b11111110100000;   
        recurrent1_15_3 <= 14'b00000100000110;   
        recurrent1_15_4 <= 14'b00000010111011;   
        recurrent1_15_5 <= 14'b11111110011011;   
        recurrent1_16_1 <= 14'b11111101111100;   
        recurrent1_16_2 <= 14'b11111111110111;   
        recurrent1_16_3 <= 14'b00000010100100;   
        recurrent1_16_4 <= 14'b00000011110001;   
        recurrent1_16_5 <= 14'b11111011110000;   
        recurrent1_17_1 <= 14'b00000110111011;   
        recurrent1_17_2 <= 14'b00000000110010;   
        recurrent1_17_3 <= 14'b00000011011010;   
        recurrent1_17_4 <= 14'b11111111000110;   
        recurrent1_17_5 <= 14'b00000100001011;   
        recurrent1_18_1 <= 14'b00000010100110;  
        recurrent1_18_2 <= 14'b11111101001001;   
        recurrent1_18_3 <= 14'b11111000001110;   
        recurrent1_18_4 <= 14'b00001001101100;   
        recurrent1_18_5 <= 14'b00000111011000;   
        recurrent1_19_1 <= 14'b11111001000011;   
        recurrent1_19_2 <= 14'b00000000000010;   
        recurrent1_19_3 <= 14'b11111010101101;   
        recurrent1_19_4 <= 14'b00000000110011;   
        recurrent1_19_5 <= 14'b00000101101101;   
        recurrent1_20_1 <= 14'b11111010001101;
        recurrent1_20_2 <= 14'b11111101010110;
        recurrent1_20_3 <= 14'b11111111000111;
        recurrent1_20_4 <= 14'b00000011001001;
        recurrent1_20_5 <= 14'b00000100011010;
    end
    else begin
        recurrent1_1_1 <= 14'b11111010100111;
        recurrent1_1_2 <= 14'b00000000011100;   
        recurrent1_1_3 <= 14'b00000110111101;   
        recurrent1_1_4 <= 14'b11111111000010;   
        recurrent1_1_5 <= 14'b00000001000100;   
        recurrent1_2_1 <= 14'b00000000010111;  
        recurrent1_2_2 <= 14'b11111010000100;   
        recurrent1_2_3 <= 14'b00000011001001;   
        recurrent1_2_4 <= 14'b00001001100111;   
        recurrent1_2_5 <= 14'b00000100100011;   
        recurrent1_3_1 <= 14'b00000001100111;   
        recurrent1_3_2 <= 14'b11111100100110;   
        recurrent1_3_3 <= 14'b11111011111111;   
        recurrent1_3_4 <= 14'b00000110001100;   
        recurrent1_3_5 <= 14'b11111110011111;   
        recurrent1_4_1 <= 14'b00000000101011;   
        recurrent1_4_2 <= 14'b00001010110110;   
        recurrent1_4_3 <= 14'b11111101011111;   
        recurrent1_4_4 <= 14'b00000100010001;   
        recurrent1_4_5 <= 14'b11111111111110;   
        recurrent1_5_1 <= 14'b11111100100100;   
        recurrent1_5_2 <= 14'b00000110010001;   
        recurrent1_5_3 <= 14'b11111001110100;   
        recurrent1_5_4 <= 14'b11111001001010;   
        recurrent1_5_5 <= 14'b00000110001110;   
        recurrent1_6_1 <= 14'b11111111110001;   
        recurrent1_6_2 <= 14'b00000011101000;   
        recurrent1_6_3 <= 14'b00000010100111;   
        recurrent1_6_4 <= 14'b00000010011001;   
        recurrent1_6_5 <= 14'b00000101001101;   
        recurrent1_7_1 <= 14'b00000001111101;   
        recurrent1_7_2 <= 14'b11111011001110;   
        recurrent1_7_3 <= 14'b00000001101010;   
        recurrent1_7_4 <= 14'b00000011100111;   
        recurrent1_7_5 <= 14'b11111100011010;   
        recurrent1_8_1 <= 14'b00000001000011;   
        recurrent1_8_2 <= 14'b11111101111000;   
        recurrent1_8_3 <= 14'b11111001001010;   
        recurrent1_8_4 <= 14'b00000011100111;   
        recurrent1_8_5 <= 14'b00000001101000;   
        recurrent1_9_1 <= 14'b00000000010110;   
        recurrent1_9_2 <= 14'b00000101000010;   
        recurrent1_9_3 <= 14'b00000010000101;   
        recurrent1_9_4 <= 14'b00000110111111;   
        recurrent1_9_5 <= 14'b00000101110110;   
        recurrent1_10_1 <= 14'b00000001110101;   
        recurrent1_10_2 <= 14'b11110101001001;   
        recurrent1_10_3 <= 14'b11111111000100;   
        recurrent1_10_4 <= 14'b11111101001000;   
        recurrent1_10_5 <= 14'b00000100001101;   
        recurrent1_11_1 <= 14'b00001000100110;   
        recurrent1_11_2 <= 14'b00000110110110;   
        recurrent1_11_3 <= 14'b11111111101001;   
        recurrent1_11_4 <= 14'b11111100100101;   
        recurrent1_11_5 <= 14'b11111010001111;   
        recurrent1_12_1 <= 14'b11111111111111;   
        recurrent1_12_2 <= 14'b00000100000110;   
        recurrent1_12_3 <= 14'b11110110101110;   
        recurrent1_12_4 <= 14'b11111011011101;   
        recurrent1_12_5 <= 14'b11111000110110;   
        recurrent1_13_1 <= 14'b00001100100011;   
        recurrent1_13_2 <= 14'b11111100110010;   
        recurrent1_13_3 <= 14'b00000101111101;   
        recurrent1_13_4 <= 14'b00000100001010;   
        recurrent1_13_5 <= 14'b11111011010110;   
        recurrent1_14_1 <= 14'b00000000010100;   
        recurrent1_14_2 <= 14'b11111010101001;   
        recurrent1_14_3 <= 14'b00001000010000;   
        recurrent1_14_4 <= 14'b11111100100011;   
        recurrent1_14_5 <= 14'b00000001000100;   
        recurrent1_15_1 <= 14'b11111001100001;   
        recurrent1_15_2 <= 14'b11111110100000;   
        recurrent1_15_3 <= 14'b00000100000110;   
        recurrent1_15_4 <= 14'b00000010111011;   
        recurrent1_15_5 <= 14'b11111110011011;   
        recurrent1_16_1 <= 14'b11111101111100;   
        recurrent1_16_2 <= 14'b11111111110111;   
        recurrent1_16_3 <= 14'b00000010100100;   
        recurrent1_16_4 <= 14'b00000011110001;   
        recurrent1_16_5 <= 14'b11111011110000;   
        recurrent1_17_1 <= 14'b00000110111011;   
        recurrent1_17_2 <= 14'b00000000110010;   
        recurrent1_17_3 <= 14'b00000011011010;   
        recurrent1_17_4 <= 14'b11111111000110;   
        recurrent1_17_5 <= 14'b00000100001011;   
        recurrent1_18_1 <= 14'b00000010100110;  
        recurrent1_18_2 <= 14'b11111101001001;   
        recurrent1_18_3 <= 14'b11111000001110;   
        recurrent1_18_4 <= 14'b00001001101100;   
        recurrent1_18_5 <= 14'b00000111011000;   
        recurrent1_19_1 <= 14'b11111001000011;   
        recurrent1_19_2 <= 14'b00000000000010;   
        recurrent1_19_3 <= 14'b11111010101101;   
        recurrent1_19_4 <= 14'b00000000110011;   
        recurrent1_19_5 <= 14'b00000101101101;   
        recurrent1_20_1 <= 14'b11111010001101;
        recurrent1_20_2 <= 14'b11111101010110;
        recurrent1_20_3 <= 14'b11111111000111;
        recurrent1_20_4 <= 14'b00000011001001;
        recurrent1_20_5 <= 14'b00000100011010;        
    end
end

localparam OUTPUT_WIDTH_NEW = 28;

wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_5; 


WallaceTreeMul MULT11(recurrent1_1_1, h_1, out_reg1_1);
WallaceTreeMul MULT12(recurrent1_1_2, h_2, out_reg1_2);
WallaceTreeMul MULT13(recurrent1_1_3, h_3, out_reg1_3);
WallaceTreeMul MULT14(recurrent1_1_4, h_4, out_reg1_4);
WallaceTreeMul MULT15(recurrent1_1_5, h_5, out_reg1_5);
WallaceTreeMul MULT21(recurrent1_2_1, h_1, out_reg2_1);
WallaceTreeMul MULT22(recurrent1_2_2, h_2, out_reg2_2);
WallaceTreeMul MULT23(recurrent1_2_3, h_3, out_reg2_3);
WallaceTreeMul MULT24(recurrent1_2_4, h_4, out_reg2_4);
WallaceTreeMul MULT25(recurrent1_2_5, h_5, out_reg2_5);
WallaceTreeMul MULT31(recurrent1_3_1, h_1, out_reg3_1);
WallaceTreeMul MULT32(recurrent1_3_2, h_2, out_reg3_2);
WallaceTreeMul MULT33(recurrent1_3_3, h_3, out_reg3_3);
WallaceTreeMul MULT34(recurrent1_3_4, h_4, out_reg3_4);
WallaceTreeMul MULT35(recurrent1_3_5, h_5, out_reg3_5);
WallaceTreeMul MULT41(recurrent1_4_1, h_1, out_reg4_1);
WallaceTreeMul MULT42(recurrent1_4_2, h_2, out_reg4_2);
WallaceTreeMul MULT43(recurrent1_4_3, h_3, out_reg4_3);
WallaceTreeMul MULT44(recurrent1_4_4, h_4, out_reg4_4);
WallaceTreeMul MULT45(recurrent1_4_5, h_5, out_reg4_5);
WallaceTreeMul MULT51(recurrent1_5_1, h_1, out_reg5_1);
WallaceTreeMul MULT52(recurrent1_5_2, h_2, out_reg5_2);
WallaceTreeMul MULT53(recurrent1_5_3, h_3, out_reg5_3);
WallaceTreeMul MULT54(recurrent1_5_4, h_4, out_reg5_4);
WallaceTreeMul MULT55(recurrent1_5_5, h_5, out_reg5_5);
WallaceTreeMul MULT61(recurrent1_6_1, h_1, out_reg6_1);
WallaceTreeMul MULT62(recurrent1_6_2, h_2, out_reg6_2);
WallaceTreeMul MULT63(recurrent1_6_3, h_3, out_reg6_3);
WallaceTreeMul MULT64(recurrent1_6_4, h_4, out_reg6_4);
WallaceTreeMul MULT65(recurrent1_6_5, h_5, out_reg6_5);
WallaceTreeMul MULT71(recurrent1_7_1, h_1, out_reg7_1);
WallaceTreeMul MULT72(recurrent1_7_2, h_2, out_reg7_2);
WallaceTreeMul MULT73(recurrent1_7_3, h_3, out_reg7_3);
WallaceTreeMul MULT74(recurrent1_7_4, h_4, out_reg7_4);
WallaceTreeMul MULT75(recurrent1_7_5, h_5, out_reg7_5);
WallaceTreeMul MULT81(recurrent1_8_1, h_1, out_reg8_1);
WallaceTreeMul MULT82(recurrent1_8_2, h_2, out_reg8_2);
WallaceTreeMul MULT83(recurrent1_8_3, h_3, out_reg8_3);
WallaceTreeMul MULT84(recurrent1_8_4, h_4, out_reg8_4);
WallaceTreeMul MULT85(recurrent1_8_5, h_5, out_reg8_5);
WallaceTreeMul MULT91(recurrent1_9_1, h_1, out_reg9_1);
WallaceTreeMul MULT92(recurrent1_9_2, h_2, out_reg9_2);
WallaceTreeMul MULT93(recurrent1_9_3, h_3, out_reg9_3);
WallaceTreeMul MULT94(recurrent1_9_4, h_4, out_reg9_4);
WallaceTreeMul MULT95(recurrent1_9_5, h_5, out_reg9_5);
WallaceTreeMul MULT101(recurrent1_10_1, h_1, out_reg10_1);
WallaceTreeMul MULT102(recurrent1_10_2, h_2, out_reg10_2);
WallaceTreeMul MULT103(recurrent1_10_3, h_3, out_reg10_3);
WallaceTreeMul MULT104(recurrent1_10_4, h_4, out_reg10_4);
WallaceTreeMul MULT105(recurrent1_10_5, h_5, out_reg10_5);
WallaceTreeMul MULT111(recurrent1_11_1, h_1, out_reg11_1);
WallaceTreeMul MULT112(recurrent1_11_2, h_2, out_reg11_2);
WallaceTreeMul MULT113(recurrent1_11_3, h_3, out_reg11_3);
WallaceTreeMul MULT114(recurrent1_11_4, h_4, out_reg11_4);
WallaceTreeMul MULT115(recurrent1_11_5, h_5, out_reg11_5);
WallaceTreeMul MULT121(recurrent1_12_1, h_1, out_reg12_1);
WallaceTreeMul MULT122(recurrent1_12_2, h_2, out_reg12_2);
WallaceTreeMul MULT123(recurrent1_12_3, h_3, out_reg12_3);
WallaceTreeMul MULT124(recurrent1_12_4, h_4, out_reg12_4);
WallaceTreeMul MULT125(recurrent1_12_5, h_5, out_reg12_5);
WallaceTreeMul MULT131(recurrent1_13_1, h_1, out_reg13_1);
WallaceTreeMul MULT132(recurrent1_13_2, h_2, out_reg13_2);
WallaceTreeMul MULT133(recurrent1_13_3, h_3, out_reg13_3);
WallaceTreeMul MULT134(recurrent1_13_4, h_4, out_reg13_4);
WallaceTreeMul MULT135(recurrent1_13_5, h_5, out_reg13_5);
WallaceTreeMul MULT141(recurrent1_14_1, h_1, out_reg14_1);
WallaceTreeMul MULT142(recurrent1_14_2, h_2, out_reg14_2);
WallaceTreeMul MULT143(recurrent1_14_3, h_3, out_reg14_3);
WallaceTreeMul MULT144(recurrent1_14_4, h_4, out_reg14_4);
WallaceTreeMul MULT145(recurrent1_14_5, h_5, out_reg14_5);
WallaceTreeMul MULT151(recurrent1_15_1, h_1, out_reg15_1);
WallaceTreeMul MULT152(recurrent1_15_2, h_2, out_reg15_2);
WallaceTreeMul MULT153(recurrent1_15_3, h_3, out_reg15_3);
WallaceTreeMul MULT154(recurrent1_15_4, h_4, out_reg15_4);
WallaceTreeMul MULT155(recurrent1_15_5, h_5, out_reg15_5);
WallaceTreeMul MULT161(recurrent1_16_1, h_1, out_reg16_1);
WallaceTreeMul MULT162(recurrent1_16_2, h_2, out_reg16_2);
WallaceTreeMul MULT163(recurrent1_16_3, h_3, out_reg16_3);
WallaceTreeMul MULT164(recurrent1_16_4, h_4, out_reg16_4);
WallaceTreeMul MULT165(recurrent1_16_5, h_5, out_reg16_5);
WallaceTreeMul MULT171(recurrent1_17_1, h_1, out_reg17_1);
WallaceTreeMul MULT172(recurrent1_17_2, h_2, out_reg17_2);
WallaceTreeMul MULT173(recurrent1_17_3, h_3, out_reg17_3);
WallaceTreeMul MULT174(recurrent1_17_4, h_4, out_reg17_4);
WallaceTreeMul MULT175(recurrent1_17_5, h_5, out_reg17_5);
WallaceTreeMul MULT181(recurrent1_18_1, h_1, out_reg18_1);
WallaceTreeMul MULT182(recurrent1_18_2, h_2, out_reg18_2);
WallaceTreeMul MULT183(recurrent1_18_3, h_3, out_reg18_3);
WallaceTreeMul MULT184(recurrent1_18_4, h_4, out_reg18_4);
WallaceTreeMul MULT185(recurrent1_18_5, h_5, out_reg18_5);
WallaceTreeMul MULT191(recurrent1_19_1, h_1, out_reg19_1);
WallaceTreeMul MULT192(recurrent1_19_2, h_2, out_reg19_2);
WallaceTreeMul MULT193(recurrent1_19_3, h_3, out_reg19_3);
WallaceTreeMul MULT194(recurrent1_19_4, h_4, out_reg19_4);
WallaceTreeMul MULT195(recurrent1_19_5, h_5, out_reg19_5);
WallaceTreeMul MULT201(recurrent1_20_1, h_1, out_reg20_1);
WallaceTreeMul MULT202(recurrent1_20_2, h_2, out_reg20_2);
WallaceTreeMul MULT203(recurrent1_20_3, h_3, out_reg20_3);
WallaceTreeMul MULT204(recurrent1_20_4, h_4, out_reg20_4);
WallaceTreeMul MULT205(recurrent1_20_5, h_5, out_reg20_5);

wire [OUTPUT_WIDTH-1:0] Output_1_reg;
wire [OUTPUT_WIDTH-1:0] Output_2_reg;
wire [OUTPUT_WIDTH-1:0] Output_3_reg;
wire [OUTPUT_WIDTH-1:0] Output_4_reg;
wire [OUTPUT_WIDTH-1:0] Output_5_reg;
wire [OUTPUT_WIDTH-1:0] Output_6_reg;
wire [OUTPUT_WIDTH-1:0] Output_7_reg;
wire [OUTPUT_WIDTH-1:0] Output_8_reg;
wire [OUTPUT_WIDTH-1:0] Output_9_reg;
wire [OUTPUT_WIDTH-1:0] Output_10_reg;
wire [OUTPUT_WIDTH-1:0] Output_11_reg;
wire [OUTPUT_WIDTH-1:0] Output_12_reg;
wire [OUTPUT_WIDTH-1:0] Output_13_reg;
wire [OUTPUT_WIDTH-1:0] Output_14_reg;
wire [OUTPUT_WIDTH-1:0] Output_15_reg;
wire [OUTPUT_WIDTH-1:0] Output_16_reg;
wire [OUTPUT_WIDTH-1:0] Output_17_reg;
wire [OUTPUT_WIDTH-1:0] Output_18_reg;
wire [OUTPUT_WIDTH-1:0] Output_19_reg;
wire [OUTPUT_WIDTH-1:0] Output_20_reg;


Kogge_Stone_5IN ADD_1(out_reg1_1, out_reg1_2, out_reg1_3, out_reg1_4, out_reg1_5, Output_1_reg);
Kogge_Stone_5IN ADD_2(out_reg2_1, out_reg2_2, out_reg2_3, out_reg2_4, out_reg2_5, Output_2_reg);
Kogge_Stone_5IN ADD_3(out_reg3_1, out_reg3_2, out_reg3_3, out_reg3_4, out_reg3_5, Output_3_reg);
Kogge_Stone_5IN ADD_4(out_reg4_1, out_reg4_2, out_reg4_3, out_reg4_4, out_reg4_5, Output_4_reg);
Kogge_Stone_5IN ADD_5(out_reg5_1, out_reg5_2, out_reg5_3, out_reg5_4, out_reg5_5, Output_5_reg);
Kogge_Stone_5IN ADD_6(out_reg6_1, out_reg6_2, out_reg6_3, out_reg6_4, out_reg6_5, Output_6_reg);
Kogge_Stone_5IN ADD_7(out_reg7_1, out_reg7_2, out_reg7_3, out_reg7_4, out_reg7_5, Output_7_reg);
Kogge_Stone_5IN ADD_8(out_reg8_1, out_reg8_2, out_reg8_3, out_reg8_4, out_reg8_5, Output_8_reg);
Kogge_Stone_5IN ADD_9(out_reg9_1, out_reg9_2, out_reg9_3, out_reg9_4, out_reg9_5, Output_9_reg);
Kogge_Stone_5IN ADD_10(out_reg10_1, out_reg10_2, out_reg10_3, out_reg10_4, out_reg10_5, Output_10_reg);
Kogge_Stone_5IN ADD_11(out_reg11_1, out_reg11_2, out_reg11_3, out_reg11_4, out_reg11_5, Output_11_reg);
Kogge_Stone_5IN ADD_12(out_reg12_1, out_reg12_2, out_reg12_3, out_reg12_4, out_reg12_5, Output_12_reg);
Kogge_Stone_5IN ADD_13(out_reg13_1, out_reg13_2, out_reg13_3, out_reg13_4, out_reg13_5, Output_13_reg);
Kogge_Stone_5IN ADD_14(out_reg14_1, out_reg14_2, out_reg14_3, out_reg14_4, out_reg14_5, Output_14_reg);
Kogge_Stone_5IN ADD_15(out_reg15_1, out_reg15_2, out_reg15_3, out_reg15_4, out_reg15_5, Output_15_reg);
Kogge_Stone_5IN ADD_16(out_reg16_1, out_reg16_2, out_reg16_3, out_reg16_4, out_reg16_5, Output_16_reg);
Kogge_Stone_5IN ADD_17(out_reg17_1, out_reg17_2, out_reg17_3, out_reg17_4, out_reg17_5, Output_17_reg);
Kogge_Stone_5IN ADD_18(out_reg18_1, out_reg18_2, out_reg18_3, out_reg18_4, out_reg18_5, Output_18_reg);
Kogge_Stone_5IN ADD_19(out_reg19_1, out_reg19_2, out_reg19_3, out_reg19_4, out_reg19_5, Output_19_reg);
Kogge_Stone_5IN ADD_20(out_reg20_1, out_reg20_2, out_reg20_3, out_reg20_4, out_reg20_5, Output_20_reg);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 'b0;
        Output_2 <= 'b0;
        Output_3 <= 'b0;
        Output_4 <= 'b0;
        Output_5 <= 'b0;
        Output_6 <= 'b0;
        Output_7 <= 'b0;
        Output_8 <= 'b0;
        Output_9 <= 'b0;
        Output_10 <= 'b0;
        Output_11 <= 'b0;
        Output_12 <= 'b0;
        Output_13 <= 'b0;
        Output_14 <= 'b0;
        Output_15 <= 'b0;
        Output_16 <= 'b0;
        Output_17 <= 'b0;
        Output_18 <= 'b0;
        Output_19 <= 'b0;
        Output_20 <= 'b0;
    end
    else begin
        Output_1 <= Output_1_reg;
        Output_2 <= Output_2_reg;
        Output_3 <= Output_3_reg;
        Output_4 <= Output_4_reg;
        Output_5 <= Output_5_reg;
        Output_6 <= Output_6_reg;
        Output_7 <= Output_7_reg;
        Output_8 <= Output_8_reg;
        Output_9 <= Output_9_reg;
        Output_10 <= Output_10_reg;
        Output_11 <= Output_11_reg;
        Output_12 <= Output_12_reg;
        Output_13 <= Output_13_reg;
        Output_14 <= Output_14_reg;
        Output_15 <= Output_15_reg;
        Output_16 <= Output_16_reg;
        Output_17 <= Output_17_reg;
        Output_18 <= Output_18_reg;
        Output_19 <= Output_19_reg;
        Output_20 <= Output_20_reg;
    end
end
    
endmodule




module Bias_1_ADD #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] Kernel1_1,
    input wire [DATA_WIDTH-1:0] Kernel1_2,
    input wire [DATA_WIDTH-1:0] Kernel1_3,
    input wire [DATA_WIDTH-1:0] Kernel1_4,
    input wire [DATA_WIDTH-1:0] Kernel1_5,
    input wire [DATA_WIDTH-1:0] Kernel1_6,
    input wire [DATA_WIDTH-1:0] Kernel1_7,
    input wire [DATA_WIDTH-1:0] Kernel1_8,
    input wire [DATA_WIDTH-1:0] Kernel1_9,
    input wire [DATA_WIDTH-1:0] Kernel1_10,
    input wire [DATA_WIDTH-1:0] Kernel1_11,
    input wire [DATA_WIDTH-1:0] Kernel1_12,
    input wire [DATA_WIDTH-1:0] Kernel1_13,
    input wire [DATA_WIDTH-1:0] Kernel1_14,
    input wire [DATA_WIDTH-1:0] Kernel1_15,
    input wire [DATA_WIDTH-1:0] Kernel1_16,
    input wire [DATA_WIDTH-1:0] Kernel1_17,
    input wire [DATA_WIDTH-1:0] Kernel1_18,
    input wire [DATA_WIDTH-1:0] Kernel1_19,
    input wire [DATA_WIDTH-1:0] Kernel1_20,

    input wire [DATA_WIDTH-1:0] Recurrent1_1,
    input wire [DATA_WIDTH-1:0] Recurrent1_2,
    input wire [DATA_WIDTH-1:0] Recurrent1_3,
    input wire [DATA_WIDTH-1:0] Recurrent1_4,
    input wire [DATA_WIDTH-1:0] Recurrent1_5,
    input wire [DATA_WIDTH-1:0] Recurrent1_6,
    input wire [DATA_WIDTH-1:0] Recurrent1_7,
    input wire [DATA_WIDTH-1:0] Recurrent1_8,
    input wire [DATA_WIDTH-1:0] Recurrent1_9,
    input wire [DATA_WIDTH-1:0] Recurrent1_10,
    input wire [DATA_WIDTH-1:0] Recurrent1_11,
    input wire [DATA_WIDTH-1:0] Recurrent1_12,
    input wire [DATA_WIDTH-1:0] Recurrent1_13,
    input wire [DATA_WIDTH-1:0] Recurrent1_14,
    input wire [DATA_WIDTH-1:0] Recurrent1_15,
    input wire [DATA_WIDTH-1:0] Recurrent1_16,
    input wire [DATA_WIDTH-1:0] Recurrent1_17,
    input wire [DATA_WIDTH-1:0] Recurrent1_18,
    input wire [DATA_WIDTH-1:0] Recurrent1_19,
    input wire [DATA_WIDTH-1:0] Recurrent1_20,


    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4,
    output reg [OUTPUT_WIDTH-1:0] Output_5,
    output reg [OUTPUT_WIDTH-1:0] Output_6,
    output reg [OUTPUT_WIDTH-1:0] Output_7,
    output reg [OUTPUT_WIDTH-1:0] Output_8,
    output reg [OUTPUT_WIDTH-1:0] Output_9,
    output reg [OUTPUT_WIDTH-1:0] Output_10,
    output reg [OUTPUT_WIDTH-1:0] Output_11,
    output reg [OUTPUT_WIDTH-1:0] Output_12,
    output reg [OUTPUT_WIDTH-1:0] Output_13,
    output reg [OUTPUT_WIDTH-1:0] Output_14,
    output reg [OUTPUT_WIDTH-1:0] Output_15,
    output reg [OUTPUT_WIDTH-1:0] Output_16,
    output reg [OUTPUT_WIDTH-1:0] Output_17,
    output reg [OUTPUT_WIDTH-1:0] Output_18,
    output reg [OUTPUT_WIDTH-1:0] Output_19,
    output reg [OUTPUT_WIDTH-1:0] Output_20
);


reg [DATA_WIDTH-1:0] bias1_1;
reg [DATA_WIDTH-1:0] bias1_2;
reg [DATA_WIDTH-1:0] bias1_3;
reg [DATA_WIDTH-1:0] bias1_4;
reg [DATA_WIDTH-1:0] bias1_5;
reg [DATA_WIDTH-1:0] bias1_6;
reg [DATA_WIDTH-1:0] bias1_7;
reg [DATA_WIDTH-1:0] bias1_8;
reg [DATA_WIDTH-1:0] bias1_9;
reg [DATA_WIDTH-1:0] bias1_10;
reg [DATA_WIDTH-1:0] bias1_11;
reg [DATA_WIDTH-1:0] bias1_12;
reg [DATA_WIDTH-1:0] bias1_13;
reg [DATA_WIDTH-1:0] bias1_14;
reg [DATA_WIDTH-1:0] bias1_15;
reg [DATA_WIDTH-1:0] bias1_16;
reg [DATA_WIDTH-1:0] bias1_17;
reg [DATA_WIDTH-1:0] bias1_18;
reg [DATA_WIDTH-1:0] bias1_19;
reg [DATA_WIDTH-1:0] bias1_20;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        bias1_1  <= 14'b00000010111011;   
        bias1_2  <= 14'b00000010010110;   
        bias1_3  <= 14'b00000011001001;   
        bias1_4  <= 14'b00000100011110;   
        bias1_5  <= 14'b00000010100011;   
        bias1_6  <= 14'b00010011111100;   
        bias1_7  <= 14'b00010010101101;   
        bias1_8  <= 14'b00010101110101;   
        bias1_9  <= 14'b00010011010000;   
        bias1_10 <= 14'b00010000010000;   
        bias1_11 <= 14'b00000000100111;   
        bias1_12 <= 14'b00000000000100;   
        bias1_13 <= 14'b00000000110100;   
        bias1_14 <= 14'b00000010000110;   
        bias1_15 <= 14'b11111111010110;   
        bias1_16 <= 14'b00000101101101;   
        bias1_17 <= 14'b00000001110101;   
        bias1_18 <= 14'b00000110101110;   
        bias1_19 <= 14'b00000001111011;   
        bias1_20 <= 14'b00000010011101;    
    end
    else begin
        bias1_1  <= 14'b00000010111011;
        bias1_2  <= 14'b00000010010110;   
        bias1_3  <= 14'b00000011001001;   
        bias1_4  <= 14'b00000100011110;   
        bias1_5  <= 14'b00000010100011;  
        bias1_6  <= 14'b00010011111100;
        bias1_7  <= 14'b00010010101101;   
        bias1_8  <= 14'b00010101110101;   
        bias1_9  <= 14'b00010011010000;   
        bias1_10 <= 14'b00010000010000;   
        bias1_11 <= 14'b00000000100111;   
        bias1_12 <= 14'b00000000000100;   
        bias1_13 <= 14'b00000000110100;   
        bias1_14 <= 14'b00000010000110;   
        bias1_15 <= 14'b11111111010110;   
        bias1_16 <= 14'b00000101101101;   
        bias1_17 <= 14'b00000001110101;   
        bias1_18 <= 14'b00000110101110;   
        bias1_19 <= 14'b00000001111011;   
        bias1_20 <= 14'b00000010011101;
    end
end


wire [OUTPUT_WIDTH-1:0] out_reg1;
wire [OUTPUT_WIDTH-1:0] out_reg2;
wire [OUTPUT_WIDTH-1:0] out_reg3;
wire [OUTPUT_WIDTH-1:0] out_reg4;
wire [OUTPUT_WIDTH-1:0] out_reg5;
wire [OUTPUT_WIDTH-1:0] out_reg6;
wire [OUTPUT_WIDTH-1:0] out_reg7;
wire [OUTPUT_WIDTH-1:0] out_reg8;
wire [OUTPUT_WIDTH-1:0] out_reg9;
wire [OUTPUT_WIDTH-1:0] out_reg10;
wire [OUTPUT_WIDTH-1:0] out_reg11;
wire [OUTPUT_WIDTH-1:0] out_reg12;
wire [OUTPUT_WIDTH-1:0] out_reg13;
wire [OUTPUT_WIDTH-1:0] out_reg14;
wire [OUTPUT_WIDTH-1:0] out_reg15;
wire [OUTPUT_WIDTH-1:0] out_reg16;
wire [OUTPUT_WIDTH-1:0] out_reg17;
wire [OUTPUT_WIDTH-1:0] out_reg18;
wire [OUTPUT_WIDTH-1:0] out_reg19;
wire [OUTPUT_WIDTH-1:0] out_reg20;


Kogge_Stone_3IN ADD1(Kernel1_1, Recurrent1_1, bias1_1, out_reg1);
Kogge_Stone_3IN ADD2(Kernel1_2, Recurrent1_2, bias1_2, out_reg2);
Kogge_Stone_3IN ADD3(Kernel1_3, Recurrent1_3, bias1_3, out_reg3);
Kogge_Stone_3IN ADD4(Kernel1_4, Recurrent1_4, bias1_4, out_reg4);
Kogge_Stone_3IN ADD5(Kernel1_5, Recurrent1_5, bias1_5, out_reg5);
Kogge_Stone_3IN ADD6(Kernel1_6, Recurrent1_6, bias1_6, out_reg6);
Kogge_Stone_3IN ADD7(Kernel1_7, Recurrent1_7, bias1_7, out_reg7);
Kogge_Stone_3IN ADD8(Kernel1_8, Recurrent1_8, bias1_8, out_reg8);
Kogge_Stone_3IN ADD9(Kernel1_9, Recurrent1_9, bias1_9, out_reg9);
Kogge_Stone_3IN ADD10(Kernel1_10, Recurrent1_10, bias1_10, out_reg10);
Kogge_Stone_3IN ADD11(Kernel1_11, Recurrent1_11, bias1_11, out_reg11);
Kogge_Stone_3IN ADD12(Kernel1_12, Recurrent1_12, bias1_12, out_reg12);
Kogge_Stone_3IN ADD13(Kernel1_13, Recurrent1_13, bias1_13, out_reg13);
Kogge_Stone_3IN ADD14(Kernel1_14, Recurrent1_14, bias1_14, out_reg14);
Kogge_Stone_3IN ADD15(Kernel1_15, Recurrent1_15, bias1_15, out_reg15);
Kogge_Stone_3IN ADD16(Kernel1_16, Recurrent1_16, bias1_16, out_reg16);
Kogge_Stone_3IN ADD17(Kernel1_17, Recurrent1_17, bias1_17, out_reg17);
Kogge_Stone_3IN ADD18(Kernel1_18, Recurrent1_18, bias1_18, out_reg18);
Kogge_Stone_3IN ADD19(Kernel1_19, Recurrent1_19, bias1_19, out_reg19);
Kogge_Stone_3IN ADD20(Kernel1_20, Recurrent1_20, bias1_20, out_reg20);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 'b0;
        Output_2 <= 'b0;
        Output_3 <= 'b0;
        Output_4 <= 'b0;
        Output_5 <= 'b0;
        Output_6 <= 'b0;
        Output_7 <= 'b0;
        Output_8 <= 'b0;
        Output_9 <= 'b0;
        Output_10 <= 'b0;
        Output_11 <= 'b0;
        Output_12 <= 'b0;
        Output_13 <= 'b0;
        Output_14 <= 'b0;
        Output_15 <= 'b0;
        Output_16 <= 'b0;
        Output_17 <= 'b0;
        Output_18 <= 'b0;
        Output_19 <= 'b0;
        Output_20 <= 'b0;
    end
    else begin
        Output_1 <= out_reg1;
        Output_2 <= out_reg2;
        Output_3 <= out_reg3;
        Output_4 <= out_reg4;
        Output_5 <= out_reg5;
        Output_6 <= out_reg6;
        Output_7 <= out_reg7;
        Output_8 <= out_reg8;
        Output_9 <= out_reg9;
        Output_10 <= out_reg10;
        Output_11 <= out_reg11;
        Output_12 <= out_reg12;
        Output_13 <= out_reg13;
        Output_14 <= out_reg14;
        Output_15 <= out_reg15;
        Output_16 <= out_reg16;
        Output_17 <= out_reg17;
        Output_18 <= out_reg18;
        Output_19 <= out_reg19;
        Output_20 <= out_reg20;
    end
end


endmodule



////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////



module Kernel_2_MULT #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4,
    output reg [OUTPUT_WIDTH-1:0] Output_5,
    output reg [OUTPUT_WIDTH-1:0] Output_6,
    output reg [OUTPUT_WIDTH-1:0] Output_7,
    output reg [OUTPUT_WIDTH-1:0] Output_8,
    output reg [OUTPUT_WIDTH-1:0] Output_9,
    output reg [OUTPUT_WIDTH-1:0] Output_10,
    output reg [OUTPUT_WIDTH-1:0] Output_11,
    output reg [OUTPUT_WIDTH-1:0] Output_12,
    output reg [OUTPUT_WIDTH-1:0] Output_13,
    output reg [OUTPUT_WIDTH-1:0] Output_14,
    output reg [OUTPUT_WIDTH-1:0] Output_15,
    output reg [OUTPUT_WIDTH-1:0] Output_16,
    output reg [OUTPUT_WIDTH-1:0] Output_17,
    output reg [OUTPUT_WIDTH-1:0] Output_18,
    output reg [OUTPUT_WIDTH-1:0] Output_19,
    output reg [OUTPUT_WIDTH-1:0] Output_20
);

reg [DATA_WIDTH-1:0] kernel2_1_1;
reg [DATA_WIDTH-1:0] kernel2_1_2;   
reg [DATA_WIDTH-1:0] kernel2_1_3;   
reg [DATA_WIDTH-1:0] kernel2_1_4;   
reg [DATA_WIDTH-1:0] kernel2_1_5;   
reg [DATA_WIDTH-1:0] kernel2_2_1;  
reg [DATA_WIDTH-1:0] kernel2_2_2;   
reg [DATA_WIDTH-1:0] kernel2_2_3;   
reg [DATA_WIDTH-1:0] kernel2_2_4;   
reg [DATA_WIDTH-1:0] kernel2_2_5;   
reg [DATA_WIDTH-1:0] kernel2_3_1;   
reg [DATA_WIDTH-1:0] kernel2_3_2;   
reg [DATA_WIDTH-1:0] kernel2_3_3;   
reg [DATA_WIDTH-1:0] kernel2_3_4;   
reg [DATA_WIDTH-1:0] kernel2_3_5;   
reg [DATA_WIDTH-1:0] kernel2_4_1;   
reg [DATA_WIDTH-1:0] kernel2_4_2;   
reg [DATA_WIDTH-1:0] kernel2_4_3;   
reg [DATA_WIDTH-1:0] kernel2_4_4;   
reg [DATA_WIDTH-1:0] kernel2_4_5;   
reg [DATA_WIDTH-1:0] kernel2_5_1;   
reg [DATA_WIDTH-1:0] kernel2_5_2;   
reg [DATA_WIDTH-1:0] kernel2_5_3;   
reg [DATA_WIDTH-1:0] kernel2_5_4;   
reg [DATA_WIDTH-1:0] kernel2_5_5;   
reg [DATA_WIDTH-1:0] kernel2_6_1;   
reg [DATA_WIDTH-1:0] kernel2_6_2;   
reg [DATA_WIDTH-1:0] kernel2_6_3;   
reg [DATA_WIDTH-1:0] kernel2_6_4;   
reg [DATA_WIDTH-1:0] kernel2_6_5;   
reg [DATA_WIDTH-1:0] kernel2_7_1;   
reg [DATA_WIDTH-1:0] kernel2_7_2;   
reg [DATA_WIDTH-1:0] kernel2_7_3;   
reg [DATA_WIDTH-1:0] kernel2_7_4;   
reg [DATA_WIDTH-1:0] kernel2_7_5;   
reg [DATA_WIDTH-1:0] kernel2_8_1;   
reg [DATA_WIDTH-1:0] kernel2_8_2;   
reg [DATA_WIDTH-1:0] kernel2_8_3;   
reg [DATA_WIDTH-1:0] kernel2_8_4;   
reg [DATA_WIDTH-1:0] kernel2_8_5;   
reg [DATA_WIDTH-1:0] kernel2_9_1;   
reg [DATA_WIDTH-1:0] kernel2_9_2;   
reg [DATA_WIDTH-1:0] kernel2_9_3;   
reg [DATA_WIDTH-1:0] kernel2_9_4;   
reg [DATA_WIDTH-1:0] kernel2_9_5;   
reg [DATA_WIDTH-1:0] kernel2_10_1;   
reg [DATA_WIDTH-1:0] kernel2_10_2;   
reg [DATA_WIDTH-1:0] kernel2_10_3;   
reg [DATA_WIDTH-1:0] kernel2_10_4;   
reg [DATA_WIDTH-1:0] kernel2_10_5;   
reg [DATA_WIDTH-1:0] kernel2_11_1;   
reg [DATA_WIDTH-1:0] kernel2_11_2;   
reg [DATA_WIDTH-1:0] kernel2_11_3;   
reg [DATA_WIDTH-1:0] kernel2_11_4;   
reg [DATA_WIDTH-1:0] kernel2_11_5;   
reg [DATA_WIDTH-1:0] kernel2_12_1;   
reg [DATA_WIDTH-1:0] kernel2_12_2;   
reg [DATA_WIDTH-1:0] kernel2_12_3;   
reg [DATA_WIDTH-1:0] kernel2_12_4;   
reg [DATA_WIDTH-1:0] kernel2_12_5;   
reg [DATA_WIDTH-1:0] kernel2_13_1;   
reg [DATA_WIDTH-1:0] kernel2_13_2;   
reg [DATA_WIDTH-1:0] kernel2_13_3;   
reg [DATA_WIDTH-1:0] kernel2_13_4;   
reg [DATA_WIDTH-1:0] kernel2_13_5;   
reg [DATA_WIDTH-1:0] kernel2_14_1;   
reg [DATA_WIDTH-1:0] kernel2_14_2;   
reg [DATA_WIDTH-1:0] kernel2_14_3;   
reg [DATA_WIDTH-1:0] kernel2_14_4;   
reg [DATA_WIDTH-1:0] kernel2_14_5;   
reg [DATA_WIDTH-1:0] kernel2_15_1;   
reg [DATA_WIDTH-1:0] kernel2_15_2;   
reg [DATA_WIDTH-1:0] kernel2_15_3;   
reg [DATA_WIDTH-1:0] kernel2_15_4;   
reg [DATA_WIDTH-1:0] kernel2_15_5;   
reg [DATA_WIDTH-1:0] kernel2_16_1;   
reg [DATA_WIDTH-1:0] kernel2_16_2;   
reg [DATA_WIDTH-1:0] kernel2_16_3;   
reg [DATA_WIDTH-1:0] kernel2_16_4;   
reg [DATA_WIDTH-1:0] kernel2_16_5;   
reg [DATA_WIDTH-1:0] kernel2_17_1;   
reg [DATA_WIDTH-1:0] kernel2_17_2;   
reg [DATA_WIDTH-1:0] kernel2_17_3;
reg [DATA_WIDTH-1:0] kernel2_17_4;   
reg [DATA_WIDTH-1:0] kernel2_17_5;   
reg [DATA_WIDTH-1:0] kernel2_18_1;  
reg [DATA_WIDTH-1:0] kernel2_18_2;   
reg [DATA_WIDTH-1:0] kernel2_18_3;   
reg [DATA_WIDTH-1:0] kernel2_18_4;   
reg [DATA_WIDTH-1:0] kernel2_18_5;   
reg [DATA_WIDTH-1:0] kernel2_19_1;   
reg [DATA_WIDTH-1:0] kernel2_19_2;   
reg [DATA_WIDTH-1:0] kernel2_19_3;   
reg [DATA_WIDTH-1:0] kernel2_19_4;   
reg [DATA_WIDTH-1:0] kernel2_19_5;   
reg [DATA_WIDTH-1:0] kernel2_20_1;
reg [DATA_WIDTH-1:0] kernel2_20_2;
reg [DATA_WIDTH-1:0] kernel2_20_3;
reg [DATA_WIDTH-1:0] kernel2_20_4;
reg [DATA_WIDTH-1:0] kernel2_20_5;



always @(posedge clk or negedge rst) begin
    if(!rst) begin
        kernel2_1_1 <=  14'b00000101100100;
        kernel2_1_2 <=  14'b11111101100100;   
        kernel2_1_3 <=  14'b00000100110011;   
        kernel2_1_4 <=  14'b00000001011001;   
        kernel2_1_5 <=  14'b00001001100101;   
        kernel2_2_1 <=  14'b11111010101001;  
        kernel2_2_2 <=  14'b11110101101010;   
        kernel2_2_3 <=  14'b11110110111101;   
        kernel2_2_4 <=  14'b00000000001110;   
        kernel2_2_5 <=  14'b11111010100010;   
        kernel2_3_1 <=  14'b00000110100001;   
        kernel2_3_2 <=  14'b11111001110100;   
        kernel2_3_3 <=  14'b00000010101111;   
        kernel2_3_4 <=  14'b00001111110010;   
        kernel2_3_5 <=  14'b00000011110100;   
        kernel2_4_1 <=  14'b00000101001111;   
        kernel2_4_2 <=  14'b00000011110110;   
        kernel2_4_3 <=  14'b11111111010100;   
        kernel2_4_4 <=  14'b00000110100010;   
        kernel2_4_5 <=  14'b11111110100100;   
        kernel2_5_1 <=  14'b00000100001010;   
        kernel2_5_2 <=  14'b00000111111110;   
        kernel2_5_3 <=  14'b00000001001111;   
        kernel2_5_4 <=  14'b11111111100101;   
        kernel2_5_5 <=  14'b11111010010111;   
        kernel2_6_1 <=  14'b00000000001100;   
        kernel2_6_2 <=  14'b11110111101001;   
        kernel2_6_3 <=  14'b11111001100111;   
        kernel2_6_4 <=  14'b00000100001111;   
        kernel2_6_5 <=  14'b00000001110101;   
        kernel2_7_1 <=  14'b00001010111100;   
        kernel2_7_2 <=  14'b11111100100101;   
        kernel2_7_3 <=  14'b00000010110101;   
        kernel2_7_4 <=  14'b11111100011100;   
        kernel2_7_5 <=  14'b11111111011011;   
        kernel2_8_1 <=  14'b11111111100100;   
        kernel2_8_2 <=  14'b00000000101101;   
        kernel2_8_3 <=  14'b11111110110111;   
        kernel2_8_4 <=  14'b00000100011000;   
        kernel2_8_5 <=  14'b00001101111100;   
        kernel2_9_1 <=  14'b11111010010111;   
        kernel2_9_2 <=  14'b11111010110010;   
        kernel2_9_3 <=  14'b00000100101100;   
        kernel2_9_4 <=  14'b00001011000001;   
        kernel2_9_5 <=  14'b11111110001001;   
        kernel2_10_1 <= 14'b11111010111111;   
        kernel2_10_2 <= 14'b00000100111111;   
        kernel2_10_3 <= 14'b11111100111111;   
        kernel2_10_4 <= 14'b00000010111100;   
        kernel2_10_5 <= 14'b00001100100001;   
        kernel2_11_1 <= 14'b11101111101000;   
        kernel2_11_2 <= 14'b11110011010101;   
        kernel2_11_3 <= 14'b11111100000100;   
        kernel2_11_4 <= 14'b00000111111001;   
        kernel2_11_5 <= 14'b00000000101110;   
        kernel2_12_1 <= 14'b00000100111110;   
        kernel2_12_2 <= 14'b11111010110011;   
        kernel2_12_3 <= 14'b00000110011100;   
        kernel2_12_4 <= 14'b11111100011100;   
        kernel2_12_5 <= 14'b11111001010001;   
        kernel2_13_1 <= 14'b00000011001110;   
        kernel2_13_2 <= 14'b00001000110100;   
        kernel2_13_3 <= 14'b11111111110111;   
        kernel2_13_4 <= 14'b11111001101000;   
        kernel2_13_5 <= 14'b11111001011011;   
        kernel2_14_1 <= 14'b11110111110110;   
        kernel2_14_2 <= 14'b00000010011010;   
        kernel2_14_3 <= 14'b11111111001101;   
        kernel2_14_4 <= 14'b11111110001100;   
        kernel2_14_5 <= 14'b00001001101000;   
        kernel2_15_1 <= 14'b00001001011110;   
        kernel2_15_2 <= 14'b11111110000000;   
        kernel2_15_3 <= 14'b00001011000100;   
        kernel2_15_4 <= 14'b11111011100001;   
        kernel2_15_5 <= 14'b00000011010000;   
        kernel2_16_1 <= 14'b11110010101101;   
        kernel2_16_2 <= 14'b11111101111010;   
        kernel2_16_3 <= 14'b11110110111001;   
        kernel2_16_4 <= 14'b00000111010110;   
        kernel2_16_5 <= 14'b00000010001001;   
        kernel2_17_1 <= 14'b00001001101001;   
        kernel2_17_2 <= 14'b11101110010110;   
        kernel2_17_3 <= 14'b00000011110011;   
        kernel2_17_4 <= 14'b00000001111110;   
        kernel2_17_5 <= 14'b11111111010111;   
        kernel2_18_1 <= 14'b11111111110000;  
        kernel2_18_2 <= 14'b00000001001001;   
        kernel2_18_3 <= 14'b00001000101110;   
        kernel2_18_4 <= 14'b00000101100110;   
        kernel2_18_5 <= 14'b00001010110010;   
        kernel2_19_1 <= 14'b00000011110111;   
        kernel2_19_2 <= 14'b11111100011011;   
        kernel2_19_3 <= 14'b11111000011001;   
        kernel2_19_4 <= 14'b11111110011101;   
        kernel2_19_5 <= 14'b11111110111001;   
        kernel2_20_1 <= 14'b11111100011010;
        kernel2_20_2 <= 14'b00000000001110;
        kernel2_20_3 <= 14'b11110101101111;
        kernel2_20_4 <= 14'b00010010111100;
        kernel2_20_5 <= 14'b00001100111000;
    end
    else begin
        kernel2_1_1 <=  14'b00000101100100;
        kernel2_1_2 <=  14'b11111101100100;   
        kernel2_1_3 <=  14'b00000100110011;   
        kernel2_1_4 <=  14'b00000001011001;   
        kernel2_1_5 <=  14'b00001001100101;   
        kernel2_2_1 <=  14'b11111010101001;  
        kernel2_2_2 <=  14'b11110101101010;   
        kernel2_2_3 <=  14'b11110110111101;   
        kernel2_2_4 <=  14'b00000000001110;   
        kernel2_2_5 <=  14'b11111010100010;   
        kernel2_3_1 <=  14'b00000110100001;   
        kernel2_3_2 <=  14'b11111001110100;   
        kernel2_3_3 <=  14'b00000010101111;   
        kernel2_3_4 <=  14'b00001111110010;   
        kernel2_3_5 <=  14'b00000011110100;   
        kernel2_4_1 <=  14'b00000101001111;   
        kernel2_4_2 <=  14'b00000011110110;   
        kernel2_4_3 <=  14'b11111111010100;   
        kernel2_4_4 <=  14'b00000110100010;   
        kernel2_4_5 <=  14'b11111110100100;   
        kernel2_5_1 <=  14'b00000100001010;   
        kernel2_5_2 <=  14'b00000111111110;   
        kernel2_5_3 <=  14'b00000001001111;   
        kernel2_5_4 <=  14'b11111111100101;   
        kernel2_5_5 <=  14'b11111010010111;   
        kernel2_6_1 <=  14'b00000000001100;   
        kernel2_6_2 <=  14'b11110111101001;   
        kernel2_6_3 <=  14'b11111001100111;   
        kernel2_6_4 <=  14'b00000100001111;   
        kernel2_6_5 <=  14'b00000001110101;   
        kernel2_7_1 <=  14'b00001010111100;   
        kernel2_7_2 <=  14'b11111100100101;   
        kernel2_7_3 <=  14'b00000010110101;   
        kernel2_7_4 <=  14'b11111100011100;   
        kernel2_7_5 <=  14'b11111111011011;   
        kernel2_8_1 <=  14'b11111111100100;   
        kernel2_8_2 <=  14'b00000000101101;   
        kernel2_8_3 <=  14'b11111110110111;   
        kernel2_8_4 <=  14'b00000100011000;   
        kernel2_8_5 <=  14'b00001101111100;   
        kernel2_9_1 <=  14'b11111010010111;   
        kernel2_9_2 <=  14'b11111010110010;   
        kernel2_9_3 <=  14'b00000100101100;   
        kernel2_9_4 <=  14'b00001011000001;   
        kernel2_9_5 <=  14'b11111110001001;   
        kernel2_10_1 <= 14'b11111010111111;   
        kernel2_10_2 <= 14'b00000100111111;   
        kernel2_10_3 <= 14'b11111100111111;   
        kernel2_10_4 <= 14'b00000010111100;   
        kernel2_10_5 <= 14'b00001100100001;   
        kernel2_11_1 <= 14'b11101111101000;   
        kernel2_11_2 <= 14'b11110011010101;   
        kernel2_11_3 <= 14'b11111100000100;   
        kernel2_11_4 <= 14'b00000111111001;   
        kernel2_11_5 <= 14'b00000000101110;   
        kernel2_12_1 <= 14'b00000100111110;   
        kernel2_12_2 <= 14'b11111010110011;   
        kernel2_12_3 <= 14'b00000110011100;   
        kernel2_12_4 <= 14'b11111100011100;   
        kernel2_12_5 <= 14'b11111001010001;   
        kernel2_13_1 <= 14'b00000011001110;   
        kernel2_13_2 <= 14'b00001000110100;   
        kernel2_13_3 <= 14'b11111111110111;   
        kernel2_13_4 <= 14'b11111001101000;   
        kernel2_13_5 <= 14'b11111001011011;   
        kernel2_14_1 <= 14'b11110111110110;   
        kernel2_14_2 <= 14'b00000010011010;   
        kernel2_14_3 <= 14'b11111111001101;   
        kernel2_14_4 <= 14'b11111110001100;   
        kernel2_14_5 <= 14'b00001001101000;   
        kernel2_15_1 <= 14'b00001001011110;   
        kernel2_15_2 <= 14'b11111110000000;   
        kernel2_15_3 <= 14'b00001011000100;   
        kernel2_15_4 <= 14'b11111011100001;   
        kernel2_15_5 <= 14'b00000011010000;   
        kernel2_16_1 <= 14'b11110010101101;   
        kernel2_16_2 <= 14'b11111101111010;   
        kernel2_16_3 <= 14'b11110110111001;   
        kernel2_16_4 <= 14'b00000111010110;   
        kernel2_16_5 <= 14'b00000010001001;   
        kernel2_17_1 <= 14'b00001001101001;   
        kernel2_17_2 <= 14'b11101110010110;   
        kernel2_17_3 <= 14'b00000011110011;   
        kernel2_17_4 <= 14'b00000001111110;   
        kernel2_17_5 <= 14'b11111111010111;   
        kernel2_18_1 <= 14'b11111111110000;  
        kernel2_18_2 <= 14'b00000001001001;   
        kernel2_18_3 <= 14'b00001000101110;   
        kernel2_18_4 <= 14'b00000101100110;   
        kernel2_18_5 <= 14'b00001010110010;   
        kernel2_19_1 <= 14'b00000011110111;   
        kernel2_19_2 <= 14'b11111100011011;   
        kernel2_19_3 <= 14'b11111000011001;   
        kernel2_19_4 <= 14'b11111110011101;   
        kernel2_19_5 <= 14'b11111110111001;   
        kernel2_20_1 <= 14'b11111100011010;
        kernel2_20_2 <= 14'b00000000001110;
        kernel2_20_3 <= 14'b11110101101111;
        kernel2_20_4 <= 14'b00010010111100;
        kernel2_20_5 <= 14'b00001100111000;        
    end
end

localparam OUTPUT_WIDTH_NEW = 28;

wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_5; 


WallaceTreeMul MULT11( kernel2_1_1, h_1, out_reg1_1);
WallaceTreeMul MULT12( kernel2_1_2, h_2, out_reg1_2);
WallaceTreeMul MULT13( kernel2_1_3, h_3, out_reg1_3);
WallaceTreeMul MULT14( kernel2_1_4, h_4, out_reg1_4);
WallaceTreeMul MULT15( kernel2_1_5, h_5, out_reg1_5);
WallaceTreeMul MULT21( kernel2_2_1, h_1, out_reg2_1);
WallaceTreeMul MULT22( kernel2_2_2, h_2, out_reg2_2);
WallaceTreeMul MULT23( kernel2_2_3, h_3, out_reg2_3);
WallaceTreeMul MULT24( kernel2_2_4, h_4, out_reg2_4);
WallaceTreeMul MULT25( kernel2_2_5, h_5, out_reg2_5);
WallaceTreeMul MULT31( kernel2_3_1, h_1, out_reg3_1);
WallaceTreeMul MULT32( kernel2_3_2, h_2, out_reg3_2);
WallaceTreeMul MULT33( kernel2_3_3, h_3, out_reg3_3);
WallaceTreeMul MULT34( kernel2_3_4, h_4, out_reg3_4);
WallaceTreeMul MULT35( kernel2_3_5, h_5, out_reg3_5);
WallaceTreeMul MULT41( kernel2_4_1, h_1, out_reg4_1);
WallaceTreeMul MULT42( kernel2_4_2, h_2, out_reg4_2);
WallaceTreeMul MULT43( kernel2_4_3, h_3, out_reg4_3);
WallaceTreeMul MULT44( kernel2_4_4, h_4, out_reg4_4);
WallaceTreeMul MULT45( kernel2_4_5, h_5, out_reg4_5);
WallaceTreeMul MULT51( kernel2_5_1, h_1, out_reg5_1);
WallaceTreeMul MULT52( kernel2_5_2, h_2, out_reg5_2);
WallaceTreeMul MULT53( kernel2_5_3, h_3, out_reg5_3);
WallaceTreeMul MULT54( kernel2_5_4, h_4, out_reg5_4);
WallaceTreeMul MULT55( kernel2_5_5, h_5, out_reg5_5);
WallaceTreeMul MULT61( kernel2_6_1, h_1, out_reg6_1);
WallaceTreeMul MULT62( kernel2_6_2, h_2, out_reg6_2);
WallaceTreeMul MULT63( kernel2_6_3, h_3, out_reg6_3);
WallaceTreeMul MULT64( kernel2_6_4, h_4, out_reg6_4);
WallaceTreeMul MULT65( kernel2_6_5, h_5, out_reg6_5);
WallaceTreeMul MULT71( kernel2_7_1, h_1, out_reg7_1);
WallaceTreeMul MULT72( kernel2_7_2, h_2, out_reg7_2);
WallaceTreeMul MULT73( kernel2_7_3, h_3, out_reg7_3);
WallaceTreeMul MULT74( kernel2_7_4, h_4, out_reg7_4);
WallaceTreeMul MULT75( kernel2_7_5, h_5, out_reg7_5);
WallaceTreeMul MULT81( kernel2_8_1, h_1, out_reg8_1);
WallaceTreeMul MULT82( kernel2_8_2, h_2, out_reg8_2);
WallaceTreeMul MULT83( kernel2_8_3, h_3, out_reg8_3);
WallaceTreeMul MULT84( kernel2_8_4, h_4, out_reg8_4);
WallaceTreeMul MULT85( kernel2_8_5, h_5, out_reg8_5);
WallaceTreeMul MULT91( kernel2_9_1, h_1, out_reg9_1);
WallaceTreeMul MULT92( kernel2_9_2, h_2, out_reg9_2);
WallaceTreeMul MULT93( kernel2_9_3, h_3, out_reg9_3);
WallaceTreeMul MULT94( kernel2_9_4, h_4, out_reg9_4);
WallaceTreeMul MULT95( kernel2_9_5, h_5, out_reg9_5);
WallaceTreeMul MULT101(kernel2_10_1, h_1, out_reg10_1);
WallaceTreeMul MULT102(kernel2_10_2, h_2, out_reg10_2);
WallaceTreeMul MULT103(kernel2_10_3, h_3, out_reg10_3);
WallaceTreeMul MULT104(kernel2_10_4, h_4, out_reg10_4);
WallaceTreeMul MULT105(kernel2_10_5, h_5, out_reg10_5);
WallaceTreeMul MULT111(kernel2_11_1, h_1, out_reg11_1);
WallaceTreeMul MULT112(kernel2_11_2, h_2, out_reg11_2);
WallaceTreeMul MULT113(kernel2_11_3, h_3, out_reg11_3);
WallaceTreeMul MULT114(kernel2_11_4, h_4, out_reg11_4);
WallaceTreeMul MULT115(kernel2_11_5, h_5, out_reg11_5);
WallaceTreeMul MULT121(kernel2_12_1, h_1, out_reg12_1);
WallaceTreeMul MULT122(kernel2_12_2, h_2, out_reg12_2);
WallaceTreeMul MULT123(kernel2_12_3, h_3, out_reg12_3);
WallaceTreeMul MULT124(kernel2_12_4, h_4, out_reg12_4);
WallaceTreeMul MULT125(kernel2_12_5, h_5, out_reg12_5);
WallaceTreeMul MULT131(kernel2_13_1, h_1, out_reg13_1);
WallaceTreeMul MULT132(kernel2_13_2, h_2, out_reg13_2);
WallaceTreeMul MULT133(kernel2_13_3, h_3, out_reg13_3);
WallaceTreeMul MULT134(kernel2_13_4, h_4, out_reg13_4);
WallaceTreeMul MULT135(kernel2_13_5, h_5, out_reg13_5);
WallaceTreeMul MULT141(kernel2_14_1, h_1, out_reg14_1);
WallaceTreeMul MULT142(kernel2_14_2, h_2, out_reg14_2);
WallaceTreeMul MULT143(kernel2_14_3, h_3, out_reg14_3);
WallaceTreeMul MULT144(kernel2_14_4, h_4, out_reg14_4);
WallaceTreeMul MULT145(kernel2_14_5, h_5, out_reg14_5);
WallaceTreeMul MULT151(kernel2_15_1, h_1, out_reg15_1);
WallaceTreeMul MULT152(kernel2_15_2, h_2, out_reg15_2);
WallaceTreeMul MULT153(kernel2_15_3, h_3, out_reg15_3);
WallaceTreeMul MULT154(kernel2_15_4, h_4, out_reg15_4);
WallaceTreeMul MULT155(kernel2_15_5, h_5, out_reg15_5);
WallaceTreeMul MULT161(kernel2_16_1, h_1, out_reg16_1);
WallaceTreeMul MULT162(kernel2_16_2, h_2, out_reg16_2);
WallaceTreeMul MULT163(kernel2_16_3, h_3, out_reg16_3);
WallaceTreeMul MULT164(kernel2_16_4, h_4, out_reg16_4);
WallaceTreeMul MULT165(kernel2_16_5, h_5, out_reg16_5);
WallaceTreeMul MULT171(kernel2_17_1, h_1, out_reg17_1);
WallaceTreeMul MULT172(kernel2_17_2, h_2, out_reg17_2);
WallaceTreeMul MULT173(kernel2_17_3, h_3, out_reg17_3);
WallaceTreeMul MULT174(kernel2_17_4, h_4, out_reg17_4);
WallaceTreeMul MULT175(kernel2_17_5, h_5, out_reg17_5);
WallaceTreeMul MULT181(kernel2_18_1, h_1, out_reg18_1);
WallaceTreeMul MULT182(kernel2_18_2, h_2, out_reg18_2);
WallaceTreeMul MULT183(kernel2_18_3, h_3, out_reg18_3);
WallaceTreeMul MULT184(kernel2_18_4, h_4, out_reg18_4);
WallaceTreeMul MULT185(kernel2_18_5, h_5, out_reg18_5);
WallaceTreeMul MULT191(kernel2_19_1, h_1, out_reg19_1);
WallaceTreeMul MULT192(kernel2_19_2, h_2, out_reg19_2);
WallaceTreeMul MULT193(kernel2_19_3, h_3, out_reg19_3);
WallaceTreeMul MULT194(kernel2_19_4, h_4, out_reg19_4);
WallaceTreeMul MULT195(kernel2_19_5, h_5, out_reg19_5);
WallaceTreeMul MULT201(kernel2_20_1, h_1, out_reg20_1);
WallaceTreeMul MULT202(kernel2_20_2, h_2, out_reg20_2);
WallaceTreeMul MULT203(kernel2_20_3, h_3, out_reg20_3);
WallaceTreeMul MULT204(kernel2_20_4, h_4, out_reg20_4);
WallaceTreeMul MULT205(kernel2_20_5, h_5, out_reg20_5);

wire [OUTPUT_WIDTH-1:0] Output_1_reg;
wire [OUTPUT_WIDTH-1:0] Output_2_reg;
wire [OUTPUT_WIDTH-1:0] Output_3_reg;
wire [OUTPUT_WIDTH-1:0] Output_4_reg;
wire [OUTPUT_WIDTH-1:0] Output_5_reg;
wire [OUTPUT_WIDTH-1:0] Output_6_reg;
wire [OUTPUT_WIDTH-1:0] Output_7_reg;
wire [OUTPUT_WIDTH-1:0] Output_8_reg;
wire [OUTPUT_WIDTH-1:0] Output_9_reg;
wire [OUTPUT_WIDTH-1:0] Output_10_reg;
wire [OUTPUT_WIDTH-1:0] Output_11_reg;
wire [OUTPUT_WIDTH-1:0] Output_12_reg;
wire [OUTPUT_WIDTH-1:0] Output_13_reg;
wire [OUTPUT_WIDTH-1:0] Output_14_reg;
wire [OUTPUT_WIDTH-1:0] Output_15_reg;
wire [OUTPUT_WIDTH-1:0] Output_16_reg;
wire [OUTPUT_WIDTH-1:0] Output_17_reg;
wire [OUTPUT_WIDTH-1:0] Output_18_reg;
wire [OUTPUT_WIDTH-1:0] Output_19_reg;
wire [OUTPUT_WIDTH-1:0] Output_20_reg;


Kogge_Stone_5IN ADD_1(out_reg1_1, out_reg1_2, out_reg1_3, out_reg1_4, out_reg1_5, Output_1_reg);
Kogge_Stone_5IN ADD_2(out_reg2_1, out_reg2_2, out_reg2_3, out_reg2_4, out_reg2_5, Output_2_reg);
Kogge_Stone_5IN ADD_3(out_reg3_1, out_reg3_2, out_reg3_3, out_reg3_4, out_reg3_5, Output_3_reg);
Kogge_Stone_5IN ADD_4(out_reg4_1, out_reg4_2, out_reg4_3, out_reg4_4, out_reg4_5, Output_4_reg);
Kogge_Stone_5IN ADD_5(out_reg5_1, out_reg5_2, out_reg5_3, out_reg5_4, out_reg5_5, Output_5_reg);
Kogge_Stone_5IN ADD_6(out_reg6_1, out_reg6_2, out_reg6_3, out_reg6_4, out_reg6_5, Output_6_reg);
Kogge_Stone_5IN ADD_7(out_reg7_1, out_reg7_2, out_reg7_3, out_reg7_4, out_reg7_5, Output_7_reg);
Kogge_Stone_5IN ADD_8(out_reg8_1, out_reg8_2, out_reg8_3, out_reg8_4, out_reg8_5, Output_8_reg);
Kogge_Stone_5IN ADD_9(out_reg9_1, out_reg9_2, out_reg9_3, out_reg9_4, out_reg9_5, Output_9_reg);
Kogge_Stone_5IN ADD_10(out_reg10_1, out_reg10_2, out_reg10_3, out_reg10_4, out_reg10_5, Output_10_reg);
Kogge_Stone_5IN ADD_11(out_reg11_1, out_reg11_2, out_reg11_3, out_reg11_4, out_reg11_5, Output_11_reg);
Kogge_Stone_5IN ADD_12(out_reg12_1, out_reg12_2, out_reg12_3, out_reg12_4, out_reg12_5, Output_12_reg);
Kogge_Stone_5IN ADD_13(out_reg13_1, out_reg13_2, out_reg13_3, out_reg13_4, out_reg13_5, Output_13_reg);
Kogge_Stone_5IN ADD_14(out_reg14_1, out_reg14_2, out_reg14_3, out_reg14_4, out_reg14_5, Output_14_reg);
Kogge_Stone_5IN ADD_15(out_reg15_1, out_reg15_2, out_reg15_3, out_reg15_4, out_reg15_5, Output_15_reg);
Kogge_Stone_5IN ADD_16(out_reg16_1, out_reg16_2, out_reg16_3, out_reg16_4, out_reg16_5, Output_16_reg);
Kogge_Stone_5IN ADD_17(out_reg17_1, out_reg17_2, out_reg17_3, out_reg17_4, out_reg17_5, Output_17_reg);
Kogge_Stone_5IN ADD_18(out_reg18_1, out_reg18_2, out_reg18_3, out_reg18_4, out_reg18_5, Output_18_reg);
Kogge_Stone_5IN ADD_19(out_reg19_1, out_reg19_2, out_reg19_3, out_reg19_4, out_reg19_5, Output_19_reg);
Kogge_Stone_5IN ADD_20(out_reg20_1, out_reg20_2, out_reg20_3, out_reg20_4, out_reg20_5, Output_20_reg);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 'b0;
        Output_2 <= 'b0;
        Output_3 <= 'b0;
        Output_4 <= 'b0;
        Output_5 <= 'b0;
        Output_6 <= 'b0;
        Output_7 <= 'b0;
        Output_8 <= 'b0;
        Output_9 <= 'b0;
        Output_10 <= 'b0;
        Output_11 <= 'b0;
        Output_12 <= 'b0;
        Output_13 <= 'b0;
        Output_14 <= 'b0;
        Output_15 <= 'b0;
        Output_16 <= 'b0;
        Output_17 <= 'b0;
        Output_18 <= 'b0;
        Output_19 <= 'b0;
        Output_20 <= 'b0;
    end
    else begin
        Output_1 <= Output_1_reg;
        Output_2 <= Output_2_reg;
        Output_3 <= Output_3_reg;
        Output_4 <= Output_4_reg;
        Output_5 <= Output_5_reg;
        Output_6 <= Output_6_reg;
        Output_7 <= Output_7_reg;
        Output_8 <= Output_8_reg;
        Output_9 <= Output_9_reg;
        Output_10 <= Output_10_reg;
        Output_11 <= Output_11_reg;
        Output_12 <= Output_12_reg;
        Output_13 <= Output_13_reg;
        Output_14 <= Output_14_reg;
        Output_15 <= Output_15_reg;
        Output_16 <= Output_16_reg;
        Output_17 <= Output_17_reg;
        Output_18 <= Output_18_reg;
        Output_19 <= Output_19_reg;
        Output_20 <= Output_20_reg;
    end
end
    
endmodule




module Recurrent_2_MULT #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4,
    output reg [OUTPUT_WIDTH-1:0] Output_5,
    output reg [OUTPUT_WIDTH-1:0] Output_6,
    output reg [OUTPUT_WIDTH-1:0] Output_7,
    output reg [OUTPUT_WIDTH-1:0] Output_8,
    output reg [OUTPUT_WIDTH-1:0] Output_9,
    output reg [OUTPUT_WIDTH-1:0] Output_10,
    output reg [OUTPUT_WIDTH-1:0] Output_11,
    output reg [OUTPUT_WIDTH-1:0] Output_12,
    output reg [OUTPUT_WIDTH-1:0] Output_13,
    output reg [OUTPUT_WIDTH-1:0] Output_14,
    output reg [OUTPUT_WIDTH-1:0] Output_15,
    output reg [OUTPUT_WIDTH-1:0] Output_16,
    output reg [OUTPUT_WIDTH-1:0] Output_17,
    output reg [OUTPUT_WIDTH-1:0] Output_18,
    output reg [OUTPUT_WIDTH-1:0] Output_19,
    output reg [OUTPUT_WIDTH-1:0] Output_20
);

reg [DATA_WIDTH-1:0] recurrent2_1_1;
reg [DATA_WIDTH-1:0] recurrent2_1_2;   
reg [DATA_WIDTH-1:0] recurrent2_1_3;   
reg [DATA_WIDTH-1:0] recurrent2_1_4;   
reg [DATA_WIDTH-1:0] recurrent2_1_5;   
reg [DATA_WIDTH-1:0] recurrent2_2_1;  
reg [DATA_WIDTH-1:0] recurrent2_2_2;   
reg [DATA_WIDTH-1:0] recurrent2_2_3;   
reg [DATA_WIDTH-1:0] recurrent2_2_4;   
reg [DATA_WIDTH-1:0] recurrent2_2_5;   
reg [DATA_WIDTH-1:0] recurrent2_3_1;   
reg [DATA_WIDTH-1:0] recurrent2_3_2;   
reg [DATA_WIDTH-1:0] recurrent2_3_3;   
reg [DATA_WIDTH-1:0] recurrent2_3_4;   
reg [DATA_WIDTH-1:0] recurrent2_3_5;   
reg [DATA_WIDTH-1:0] recurrent2_4_1;   
reg [DATA_WIDTH-1:0] recurrent2_4_2;   
reg [DATA_WIDTH-1:0] recurrent2_4_3;   
reg [DATA_WIDTH-1:0] recurrent2_4_4;   
reg [DATA_WIDTH-1:0] recurrent2_4_5;   
reg [DATA_WIDTH-1:0] recurrent2_5_1;   
reg [DATA_WIDTH-1:0] recurrent2_5_2;   
reg [DATA_WIDTH-1:0] recurrent2_5_3;   
reg [DATA_WIDTH-1:0] recurrent2_5_4;   
reg [DATA_WIDTH-1:0] recurrent2_5_5;   
reg [DATA_WIDTH-1:0] recurrent2_6_1;   
reg [DATA_WIDTH-1:0] recurrent2_6_2;   
reg [DATA_WIDTH-1:0] recurrent2_6_3;   
reg [DATA_WIDTH-1:0] recurrent2_6_4;   
reg [DATA_WIDTH-1:0] recurrent2_6_5;   
reg [DATA_WIDTH-1:0] recurrent2_7_1;   
reg [DATA_WIDTH-1:0] recurrent2_7_2;   
reg [DATA_WIDTH-1:0] recurrent2_7_3;   
reg [DATA_WIDTH-1:0] recurrent2_7_4;   
reg [DATA_WIDTH-1:0] recurrent2_7_5;   
reg [DATA_WIDTH-1:0] recurrent2_8_1;   
reg [DATA_WIDTH-1:0] recurrent2_8_2;   
reg [DATA_WIDTH-1:0] recurrent2_8_3;   
reg [DATA_WIDTH-1:0] recurrent2_8_4;   
reg [DATA_WIDTH-1:0] recurrent2_8_5;   
reg [DATA_WIDTH-1:0] recurrent2_9_1;   
reg [DATA_WIDTH-1:0] recurrent2_9_2;   
reg [DATA_WIDTH-1:0] recurrent2_9_3;   
reg [DATA_WIDTH-1:0] recurrent2_9_4;   
reg [DATA_WIDTH-1:0] recurrent2_9_5;   
reg [DATA_WIDTH-1:0] recurrent2_10_1;   
reg [DATA_WIDTH-1:0] recurrent2_10_2;   
reg [DATA_WIDTH-1:0] recurrent2_10_3;   
reg [DATA_WIDTH-1:0] recurrent2_10_4;   
reg [DATA_WIDTH-1:0] recurrent2_10_5;   
reg [DATA_WIDTH-1:0] recurrent2_11_1;   
reg [DATA_WIDTH-1:0] recurrent2_11_2;   
reg [DATA_WIDTH-1:0] recurrent2_11_3;   
reg [DATA_WIDTH-1:0] recurrent2_11_4;   
reg [DATA_WIDTH-1:0] recurrent2_11_5;   
reg [DATA_WIDTH-1:0] recurrent2_12_1;   
reg [DATA_WIDTH-1:0] recurrent2_12_2;   
reg [DATA_WIDTH-1:0] recurrent2_12_3;   
reg [DATA_WIDTH-1:0] recurrent2_12_4;   
reg [DATA_WIDTH-1:0] recurrent2_12_5;   
reg [DATA_WIDTH-1:0] recurrent2_13_1;   
reg [DATA_WIDTH-1:0] recurrent2_13_2;   
reg [DATA_WIDTH-1:0] recurrent2_13_3;   
reg [DATA_WIDTH-1:0] recurrent2_13_4;   
reg [DATA_WIDTH-1:0] recurrent2_13_5;   
reg [DATA_WIDTH-1:0] recurrent2_14_1;   
reg [DATA_WIDTH-1:0] recurrent2_14_2;   
reg [DATA_WIDTH-1:0] recurrent2_14_3;   
reg [DATA_WIDTH-1:0] recurrent2_14_4;   
reg [DATA_WIDTH-1:0] recurrent2_14_5;   
reg [DATA_WIDTH-1:0] recurrent2_15_1;   
reg [DATA_WIDTH-1:0] recurrent2_15_2;   
reg [DATA_WIDTH-1:0] recurrent2_15_3;   
reg [DATA_WIDTH-1:0] recurrent2_15_4;   
reg [DATA_WIDTH-1:0] recurrent2_15_5;   
reg [DATA_WIDTH-1:0] recurrent2_16_1;   
reg [DATA_WIDTH-1:0] recurrent2_16_2;   
reg [DATA_WIDTH-1:0] recurrent2_16_3;   
reg [DATA_WIDTH-1:0] recurrent2_16_4;   
reg [DATA_WIDTH-1:0] recurrent2_16_5;   
reg [DATA_WIDTH-1:0] recurrent2_17_1;   
reg [DATA_WIDTH-1:0] recurrent2_17_2;   
reg [DATA_WIDTH-1:0] recurrent2_17_3;
reg [DATA_WIDTH-1:0] recurrent2_17_4;   
reg [DATA_WIDTH-1:0] recurrent2_17_5;   
reg [DATA_WIDTH-1:0] recurrent2_18_1;  
reg [DATA_WIDTH-1:0] recurrent2_18_2;   
reg [DATA_WIDTH-1:0] recurrent2_18_3;   
reg [DATA_WIDTH-1:0] recurrent2_18_4;   
reg [DATA_WIDTH-1:0] recurrent2_18_5;   
reg [DATA_WIDTH-1:0] recurrent2_19_1;   
reg [DATA_WIDTH-1:0] recurrent2_19_2;   
reg [DATA_WIDTH-1:0] recurrent2_19_3;   
reg [DATA_WIDTH-1:0] recurrent2_19_4;   
reg [DATA_WIDTH-1:0] recurrent2_19_5;   
reg [DATA_WIDTH-1:0] recurrent2_20_1;
reg [DATA_WIDTH-1:0] recurrent2_20_2;
reg [DATA_WIDTH-1:0] recurrent2_20_3;
reg [DATA_WIDTH-1:0] recurrent2_20_4;
reg [DATA_WIDTH-1:0] recurrent2_20_5;



always @(posedge clk or negedge rst) begin
    if(!rst) begin 
        recurrent2_1_1 <=  14'b11111111010101;
        recurrent2_1_2 <=  14'b11111101110001;   
        recurrent2_1_3 <=  14'b00001000100001;   
        recurrent2_1_4 <=  14'b11110010011000;   
        recurrent2_1_5 <=  14'b00000010110010;   
        recurrent2_2_1 <=  14'b00000100000111;  
        recurrent2_2_2 <=  14'b00000000101001;   
        recurrent2_2_3 <=  14'b11111110111000;   
        recurrent2_2_4 <=  14'b11111010101111;   
        recurrent2_2_5 <=  14'b11111101110100;   
        recurrent2_3_1 <=  14'b00000000111111;   
        recurrent2_3_2 <=  14'b11110110000111;   
        recurrent2_3_3 <=  14'b00000110001001;   
        recurrent2_3_4 <=  14'b11111010010000;   
        recurrent2_3_5 <=  14'b11111001110001;   
        recurrent2_4_1 <=  14'b00000110011000;   
        recurrent2_4_2 <=  14'b00000000011001;   
        recurrent2_4_3 <=  14'b00000001100110;   
        recurrent2_4_4 <=  14'b11111110000111;   
        recurrent2_4_5 <=  14'b00000011011001;   
        recurrent2_5_1 <=  14'b00000011101101;   
        recurrent2_5_2 <=  14'b11111001100011;   
        recurrent2_5_3 <=  14'b00001100111001;   
        recurrent2_5_4 <=  14'b11111101110111;   
        recurrent2_5_5 <=  14'b11111111111111;   
        recurrent2_6_1 <=  14'b00000010000010;   
        recurrent2_6_2 <=  14'b11110100110110;   
        recurrent2_6_3 <=  14'b00000111010000;   
        recurrent2_6_4 <=  14'b11111000101001;   
        recurrent2_6_5 <=  14'b00000011011100;   
        recurrent2_7_1 <=  14'b11111110101101;   
        recurrent2_7_2 <=  14'b11111101100111;   
        recurrent2_7_3 <=  14'b11111110001010;   
        recurrent2_7_4 <=  14'b11110010001010;   
        recurrent2_7_5 <=  14'b11111111110011;   
        recurrent2_8_1 <=  14'b11111000000100;   
        recurrent2_8_2 <=  14'b11111111010010;   
        recurrent2_8_3 <=  14'b00000100101011;   
        recurrent2_8_4 <=  14'b11111010011101;   
        recurrent2_8_5 <=  14'b00000001010100;   
        recurrent2_9_1 <=  14'b00000001100001;   
        recurrent2_9_2 <=  14'b00000001001111;   
        recurrent2_9_3 <=  14'b00000010010111;   
        recurrent2_9_4 <=  14'b11111111110011;   
        recurrent2_9_5 <=  14'b11111011001001;   
        recurrent2_10_1 <= 14'b00000000101101;   
        recurrent2_10_2 <= 14'b11110100011111;   
        recurrent2_10_3 <= 14'b00000110001010;   
        recurrent2_10_4 <= 14'b11110111010000;   
        recurrent2_10_5 <= 14'b00000011111011;   
        recurrent2_11_1 <= 14'b00000001010101;   
        recurrent2_11_2 <= 14'b00000000100011;   
        recurrent2_11_3 <= 14'b00000110110010;   
        recurrent2_11_4 <= 14'b00000010111100;   
        recurrent2_11_5 <= 14'b00000000100100;   
        recurrent2_12_1 <= 14'b11111000011000;   
        recurrent2_12_2 <= 14'b00000110111101;   
        recurrent2_12_3 <= 14'b11111111111011;   
        recurrent2_12_4 <= 14'b00001000101101;   
        recurrent2_12_5 <= 14'b00000100001000;   
        recurrent2_13_1 <= 14'b11110000011010;   
        recurrent2_13_2 <= 14'b11111010001010;   
        recurrent2_13_3 <= 14'b11111011101010;   
        recurrent2_13_4 <= 14'b11111100111001;   
        recurrent2_13_5 <= 14'b00000111000101;   
        recurrent2_14_1 <= 14'b11111001010110;   
        recurrent2_14_2 <= 14'b00000111101010;   
        recurrent2_14_3 <= 14'b11111111100111;   
        recurrent2_14_4 <= 14'b00000011001111;   
        recurrent2_14_5 <= 14'b11110111111100;   
        recurrent2_15_1 <= 14'b11111100110000;   
        recurrent2_15_2 <= 14'b00000000001100;   
        recurrent2_15_3 <= 14'b00000101011110;   
        recurrent2_15_4 <= 14'b11111001000100;   
        recurrent2_15_5 <= 14'b00000100011100;   
        recurrent2_16_1 <= 14'b00000111001100;   
        recurrent2_16_2 <= 14'b11101110001100;   
        recurrent2_16_3 <= 14'b00001011001010;   
        recurrent2_16_4 <= 14'b11111100011101;   
        recurrent2_16_5 <= 14'b11110110011101;   
        recurrent2_17_1 <= 14'b00000001100100;   
        recurrent2_17_2 <= 14'b00000101101110;   
        recurrent2_17_3 <= 14'b00000110110010;   
        recurrent2_17_4 <= 14'b11110001010010;   
        recurrent2_17_5 <= 14'b00000111010001;   
        recurrent2_18_1 <= 14'b11111100000100;  
        recurrent2_18_2 <= 14'b11111010110001;   
        recurrent2_18_3 <= 14'b00000110100000;   
        recurrent2_18_4 <= 14'b11101111100011;   
        recurrent2_18_5 <= 14'b00000110000101;   
        recurrent2_19_1 <= 14'b00000101111101;   
        recurrent2_19_2 <= 14'b11111010100011;   
        recurrent2_19_3 <= 14'b11111110110101;   
        recurrent2_19_4 <= 14'b11111001110111;   
        recurrent2_19_5 <= 14'b11111111110111;   
        recurrent2_20_1 <= 14'b00000101100010;
        recurrent2_20_2 <= 14'b11111111001000;
        recurrent2_20_3 <= 14'b00001001001101;
        recurrent2_20_4 <= 14'b11111010101000;
        recurrent2_20_5 <= 14'b11111110110101;
    end
    else begin
        recurrent2_1_1 <=  14'b11111111010101;
        recurrent2_1_2 <=  14'b11111101110001;   
        recurrent2_1_3 <=  14'b00001000100001;   
        recurrent2_1_4 <=  14'b11110010011000;   
        recurrent2_1_5 <=  14'b00000010110010;   
        recurrent2_2_1 <=  14'b00000100000111;  
        recurrent2_2_2 <=  14'b00000000101001;   
        recurrent2_2_3 <=  14'b11111110111000;   
        recurrent2_2_4 <=  14'b11111010101111;   
        recurrent2_2_5 <=  14'b11111101110100;   
        recurrent2_3_1 <=  14'b00000000111111;   
        recurrent2_3_2 <=  14'b11110110000111;   
        recurrent2_3_3 <=  14'b00000110001001;   
        recurrent2_3_4 <=  14'b11111010010000;   
        recurrent2_3_5 <=  14'b11111001110001;   
        recurrent2_4_1 <=  14'b00000110011000;   
        recurrent2_4_2 <=  14'b00000000011001;   
        recurrent2_4_3 <=  14'b00000001100110;   
        recurrent2_4_4 <=  14'b11111110000111;   
        recurrent2_4_5 <=  14'b00000011011001;   
        recurrent2_5_1 <=  14'b00000011101101;   
        recurrent2_5_2 <=  14'b11111001100011;   
        recurrent2_5_3 <=  14'b00001100111001;   
        recurrent2_5_4 <=  14'b11111101110111;   
        recurrent2_5_5 <=  14'b11111111111111;   
        recurrent2_6_1 <=  14'b00000010000010;   
        recurrent2_6_2 <=  14'b11110100110110;   
        recurrent2_6_3 <=  14'b00000111010000;   
        recurrent2_6_4 <=  14'b11111000101001;   
        recurrent2_6_5 <=  14'b00000011011100;   
        recurrent2_7_1 <=  14'b11111110101101;   
        recurrent2_7_2 <=  14'b11111101100111;   
        recurrent2_7_3 <=  14'b11111110001010;   
        recurrent2_7_4 <=  14'b11110010001010;   
        recurrent2_7_5 <=  14'b11111111110011;   
        recurrent2_8_1 <=  14'b11111000000100;   
        recurrent2_8_2 <=  14'b11111111010010;   
        recurrent2_8_3 <=  14'b00000100101011;   
        recurrent2_8_4 <=  14'b11111010011101;   
        recurrent2_8_5 <=  14'b00000001010100;   
        recurrent2_9_1 <=  14'b00000001100001;   
        recurrent2_9_2 <=  14'b00000001001111;   
        recurrent2_9_3 <=  14'b00000010010111;   
        recurrent2_9_4 <=  14'b11111111110011;   
        recurrent2_9_5 <=  14'b11111011001001;   
        recurrent2_10_1 <= 14'b00000000101101;   
        recurrent2_10_2 <= 14'b11110100011111;   
        recurrent2_10_3 <= 14'b00000110001010;   
        recurrent2_10_4 <= 14'b11110111010000;   
        recurrent2_10_5 <= 14'b00000011111011;   
        recurrent2_11_1 <= 14'b00000001010101;   
        recurrent2_11_2 <= 14'b00000000100011;   
        recurrent2_11_3 <= 14'b00000110110010;   
        recurrent2_11_4 <= 14'b00000010111100;   
        recurrent2_11_5 <= 14'b00000000100100;   
        recurrent2_12_1 <= 14'b11111000011000;   
        recurrent2_12_2 <= 14'b00000110111101;   
        recurrent2_12_3 <= 14'b11111111111011;   
        recurrent2_12_4 <= 14'b00001000101101;   
        recurrent2_12_5 <= 14'b00000100001000;   
        recurrent2_13_1 <= 14'b11110000011010;   
        recurrent2_13_2 <= 14'b11111010001010;   
        recurrent2_13_3 <= 14'b11111011101010;   
        recurrent2_13_4 <= 14'b11111100111001;   
        recurrent2_13_5 <= 14'b00000111000101;   
        recurrent2_14_1 <= 14'b11111001010110;   
        recurrent2_14_2 <= 14'b00000111101010;   
        recurrent2_14_3 <= 14'b11111111100111;   
        recurrent2_14_4 <= 14'b00000011001111;   
        recurrent2_14_5 <= 14'b11110111111100;   
        recurrent2_15_1 <= 14'b11111100110000;   
        recurrent2_15_2 <= 14'b00000000001100;   
        recurrent2_15_3 <= 14'b00000101011110;   
        recurrent2_15_4 <= 14'b11111001000100;   
        recurrent2_15_5 <= 14'b00000100011100;   
        recurrent2_16_1 <= 14'b00000111001100;   
        recurrent2_16_2 <= 14'b11101110001100;   
        recurrent2_16_3 <= 14'b00001011001010;   
        recurrent2_16_4 <= 14'b11111100011101;   
        recurrent2_16_5 <= 14'b11110110011101;   
        recurrent2_17_1 <= 14'b00000001100100;   
        recurrent2_17_2 <= 14'b00000101101110;   
        recurrent2_17_3 <= 14'b00000110110010;   
        recurrent2_17_4 <= 14'b11110001010010;   
        recurrent2_17_5 <= 14'b00000111010001;   
        recurrent2_18_1 <= 14'b11111100000100;  
        recurrent2_18_2 <= 14'b11111010110001;   
        recurrent2_18_3 <= 14'b00000110100000;   
        recurrent2_18_4 <= 14'b11101111100011;   
        recurrent2_18_5 <= 14'b00000110000101;   
        recurrent2_19_1 <= 14'b00000101111101;   
        recurrent2_19_2 <= 14'b11111010100011;   
        recurrent2_19_3 <= 14'b11111110110101;   
        recurrent2_19_4 <= 14'b11111001110111;   
        recurrent2_19_5 <= 14'b11111111110111;   
        recurrent2_20_1 <= 14'b00000101100010;
        recurrent2_20_2 <= 14'b11111111001000;
        recurrent2_20_3 <= 14'b00001001001101;
        recurrent2_20_4 <= 14'b11111010101000;
        recurrent2_20_5 <= 14'b11111110110101;        
    end
end

localparam OUTPUT_WIDTH_NEW = 28;

wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg1_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg2_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg3_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg4_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg5_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg6_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg7_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg8_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg9_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg10_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg11_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg12_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg13_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg14_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg15_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg16_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg17_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg18_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg19_5; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_1; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_2; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_3; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_4; 
wire [OUTPUT_WIDTH_NEW-1:0] out_reg20_5; 


WallaceTreeMul MULT11( recurrent2_1_1, h_1, out_reg1_1);
WallaceTreeMul MULT12( recurrent2_1_2, h_2, out_reg1_2);
WallaceTreeMul MULT13( recurrent2_1_3, h_3, out_reg1_3);
WallaceTreeMul MULT14( recurrent2_1_4, h_4, out_reg1_4);
WallaceTreeMul MULT15( recurrent2_1_5, h_5, out_reg1_5);
WallaceTreeMul MULT21( recurrent2_2_1, h_1, out_reg2_1);
WallaceTreeMul MULT22( recurrent2_2_2, h_2, out_reg2_2);
WallaceTreeMul MULT23( recurrent2_2_3, h_3, out_reg2_3);
WallaceTreeMul MULT24( recurrent2_2_4, h_4, out_reg2_4);
WallaceTreeMul MULT25( recurrent2_2_5, h_5, out_reg2_5);
WallaceTreeMul MULT31( recurrent2_3_1, h_1, out_reg3_1);
WallaceTreeMul MULT32( recurrent2_3_2, h_2, out_reg3_2);
WallaceTreeMul MULT33( recurrent2_3_3, h_3, out_reg3_3);
WallaceTreeMul MULT34( recurrent2_3_4, h_4, out_reg3_4);
WallaceTreeMul MULT35( recurrent2_3_5, h_5, out_reg3_5);
WallaceTreeMul MULT41( recurrent2_4_1, h_1, out_reg4_1);
WallaceTreeMul MULT42( recurrent2_4_2, h_2, out_reg4_2);
WallaceTreeMul MULT43( recurrent2_4_3, h_3, out_reg4_3);
WallaceTreeMul MULT44( recurrent2_4_4, h_4, out_reg4_4);
WallaceTreeMul MULT45( recurrent2_4_5, h_5, out_reg4_5);
WallaceTreeMul MULT51( recurrent2_5_1, h_1, out_reg5_1);
WallaceTreeMul MULT52( recurrent2_5_2, h_2, out_reg5_2);
WallaceTreeMul MULT53( recurrent2_5_3, h_3, out_reg5_3);
WallaceTreeMul MULT54( recurrent2_5_4, h_4, out_reg5_4);
WallaceTreeMul MULT55( recurrent2_5_5, h_5, out_reg5_5);
WallaceTreeMul MULT61( recurrent2_6_1, h_1, out_reg6_1);
WallaceTreeMul MULT62( recurrent2_6_2, h_2, out_reg6_2);
WallaceTreeMul MULT63( recurrent2_6_3, h_3, out_reg6_3);
WallaceTreeMul MULT64( recurrent2_6_4, h_4, out_reg6_4);
WallaceTreeMul MULT65( recurrent2_6_5, h_5, out_reg6_5);
WallaceTreeMul MULT71( recurrent2_7_1, h_1, out_reg7_1);
WallaceTreeMul MULT72( recurrent2_7_2, h_2, out_reg7_2);
WallaceTreeMul MULT73( recurrent2_7_3, h_3, out_reg7_3);
WallaceTreeMul MULT74( recurrent2_7_4, h_4, out_reg7_4);
WallaceTreeMul MULT75( recurrent2_7_5, h_5, out_reg7_5);
WallaceTreeMul MULT81( recurrent2_8_1, h_1, out_reg8_1);
WallaceTreeMul MULT82( recurrent2_8_2, h_2, out_reg8_2);
WallaceTreeMul MULT83( recurrent2_8_3, h_3, out_reg8_3);
WallaceTreeMul MULT84( recurrent2_8_4, h_4, out_reg8_4);
WallaceTreeMul MULT85( recurrent2_8_5, h_5, out_reg8_5);
WallaceTreeMul MULT91( recurrent2_9_1, h_1, out_reg9_1);
WallaceTreeMul MULT92( recurrent2_9_2, h_2, out_reg9_2);
WallaceTreeMul MULT93( recurrent2_9_3, h_3, out_reg9_3);
WallaceTreeMul MULT94( recurrent2_9_4, h_4, out_reg9_4);
WallaceTreeMul MULT95( recurrent2_9_5, h_5, out_reg9_5);
WallaceTreeMul MULT101(recurrent2_10_1, h_1, out_reg10_1);
WallaceTreeMul MULT102(recurrent2_10_2, h_2, out_reg10_2);
WallaceTreeMul MULT103(recurrent2_10_3, h_3, out_reg10_3);
WallaceTreeMul MULT104(recurrent2_10_4, h_4, out_reg10_4);
WallaceTreeMul MULT105(recurrent2_10_5, h_5, out_reg10_5);
WallaceTreeMul MULT111(recurrent2_11_1, h_1, out_reg11_1);
WallaceTreeMul MULT112(recurrent2_11_2, h_2, out_reg11_2);
WallaceTreeMul MULT113(recurrent2_11_3, h_3, out_reg11_3);
WallaceTreeMul MULT114(recurrent2_11_4, h_4, out_reg11_4);
WallaceTreeMul MULT115(recurrent2_11_5, h_5, out_reg11_5);
WallaceTreeMul MULT121(recurrent2_12_1, h_1, out_reg12_1);
WallaceTreeMul MULT122(recurrent2_12_2, h_2, out_reg12_2);
WallaceTreeMul MULT123(recurrent2_12_3, h_3, out_reg12_3);
WallaceTreeMul MULT124(recurrent2_12_4, h_4, out_reg12_4);
WallaceTreeMul MULT125(recurrent2_12_5, h_5, out_reg12_5);
WallaceTreeMul MULT131(recurrent2_13_1, h_1, out_reg13_1);
WallaceTreeMul MULT132(recurrent2_13_2, h_2, out_reg13_2);
WallaceTreeMul MULT133(recurrent2_13_3, h_3, out_reg13_3);
WallaceTreeMul MULT134(recurrent2_13_4, h_4, out_reg13_4);
WallaceTreeMul MULT135(recurrent2_13_5, h_5, out_reg13_5);
WallaceTreeMul MULT141(recurrent2_14_1, h_1, out_reg14_1);
WallaceTreeMul MULT142(recurrent2_14_2, h_2, out_reg14_2);
WallaceTreeMul MULT143(recurrent2_14_3, h_3, out_reg14_3);
WallaceTreeMul MULT144(recurrent2_14_4, h_4, out_reg14_4);
WallaceTreeMul MULT145(recurrent2_14_5, h_5, out_reg14_5);
WallaceTreeMul MULT151(recurrent2_15_1, h_1, out_reg15_1);
WallaceTreeMul MULT152(recurrent2_15_2, h_2, out_reg15_2);
WallaceTreeMul MULT153(recurrent2_15_3, h_3, out_reg15_3);
WallaceTreeMul MULT154(recurrent2_15_4, h_4, out_reg15_4);
WallaceTreeMul MULT155(recurrent2_15_5, h_5, out_reg15_5);
WallaceTreeMul MULT161(recurrent2_16_1, h_1, out_reg16_1);
WallaceTreeMul MULT162(recurrent2_16_2, h_2, out_reg16_2);
WallaceTreeMul MULT163(recurrent2_16_3, h_3, out_reg16_3);
WallaceTreeMul MULT164(recurrent2_16_4, h_4, out_reg16_4);
WallaceTreeMul MULT165(recurrent2_16_5, h_5, out_reg16_5);
WallaceTreeMul MULT171(recurrent2_17_1, h_1, out_reg17_1);
WallaceTreeMul MULT172(recurrent2_17_2, h_2, out_reg17_2);
WallaceTreeMul MULT173(recurrent2_17_3, h_3, out_reg17_3);
WallaceTreeMul MULT174(recurrent2_17_4, h_4, out_reg17_4);
WallaceTreeMul MULT175(recurrent2_17_5, h_5, out_reg17_5);
WallaceTreeMul MULT181(recurrent2_18_1, h_1, out_reg18_1);
WallaceTreeMul MULT182(recurrent2_18_2, h_2, out_reg18_2);
WallaceTreeMul MULT183(recurrent2_18_3, h_3, out_reg18_3);
WallaceTreeMul MULT184(recurrent2_18_4, h_4, out_reg18_4);
WallaceTreeMul MULT185(recurrent2_18_5, h_5, out_reg18_5);
WallaceTreeMul MULT191(recurrent2_19_1, h_1, out_reg19_1);
WallaceTreeMul MULT192(recurrent2_19_2, h_2, out_reg19_2);
WallaceTreeMul MULT193(recurrent2_19_3, h_3, out_reg19_3);
WallaceTreeMul MULT194(recurrent2_19_4, h_4, out_reg19_4);
WallaceTreeMul MULT195(recurrent2_19_5, h_5, out_reg19_5);
WallaceTreeMul MULT201(recurrent2_20_1, h_1, out_reg20_1);
WallaceTreeMul MULT202(recurrent2_20_2, h_2, out_reg20_2);
WallaceTreeMul MULT203(recurrent2_20_3, h_3, out_reg20_3);
WallaceTreeMul MULT204(recurrent2_20_4, h_4, out_reg20_4);
WallaceTreeMul MULT205(recurrent2_20_5, h_5, out_reg20_5);

wire [OUTPUT_WIDTH-1:0] Output_1_reg;
wire [OUTPUT_WIDTH-1:0] Output_2_reg;
wire [OUTPUT_WIDTH-1:0] Output_3_reg;
wire [OUTPUT_WIDTH-1:0] Output_4_reg;
wire [OUTPUT_WIDTH-1:0] Output_5_reg;
wire [OUTPUT_WIDTH-1:0] Output_6_reg;
wire [OUTPUT_WIDTH-1:0] Output_7_reg;
wire [OUTPUT_WIDTH-1:0] Output_8_reg;
wire [OUTPUT_WIDTH-1:0] Output_9_reg;
wire [OUTPUT_WIDTH-1:0] Output_10_reg;
wire [OUTPUT_WIDTH-1:0] Output_11_reg;
wire [OUTPUT_WIDTH-1:0] Output_12_reg;
wire [OUTPUT_WIDTH-1:0] Output_13_reg;
wire [OUTPUT_WIDTH-1:0] Output_14_reg;
wire [OUTPUT_WIDTH-1:0] Output_15_reg;
wire [OUTPUT_WIDTH-1:0] Output_16_reg;
wire [OUTPUT_WIDTH-1:0] Output_17_reg;
wire [OUTPUT_WIDTH-1:0] Output_18_reg;
wire [OUTPUT_WIDTH-1:0] Output_19_reg;
wire [OUTPUT_WIDTH-1:0] Output_20_reg;


Kogge_Stone_5IN ADD_1(out_reg1_1, out_reg1_2, out_reg1_3, out_reg1_4, out_reg1_5, Output_1_reg);
Kogge_Stone_5IN ADD_2(out_reg2_1, out_reg2_2, out_reg2_3, out_reg2_4, out_reg2_5, Output_2_reg);
Kogge_Stone_5IN ADD_3(out_reg3_1, out_reg3_2, out_reg3_3, out_reg3_4, out_reg3_5, Output_3_reg);
Kogge_Stone_5IN ADD_4(out_reg4_1, out_reg4_2, out_reg4_3, out_reg4_4, out_reg4_5, Output_4_reg);
Kogge_Stone_5IN ADD_5(out_reg5_1, out_reg5_2, out_reg5_3, out_reg5_4, out_reg5_5, Output_5_reg);
Kogge_Stone_5IN ADD_6(out_reg6_1, out_reg6_2, out_reg6_3, out_reg6_4, out_reg6_5, Output_6_reg);
Kogge_Stone_5IN ADD_7(out_reg7_1, out_reg7_2, out_reg7_3, out_reg7_4, out_reg7_5, Output_7_reg);
Kogge_Stone_5IN ADD_8(out_reg8_1, out_reg8_2, out_reg8_3, out_reg8_4, out_reg8_5, Output_8_reg);
Kogge_Stone_5IN ADD_9(out_reg9_1, out_reg9_2, out_reg9_3, out_reg9_4, out_reg9_5, Output_9_reg);
Kogge_Stone_5IN ADD_10(out_reg10_1, out_reg10_2, out_reg10_3, out_reg10_4, out_reg10_5, Output_10_reg);
Kogge_Stone_5IN ADD_11(out_reg11_1, out_reg11_2, out_reg11_3, out_reg11_4, out_reg11_5, Output_11_reg);
Kogge_Stone_5IN ADD_12(out_reg12_1, out_reg12_2, out_reg12_3, out_reg12_4, out_reg12_5, Output_12_reg);
Kogge_Stone_5IN ADD_13(out_reg13_1, out_reg13_2, out_reg13_3, out_reg13_4, out_reg13_5, Output_13_reg);
Kogge_Stone_5IN ADD_14(out_reg14_1, out_reg14_2, out_reg14_3, out_reg14_4, out_reg14_5, Output_14_reg);
Kogge_Stone_5IN ADD_15(out_reg15_1, out_reg15_2, out_reg15_3, out_reg15_4, out_reg15_5, Output_15_reg);
Kogge_Stone_5IN ADD_16(out_reg16_1, out_reg16_2, out_reg16_3, out_reg16_4, out_reg16_5, Output_16_reg);
Kogge_Stone_5IN ADD_17(out_reg17_1, out_reg17_2, out_reg17_3, out_reg17_4, out_reg17_5, Output_17_reg);
Kogge_Stone_5IN ADD_18(out_reg18_1, out_reg18_2, out_reg18_3, out_reg18_4, out_reg18_5, Output_18_reg);
Kogge_Stone_5IN ADD_19(out_reg19_1, out_reg19_2, out_reg19_3, out_reg19_4, out_reg19_5, Output_19_reg);
Kogge_Stone_5IN ADD_20(out_reg20_1, out_reg20_2, out_reg20_3, out_reg20_4, out_reg20_5, Output_20_reg);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 'b0;
        Output_2 <= 'b0;
        Output_3 <= 'b0;
        Output_4 <= 'b0;
        Output_5 <= 'b0;
        Output_6 <= 'b0;
        Output_7 <= 'b0;
        Output_8 <= 'b0;
        Output_9 <= 'b0;
        Output_10 <= 'b0;
        Output_11 <= 'b0;
        Output_12 <= 'b0;
        Output_13 <= 'b0;
        Output_14 <= 'b0;
        Output_15 <= 'b0;
        Output_16 <= 'b0;
        Output_17 <= 'b0;
        Output_18 <= 'b0;
        Output_19 <= 'b0;
        Output_20 <= 'b0;
    end
    else begin
        Output_1 <= Output_1_reg;
        Output_2 <= Output_2_reg;
        Output_3 <= Output_3_reg;
        Output_4 <= Output_4_reg;
        Output_5 <= Output_5_reg;
        Output_6 <= Output_6_reg;
        Output_7 <= Output_7_reg;
        Output_8 <= Output_8_reg;
        Output_9 <= Output_9_reg;
        Output_10 <= Output_10_reg;
        Output_11 <= Output_11_reg;
        Output_12 <= Output_12_reg;
        Output_13 <= Output_13_reg;
        Output_14 <= Output_14_reg;
        Output_15 <= Output_15_reg;
        Output_16 <= Output_16_reg;
        Output_17 <= Output_17_reg;
        Output_18 <= Output_18_reg;
        Output_19 <= Output_19_reg;
        Output_20 <= Output_20_reg;
    end
end
    
endmodule




module Bias_2_ADD #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] Kernel2_1,
    input wire [DATA_WIDTH-1:0] Kernel2_2,
    input wire [DATA_WIDTH-1:0] Kernel2_3,
    input wire [DATA_WIDTH-1:0] Kernel2_4,
    input wire [DATA_WIDTH-1:0] Kernel2_5,
    input wire [DATA_WIDTH-1:0] Kernel2_6,
    input wire [DATA_WIDTH-1:0] Kernel2_7,
    input wire [DATA_WIDTH-1:0] Kernel2_8,
    input wire [DATA_WIDTH-1:0] Kernel2_9,
    input wire [DATA_WIDTH-1:0] Kernel2_10,
    input wire [DATA_WIDTH-1:0] Kernel2_11,
    input wire [DATA_WIDTH-1:0] Kernel2_12,
    input wire [DATA_WIDTH-1:0] Kernel2_13,
    input wire [DATA_WIDTH-1:0] Kernel2_14,
    input wire [DATA_WIDTH-1:0] Kernel2_15,
    input wire [DATA_WIDTH-1:0] Kernel2_16,
    input wire [DATA_WIDTH-1:0] Kernel2_17,
    input wire [DATA_WIDTH-1:0] Kernel2_18,
    input wire [DATA_WIDTH-1:0] Kernel2_19,
    input wire [DATA_WIDTH-1:0] Kernel2_20,

    input wire [DATA_WIDTH-1:0] Recurrent2_1,
    input wire [DATA_WIDTH-1:0] Recurrent2_2,
    input wire [DATA_WIDTH-1:0] Recurrent2_3,
    input wire [DATA_WIDTH-1:0] Recurrent2_4,
    input wire [DATA_WIDTH-1:0] Recurrent2_5,
    input wire [DATA_WIDTH-1:0] Recurrent2_6,
    input wire [DATA_WIDTH-1:0] Recurrent2_7,
    input wire [DATA_WIDTH-1:0] Recurrent2_8,
    input wire [DATA_WIDTH-1:0] Recurrent2_9,
    input wire [DATA_WIDTH-1:0] Recurrent2_10,
    input wire [DATA_WIDTH-1:0] Recurrent2_11,
    input wire [DATA_WIDTH-1:0] Recurrent2_12,
    input wire [DATA_WIDTH-1:0] Recurrent2_13,
    input wire [DATA_WIDTH-1:0] Recurrent2_14,
    input wire [DATA_WIDTH-1:0] Recurrent2_15,
    input wire [DATA_WIDTH-1:0] Recurrent2_16,
    input wire [DATA_WIDTH-1:0] Recurrent2_17,
    input wire [DATA_WIDTH-1:0] Recurrent2_18,
    input wire [DATA_WIDTH-1:0] Recurrent2_19,
    input wire [DATA_WIDTH-1:0] Recurrent2_20,


    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4,
    output reg [OUTPUT_WIDTH-1:0] Output_5,
    output reg [OUTPUT_WIDTH-1:0] Output_6,
    output reg [OUTPUT_WIDTH-1:0] Output_7,
    output reg [OUTPUT_WIDTH-1:0] Output_8,
    output reg [OUTPUT_WIDTH-1:0] Output_9,
    output reg [OUTPUT_WIDTH-1:0] Output_10,
    output reg [OUTPUT_WIDTH-1:0] Output_11,
    output reg [OUTPUT_WIDTH-1:0] Output_12,
    output reg [OUTPUT_WIDTH-1:0] Output_13,
    output reg [OUTPUT_WIDTH-1:0] Output_14,
    output reg [OUTPUT_WIDTH-1:0] Output_15,
    output reg [OUTPUT_WIDTH-1:0] Output_16,
    output reg [OUTPUT_WIDTH-1:0] Output_17,
    output reg [OUTPUT_WIDTH-1:0] Output_18,
    output reg [OUTPUT_WIDTH-1:0] Output_19,
    output reg [OUTPUT_WIDTH-1:0] Output_20
);


reg [DATA_WIDTH-1:0] bias2_1;
reg [DATA_WIDTH-1:0] bias2_2;
reg [DATA_WIDTH-1:0] bias2_3;
reg [DATA_WIDTH-1:0] bias2_4;
reg [DATA_WIDTH-1:0] bias2_5;
reg [DATA_WIDTH-1:0] bias2_6;
reg [DATA_WIDTH-1:0] bias2_7;
reg [DATA_WIDTH-1:0] bias2_8;
reg [DATA_WIDTH-1:0] bias2_9;
reg [DATA_WIDTH-1:0] bias2_10;
reg [DATA_WIDTH-1:0] bias2_11;
reg [DATA_WIDTH-1:0] bias2_12;
reg [DATA_WIDTH-1:0] bias2_13;
reg [DATA_WIDTH-1:0] bias2_14;
reg [DATA_WIDTH-1:0] bias2_15;
reg [DATA_WIDTH-1:0] bias2_16;
reg [DATA_WIDTH-1:0] bias2_17;
reg [DATA_WIDTH-1:0] bias2_18;
reg [DATA_WIDTH-1:0] bias2_19;
reg [DATA_WIDTH-1:0] bias2_20;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        bias2_1  <= 14'b00001000010001;   
        bias2_2  <= 14'b00000011100101;   
        bias2_3  <= 14'b00001010010001;   
        bias2_4  <= 14'b00000101111000;   
        bias2_5  <= 14'b00000010101011;   
        bias2_6  <= 14'b00010010000110;   
        bias2_7  <= 14'b00010100101000;   
        bias2_8  <= 14'b00010011111101;   
        bias2_9  <= 14'b00010101011011;   
        bias2_10 <= 14'b00010011110101;   
        bias2_11 <= 14'b11111110101110;   
        bias2_12 <= 14'b11111111001001;   
        bias2_13 <= 14'b00000000111001;   
        bias2_14 <= 14'b11111110110001;   
        bias2_15 <= 14'b00000000000010;   
        bias2_16 <= 14'b00001110000101;   
        bias2_17 <= 14'b00001001001011;   
        bias2_18 <= 14'b00001101000101;   
        bias2_19 <= 14'b00001000011010;   
        bias2_20 <= 14'b00001000100110;    
    end
    else begin
        bias2_1  <= 14'b00001000010001;
        bias2_2  <= 14'b00000011100101;   
        bias2_3  <= 14'b00001010010001;   
        bias2_4  <= 14'b00000101111000;   
        bias2_5  <= 14'b00000010101011;  
        bias2_6  <= 14'b00010010000110;
        bias2_7  <= 14'b00010100101000;   
        bias2_8  <= 14'b00010011111101;   
        bias2_9  <= 14'b00010101011011;   
        bias2_10 <= 14'b00010011110101;   
        bias2_11 <= 14'b11111110101110;   
        bias2_12 <= 14'b11111111001001;   
        bias2_13 <= 14'b00000000111001;   
        bias2_14 <= 14'b11111110110001;   
        bias2_15 <= 14'b00000000000010;   
        bias2_16 <= 14'b00001110000101;   
        bias2_17 <= 14'b00001001001011;   
        bias2_18 <= 14'b00001101000101;   
        bias2_19 <= 14'b00001000011010;   
        bias2_20 <= 14'b00001000100110;
    end
end


wire [OUTPUT_WIDTH-1:0] out_reg1;
wire [OUTPUT_WIDTH-1:0] out_reg2;
wire [OUTPUT_WIDTH-1:0] out_reg3;
wire [OUTPUT_WIDTH-1:0] out_reg4;
wire [OUTPUT_WIDTH-1:0] out_reg5;
wire [OUTPUT_WIDTH-1:0] out_reg6;
wire [OUTPUT_WIDTH-1:0] out_reg7;
wire [OUTPUT_WIDTH-1:0] out_reg8;
wire [OUTPUT_WIDTH-1:0] out_reg9;
wire [OUTPUT_WIDTH-1:0] out_reg10;
wire [OUTPUT_WIDTH-1:0] out_reg11;
wire [OUTPUT_WIDTH-1:0] out_reg12;
wire [OUTPUT_WIDTH-1:0] out_reg13;
wire [OUTPUT_WIDTH-1:0] out_reg14;
wire [OUTPUT_WIDTH-1:0] out_reg15;
wire [OUTPUT_WIDTH-1:0] out_reg16;
wire [OUTPUT_WIDTH-1:0] out_reg17;
wire [OUTPUT_WIDTH-1:0] out_reg18;
wire [OUTPUT_WIDTH-1:0] out_reg19;
wire [OUTPUT_WIDTH-1:0] out_reg20;


Kogge_Stone_3IN ADD1( Kernel2_1,  Recurrent2_1,  bias2_1,  out_reg1);
Kogge_Stone_3IN ADD2( Kernel2_2,  Recurrent2_2,  bias2_2,  out_reg2);
Kogge_Stone_3IN ADD3( Kernel2_3,  Recurrent2_3,  bias2_3,  out_reg3);
Kogge_Stone_3IN ADD4( Kernel2_4,  Recurrent2_4,  bias2_4,  out_reg4);
Kogge_Stone_3IN ADD5( Kernel2_5,  Recurrent2_5,  bias2_5,  out_reg5);
Kogge_Stone_3IN ADD6( Kernel2_6,  Recurrent2_6,  bias2_6,  out_reg6);
Kogge_Stone_3IN ADD7( Kernel2_7,  Recurrent2_7,  bias2_7,  out_reg7);
Kogge_Stone_3IN ADD8( Kernel2_8,  Recurrent2_8,  bias2_8,  out_reg8);
Kogge_Stone_3IN ADD9( Kernel2_9,  Recurrent2_9,  bias2_9,  out_reg9);
Kogge_Stone_3IN ADD10(Kernel2_10, Recurrent2_10, bias2_10, out_reg10);
Kogge_Stone_3IN ADD11(Kernel2_11, Recurrent2_11, bias2_11, out_reg11);
Kogge_Stone_3IN ADD12(Kernel2_12, Recurrent2_12, bias2_12, out_reg12);
Kogge_Stone_3IN ADD13(Kernel2_13, Recurrent2_13, bias2_13, out_reg13);
Kogge_Stone_3IN ADD14(Kernel2_14, Recurrent2_14, bias2_14, out_reg14);
Kogge_Stone_3IN ADD15(Kernel2_15, Recurrent2_15, bias2_15, out_reg15);
Kogge_Stone_3IN ADD16(Kernel2_16, Recurrent2_16, bias2_16, out_reg16);
Kogge_Stone_3IN ADD17(Kernel2_17, Recurrent2_17, bias2_17, out_reg17);
Kogge_Stone_3IN ADD18(Kernel2_18, Recurrent2_18, bias2_18, out_reg18);
Kogge_Stone_3IN ADD19(Kernel2_19, Recurrent2_19, bias2_19, out_reg19);
Kogge_Stone_3IN ADD20(Kernel2_20, Recurrent2_20, bias2_20, out_reg20);


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 'b0;
        Output_2 <= 'b0;
        Output_3 <= 'b0;
        Output_4 <= 'b0;
        Output_5 <= 'b0;
        Output_6 <= 'b0;
        Output_7 <= 'b0;
        Output_8 <= 'b0;
        Output_9 <= 'b0;
        Output_10 <= 'b0;
        Output_11 <= 'b0;
        Output_12 <= 'b0;
        Output_13 <= 'b0;
        Output_14 <= 'b0;
        Output_15 <= 'b0;
        Output_16 <= 'b0;
        Output_17 <= 'b0;
        Output_18 <= 'b0;
        Output_19 <= 'b0;
        Output_20 <= 'b0;
    end
    else begin
        Output_1 <= out_reg1;
        Output_2 <= out_reg2;
        Output_3 <= out_reg3;
        Output_4 <= out_reg4;
        Output_5 <= out_reg5;
        Output_6 <= out_reg6;
        Output_7 <= out_reg7;
        Output_8 <= out_reg8;
        Output_9 <= out_reg9;
        Output_10 <= out_reg10;
        Output_11 <= out_reg11;
        Output_12 <= out_reg12;
        Output_13 <= out_reg13;
        Output_14 <= out_reg14;
        Output_15 <= out_reg15;
        Output_16 <= out_reg16;
        Output_17 <= out_reg17;
        Output_18 <= out_reg18;
        Output_19 <= out_reg19;
        Output_20 <= out_reg20;
    end
end


endmodule