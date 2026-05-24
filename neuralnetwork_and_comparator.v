
module Kernel_Out_MULT #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output reg [OUTPUT_WIDTH-1:0] Output_1,
    output reg [OUTPUT_WIDTH-1:0] Output_2,
    output reg [OUTPUT_WIDTH-1:0] Output_3,
    output reg [OUTPUT_WIDTH-1:0] Output_4
);

reg [DATA_WIDTH-1:0] kernel_out_1_1;
reg [DATA_WIDTH-1:0] kernel_out_1_2;
reg [DATA_WIDTH-1:0] kernel_out_1_3;
reg [DATA_WIDTH-1:0] kernel_out_1_4;

reg [DATA_WIDTH-1:0] kernel_out_2_1;
reg [DATA_WIDTH-1:0] kernel_out_2_2;
reg [DATA_WIDTH-1:0] kernel_out_2_3;
reg [DATA_WIDTH-1:0] kernel_out_2_4;

reg [DATA_WIDTH-1:0] kernel_out_3_1;
reg [DATA_WIDTH-1:0] kernel_out_3_2;
reg [DATA_WIDTH-1:0] kernel_out_3_3;
reg [DATA_WIDTH-1:0] kernel_out_3_4;

reg [DATA_WIDTH-1:0] kernel_out_4_1;
reg [DATA_WIDTH-1:0] kernel_out_4_2;
reg [DATA_WIDTH-1:0] kernel_out_4_3;
reg [DATA_WIDTH-1:0] kernel_out_4_4;

reg [DATA_WIDTH-1:0] kernel_out_5_1;
reg [DATA_WIDTH-1:0] kernel_out_5_2;
reg [DATA_WIDTH-1:0] kernel_out_5_3;
reg [DATA_WIDTH-1:0] kernel_out_5_4;
    


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        kernel_out_1_1 <= 14'b11110101101110;
        kernel_out_1_2 <= 14'b00010001111111;
        kernel_out_1_3 <= 14'b11011111000111;
        kernel_out_1_4 <= 14'b00001111101110;

        kernel_out_2_1 <= 14'b00101100100110;
        kernel_out_2_2 <= 14'b11101111100011;
        kernel_out_2_3 <= 14'b11100001001110;
        kernel_out_2_4 <= 14'b11110101000101;

        kernel_out_3_1 <= 14'b00000100101001;
        kernel_out_3_2 <= 14'b11011111110001;
        kernel_out_3_3 <= 14'b00001001011011;
        kernel_out_3_4 <= 14'b11110110101100;

        kernel_out_4_1 <= 14'b11111100011001;
        kernel_out_4_2 <= 14'b11101111101100;
        kernel_out_4_3 <= 14'b00000001111111;
        kernel_out_4_4 <= 14'b00101111101001;

        kernel_out_5_1 <= 14'b00001111010001;
        kernel_out_5_2 <= 14'b00000111110001;
        kernel_out_5_3 <= 14'b00000011000110;
        kernel_out_5_4 <= 14'b11011100110110;
    end
    else begin
        kernel_out_1_1 <= 14'b11110101101110;
        kernel_out_1_2 <= 14'b00010001111111;
        kernel_out_1_3 <= 14'b11011111000111;
        kernel_out_1_4 <= 14'b00001111101110;

        kernel_out_2_1 <= 14'b00101100100110;
        kernel_out_2_2 <= 14'b11101111100011;
        kernel_out_2_3 <= 14'b11100001001110;
        kernel_out_2_4 <= 14'b11110101000101;

        kernel_out_3_1 <= 14'b00000100101001;
        kernel_out_3_2 <= 14'b11011111110001;
        kernel_out_3_3 <= 14'b00001001011011;
        kernel_out_3_4 <= 14'b11110110101100;

        kernel_out_4_1 <= 14'b11111100011001;
        kernel_out_4_2 <= 14'b11101111101100;
        kernel_out_4_3 <= 14'b00000001111111;
        kernel_out_4_4 <= 14'b00101111101001;

        kernel_out_5_1 <= 14'b00001111010001;
        kernel_out_5_2 <= 14'b00000111110001;
        kernel_out_5_3 <= 14'b00000011000110;
        kernel_out_5_4 <= 14'b11011100110110;
    end
end

localparam OUTPUT_WIDTH_NEW = 28;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_1_c1_r1;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_2_c1_r2;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_3_c1_r3;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_4_c1_r4;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_5_c1_r5;

wire [OUTPUT_WIDTH_NEW-1:0] h2ko_1_c2_r1;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_2_c2_r2;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_3_c2_r3;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_4_c2_r4;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_5_c2_r5;

wire [OUTPUT_WIDTH_NEW-1:0] h2ko_1_c3_r1;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_2_c3_r2;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_3_c3_r3;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_4_c3_r4;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_5_c3_r5;

wire [OUTPUT_WIDTH_NEW-1:0] h2ko_1_c4_r1;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_2_c4_r2;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_3_c4_r3;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_4_c4_r4;
wire [OUTPUT_WIDTH_NEW-1:0] h2ko_5_c4_r5;


WallaceTreeMul MULT11( kernel_out_1_1, h_1, h2ko_1_c1_r1);
WallaceTreeMul MULT12( kernel_out_2_1, h_2, h2ko_2_c1_r2);
WallaceTreeMul MULT13( kernel_out_3_1, h_3, h2ko_3_c1_r3);
WallaceTreeMul MULT14( kernel_out_4_1, h_4, h2ko_4_c1_r4);
WallaceTreeMul MULT15( kernel_out_5_1, h_5, h2ko_5_c1_r5);

WallaceTreeMul MULT21( kernel_out_1_2, h_1, h2ko_1_c2_r1);
WallaceTreeMul MULT22( kernel_out_2_2, h_2, h2ko_2_c2_r2);
WallaceTreeMul MULT23( kernel_out_3_2, h_3, h2ko_3_c2_r3);
WallaceTreeMul MULT24( kernel_out_4_2, h_4, h2ko_4_c2_r4);
WallaceTreeMul MULT25( kernel_out_5_2, h_5, h2ko_5_c2_r5);

WallaceTreeMul MULT31( kernel_out_1_3, h_1, h2ko_1_c3_r1);
WallaceTreeMul MULT32( kernel_out_2_3, h_2, h2ko_2_c3_r2);
WallaceTreeMul MULT33( kernel_out_3_3, h_3, h2ko_3_c3_r3);
WallaceTreeMul MULT34( kernel_out_4_3, h_4, h2ko_4_c3_r4);
WallaceTreeMul MULT35( kernel_out_5_3, h_5, h2ko_5_c3_r5);

WallaceTreeMul MULT41( kernel_out_1_4, h_1, h2ko_1_c4_r1);
WallaceTreeMul MULT42( kernel_out_2_4, h_2, h2ko_2_c4_r2);
WallaceTreeMul MULT43( kernel_out_3_4, h_3, h2ko_3_c4_r3);
WallaceTreeMul MULT44( kernel_out_4_4, h_4, h2ko_4_c4_r4);
WallaceTreeMul MULT45( kernel_out_5_4, h_5, h2ko_5_c4_r5);


wire [OUTPUT_WIDTH-1:0] Output_1_reg;
wire [OUTPUT_WIDTH-1:0] Output_2_reg;
wire [OUTPUT_WIDTH-1:0] Output_3_reg;
wire [OUTPUT_WIDTH-1:0] Output_4_reg;

Kogge_Stone_5IN ADD_1(h2ko_1_c1_r1, h2ko_2_c1_r2, h2ko_3_c1_r3, h2ko_4_c1_r4, h2ko_5_c1_r5, Output_1_reg);
Kogge_Stone_5IN ADD_2(h2ko_1_c2_r1, h2ko_2_c2_r2, h2ko_3_c2_r3, h2ko_4_c2_r4, h2ko_5_c2_r5, Output_2_reg);
Kogge_Stone_5IN ADD_3(h2ko_1_c3_r1, h2ko_2_c3_r2, h2ko_3_c3_r3, h2ko_4_c3_r4, h2ko_5_c3_r5, Output_3_reg);
Kogge_Stone_5IN ADD_4(h2ko_1_c4_r1, h2ko_2_c4_r2, h2ko_3_c4_r3, h2ko_4_c4_r4, h2ko_5_c4_r5, Output_4_reg);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Output_1 <= 14'b0_000_0000000000;
        Output_2 <= 14'b0_000_0000000000;
        Output_3 <= 14'b0_000_0000000000;
        Output_4 <= 14'b0_000_0000000000;
    end
    else begin
        Output_1 <= Output_1_reg;
        Output_2 <= Output_2_reg;
        Output_3 <= Output_3_reg;
        Output_4 <= Output_4_reg;        
    end
end

endmodule


module BIAS_Out_ADD #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] X1,
    input wire [DATA_WIDTH-1:0] X2,
    input wire [DATA_WIDTH-1:0] X3,
    input wire [DATA_WIDTH-1:0] X4,

    output reg [DATA_WIDTH-1:0] O1,
    output reg [DATA_WIDTH-1:0] O2,
    output reg [DATA_WIDTH-1:0] O3,
    output reg [DATA_WIDTH-1:0] O4
);

reg [DATA_WIDTH-1:0] bias_1;
reg [DATA_WIDTH-1:0] bias_2;
reg [DATA_WIDTH-1:0] bias_3;
reg [DATA_WIDTH-1:0] bias_4;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        bias_1 <= 14'b00000001010101;
        bias_2 <= 14'b11110101001001;
        bias_3 <= 14'b11111101011000;
        bias_4 <= 14'b00001011100100;
    end
    else begin
        bias_1 <= 14'b00000001010101;
        bias_2 <= 14'b11110101001001;
        bias_3 <= 14'b11111101011000;
        bias_4 <= 14'b00001011100100;
    end
end


wire [DATA_WIDTH-1:0] O1_wire;
wire [DATA_WIDTH-1:0] O2_wire;
wire [DATA_WIDTH-1:0] O3_wire;
wire [DATA_WIDTH-1:0] O4_wire;


Kogge_Stone_ADDER_14 ADDER1(bias_1, X1, 1'b0, O1_wire);
Kogge_Stone_ADDER_14 ADDER2(bias_2, X2, 1'b0, O2_wire);
Kogge_Stone_ADDER_14 ADDER3(bias_3, X3, 1'b0, O3_wire);
Kogge_Stone_ADDER_14 ADDER4(bias_4, X4, 1'b0, O4_wire);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        O1 <= 14'b0_000_0000000000;
        O2 <= 14'b0_000_0000000000;
        O3 <= 14'b0_000_0000000000;
        O4 <= 14'b0_000_0000000000;
    end
    else begin
        O1 <= O1_wire;
        O2 <= O2_wire;
        O3 <= O3_wire;
        O4 <= O4_wire;        
    end
end

endmodule

module OUTPUT_LAYER_TOP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire valid,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output wire [OUTPUT_WIDTH-1:0] Output_1,
    output wire [OUTPUT_WIDTH-1:0] Output_2,
    output wire [OUTPUT_WIDTH-1:0] Output_3,
    output wire [OUTPUT_WIDTH-1:0] Output_4
);

reg [DATA_WIDTH-1:0] h_1_reg;
reg [DATA_WIDTH-1:0] h_2_reg;
reg [DATA_WIDTH-1:0] h_3_reg;
reg [DATA_WIDTH-1:0] h_4_reg;
reg [DATA_WIDTH-1:0] h_5_reg;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        h_1_reg <= 14'b0_000_0000000000;
        h_2_reg <= 14'b0_000_0000000000;
        h_3_reg <= 14'b0_000_0000000000;
        h_4_reg <= 14'b0_000_0000000000;
        h_5_reg <= 14'b0_000_0000000000;        
    end
    else begin
        if(valid == 1'b1) begin
            h_1_reg <= h_1;
            h_2_reg <= h_2;
            h_3_reg <= h_3;
            h_4_reg <= h_4;
            h_5_reg <= h_5;
        end
    end
end

wire [DATA_WIDTH-1:0] internal_1;
wire [DATA_WIDTH-1:0] internal_2;
wire [DATA_WIDTH-1:0] internal_3;
wire [DATA_WIDTH-1:0] internal_4;

wire [DATA_WIDTH-1:0] Output_1_sig;
wire [DATA_WIDTH-1:0] Output_2_sig;
wire [DATA_WIDTH-1:0] Output_3_sig;
wire [DATA_WIDTH-1:0] Output_4_sig;

Kernel_Out_MULT KOM(clk, rst, h_1_reg,
                              h_2_reg,
                              h_3_reg,
                              h_4_reg,
                              h_5_reg,

                              internal_1,
                              internal_2,
                              internal_3,
                              internal_4
);

BIAS_Out_ADD BOA(clk, rst, internal_1,
                           internal_2,
                           internal_3,
                           internal_4,

                           Output_1_sig,
                           Output_2_sig,
                           Output_3_sig,
                           Output_4_sig
);

Sig_TOP SIG1(clk, rst, Output_1_sig, Output_1);
Sig_TOP SIG2(clk, rst, Output_2_sig, Output_2);
Sig_TOP SIG3(clk, rst, Output_3_sig, Output_3);
Sig_TOP SIG4(clk, rst, Output_4_sig, Output_4);

endmodule


///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////



module NN_BLOCK #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire START_SYMBOL,
    input wire [DATA_WIDTH-1:0] Input_Sample,

    output wire [DATA_WIDTH-1:0] SYMBOL_1,
    output wire [DATA_WIDTH-1:0] SYMBOL_2,
    output wire [DATA_WIDTH-1:0] SYMBOL_3,
    output wire [DATA_WIDTH-1:0] SYMBOL_4
);

wire [DATA_WIDTH-1:0] h_2_1;
wire [DATA_WIDTH-1:0] h_2_2;
wire [DATA_WIDTH-1:0] h_2_3;
wire [DATA_WIDTH-1:0] h_2_4;
wire [DATA_WIDTH-1:0] h_2_5;


reg [10:0] counter;
reg [10:0] counter_reg;
reg       valid;

always @(*) begin
    if(START_SYMBOL) begin
        counter_reg = counter + 11'b000_0000_0001;
    end
    else begin
        counter_reg = 11'b000_0000_0000;
    end
end

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        counter <= 11'b000_0000_0000;
    end
    else begin
        counter <= counter_reg;
    end
end

always @(*) begin
    if(counter == 11'b000_0000_0000) begin
        valid = 1'b1;
    end
    else begin
        valid = 1'b0;
    end
end

LAYER_12_BLOCK LSTM12(clk, rst, START_SYMBOL, Input_Sample,
                                              h_2_1,
                                              h_2_2,
                                              h_2_3,
                                              h_2_4,
                                              h_2_5
);
OUTPUT_LAYER_TOP DENSE(clk, rst, valid,
                                 h_2_1,
                                 h_2_2,
                                 h_2_3,
                                 h_2_4,
                                 h_2_5,

                                 SYMBOL_1,
                                 SYMBOL_2,
                                 SYMBOL_3,
                                 SYMBOL_4
);
endmodule



////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////




module COMP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 2)  (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] INX1,
    input wire [DATA_WIDTH-1:0] INX2,
    input wire [DATA_WIDTH-1:0] INX3,
    input wire [DATA_WIDTH-1:0] INX4,

    output reg [OUTPUT_WIDTH-1:0] OUTX
);

wire COM12;
wire COM13;
wire COM14;

wire COM21;
wire COM23;
wire COM24;

wire COM32;
wire COM31;
wire COM34;

wire COM42;
wire COM43;
wire COM41;

AgreaterB SUB1_2(INX1, INX2, COM12);
AgreaterB SUB1_3(INX1, INX3, COM13);
AgreaterB SUB1_4(INX1, INX4, COM14);

AgreaterB SUB2_1(INX2, INX2, COM21);
AgreaterB SUB2_3(INX2, INX3, COM23);
AgreaterB SUB2_4(INX2, INX4, COM24);

AgreaterB SUB3_2(INX3, INX2, COM32);
AgreaterB SUB3_1(INX3, INX3, COM31);
AgreaterB SUB3_4(INX3, INX4, COM34);

AgreaterB SUB4_2(INX4, INX2, COM42);
AgreaterB SUB4_3(INX4, INX3, COM43);
AgreaterB SUB4_1(INX4, INX4, COM41);

reg [3:0] MUXSEL;
always @(*) begin
    MUXSEL[0] = COM12 & COM13 & COM14;
    MUXSEL[1] = COM21 & COM23 & COM24;
    MUXSEL[2] = COM32 & COM31 & COM34;
    MUXSEL[3] = COM42 & COM43 & COM41;
end

reg [OUTPUT_WIDTH-1:0] OUTX_reg;
always @(*) begin
    case (MUXSEL)
        4'b0001: begin
            OUTX_reg = 2'b00;
        end 
        4'b0010: begin
            OUTX_reg = 2'b01;
        end 
        4'b0100: begin
            OUTX_reg = 2'b10;
        end 
        4'b1000: begin
            OUTX_reg = 2'b11;
        end 
        default: begin
            OUTX_reg = 2'b00;
        end
    endcase
end

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        OUTX <= 2'b00;
    end
    else begin
        OUTX <= OUTX_reg;
    end
end

endmodule

module AgreaterB #(parameter DATA_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] A,
    input wire [DATA_WIDTH-1:0] B,

    output reg                  OUTX
);

wire [DATA_WIDTH-1:0] RES;
Kogge_Stone_ADDER_14 SUBER(A, ~B, 1'b1, RES);

always @(*) begin
    if(RES[13] == 1'b0) begin
        OUTX = 1'b1;
    end
    else begin
        OUTX = 1'b0;
    end
end

endmodule



///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////




module NN_COMP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 2) (
    input wire clk, rst,
    input wire START_SYMBOL,
    input wire [DATA_WIDTH-1:0] Input_Sample,

    output wire [OUTPUT_WIDTH-1:0] OUTX
);


wire [DATA_WIDTH-1:0] SYMBOL_1;
wire [DATA_WIDTH-1:0] SYMBOL_2;
wire [DATA_WIDTH-1:0] SYMBOL_3;
wire [DATA_WIDTH-1:0] SYMBOL_4;

NN_BLOCK NN(clk, rst, START_SYMBOL, Input_Sample, SYMBOL_1,
                                                  SYMBOL_2,
                                                  SYMBOL_3,
                                                  SYMBOL_4
);

COMP CMP(clk, rst, SYMBOL_1,
                   SYMBOL_2,
                   SYMBOL_3,
                   SYMBOL_4,

                   OUTX
 );
    
endmodule