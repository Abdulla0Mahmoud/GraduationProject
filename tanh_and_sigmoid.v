module tanh_rom (
input     wire        clk   ,
                      rst   , 
input     wire[13:0]   Addres,
output    reg [27:0]  OUTPUT
);
    
reg [63:0] C21_MEM [27:0] ;


always @(*) begin
    OUTPUT = C21_MEM[Addres[12:7]];
    /*if (!rst) begin
        OUTPUT <= 0 ;
    end 
    else begin
        OUTPUT <= C21_MEM[Addres[12:7]];
    end*/
end


initial begin
    C21_MEM[0] = 'b00000000000000_00001111111011;
    C21_MEM[1] = 'b00000000000100_00001111011100;
    C21_MEM[2] = 'b00000000010010_00001110100001;
    C21_MEM[3] = 'b00000000110000_00001101010010;
    C21_MEM[4] = 'b00000001011110_00001011110110;
    C21_MEM[5] = 'b00000010011011_00001010010100;
    C21_MEM[6] = 'b00000011100100_00001000110011;
    C21_MEM[7] = 'b00000100110011_00000111011001;
    C21_MEM[8] = 'b00000110000101_00000110000111;
    C21_MEM[9] = 'b00000111010101_00000100111111;
    C21_MEM[10] = 'b00001000100010_00000100000010;
    C21_MEM[11] = 'b00001001101000_00000011001111;
    C21_MEM[12] = 'b00001010100111_00000010100101;
    C21_MEM[13] = 'b00001011011110_00000010000011;
    C21_MEM[14] = 'b00001100001110_00000001101000;
    C21_MEM[15] = 'b00001100111000_00000001010010;
    C21_MEM[16] = 'b00001101011011_00000001000000;
    C21_MEM[17] = 'b00001101111000_00000000110010;
    C21_MEM[18] = 'b00001110010001_00000000100111;
    C21_MEM[19] = 'b00001110100101_00000000011111;
    C21_MEM[20] = 'b00001110110110_00000000011000;
    C21_MEM[21] = 'b00001111000100_00000000010011;
    C21_MEM[22] = 'b00001111001111_00000000001111;
    C21_MEM[23] = 'b00001111011001_00000000001011;
    C21_MEM[24] = 'b00001111100000_00000000001001;
    C21_MEM[25] = 'b00001111100110_00000000000111;
    C21_MEM[26] = 'b00001111101011_00000000000101;
    C21_MEM[27] = 'b00001111101111_00000000000100;
    C21_MEM[28] = 'b00001111110011_00000000000011;
    C21_MEM[29] = 'b00001111110101_00000000000011;
    C21_MEM[30] = 'b00001111110111_00000000000010;
    C21_MEM[31] = 'b00001111111001_00000000000010;
    C21_MEM[32] = 'b00001111111010_00000000000001;
    C21_MEM[33] = 'b00001111111100_00000000000001;
    C21_MEM[34] = 'b00001111111100_00000000000001;
    C21_MEM[35] = 'b00001111111101_00000000000001;
    C21_MEM[36] = 'b00001111111110_00000000000000;
    C21_MEM[37] = 'b00001111111110_00000000000000;
    C21_MEM[38] = 'b00001111111111_00000000000000;
    C21_MEM[39] = 'b00001111111111_00000000000000;
    C21_MEM[40] = 'b00001111111111_00000000000000;
    C21_MEM[41] = 'b00001111111111_00000000000000;
    C21_MEM[42] = 'b00001111111111_00000000000000;
    C21_MEM[43] = 'b00010000000000_00000000000000;
    C21_MEM[44] = 'b00010000000000_00000000000000;
    C21_MEM[45] = 'b00010000000000_00000000000000;
    C21_MEM[46] = 'b00010000000000_00000000000000;
    C21_MEM[47] = 'b00010000000000_00000000000000;
    C21_MEM[48] = 'b00010000000000_00000000000000;
    C21_MEM[49] = 'b00010000000000_00000000000000;
    C21_MEM[50] = 'b00010000000000_00000000000000;
    C21_MEM[51] = 'b00010000000000_00000000000000;
    C21_MEM[52] = 'b00010000000000_00000000000000;
    C21_MEM[53] = 'b00010000000000_00000000000000;
    C21_MEM[54] = 'b00010000000000_00000000000000;
    C21_MEM[55] = 'b00010000000000_00000000000000;
    C21_MEM[56] = 'b00010000000000_00000000000000;
    C21_MEM[57] = 'b00010000000000_00000000000000;
    C21_MEM[58] = 'b00010000000000_00000000000000;
    C21_MEM[59] = 'b00010000000000_00000000000000;
    C21_MEM[60] = 'b00010000000000_00000000000000;
    C21_MEM[61] = 'b00010000000000_00000000000000;
    C21_MEM[62] = 'b00010000000000_00000000000000;
    C21_MEM[62] = 'b00010000000000_00000000000000;
    C21_MEM[63] = 'b00010000000000_00000000000000;
end 
endmodule


module tanh_rom_H (
input     wire        clk   ,
                      rst   , 
input     wire[13:0]   Addres,
output    reg [27:0]  OUTPUT
);
    
reg [63:0] C21_MEM [27:0] ;


always @(posedge clk or negedge rst) begin
    //OUTPUT = C21_MEM[Addres[12:7]];
    if (!rst) begin
        OUTPUT <= 0 ;
    end 
    else begin
        OUTPUT <= C21_MEM[Addres[12:7]];
    end
end


initial begin
    C21_MEM[0] = 'b00000000000000_00001111111011;
    C21_MEM[1] = 'b00000000000100_00001111011100;
    C21_MEM[2] = 'b00000000010010_00001110100001;
    C21_MEM[3] = 'b00000000110000_00001101010010;
    C21_MEM[4] = 'b00000001011110_00001011110110;
    C21_MEM[5] = 'b00000010011011_00001010010100;
    C21_MEM[6] = 'b00000011100100_00001000110011;
    C21_MEM[7] = 'b00000100110011_00000111011001;
    C21_MEM[8] = 'b00000110000101_00000110000111;
    C21_MEM[9] = 'b00000111010101_00000100111111;
    C21_MEM[10] = 'b00001000100010_00000100000010;
    C21_MEM[11] = 'b00001001101000_00000011001111;
    C21_MEM[12] = 'b00001010100111_00000010100101;
    C21_MEM[13] = 'b00001011011110_00000010000011;
    C21_MEM[14] = 'b00001100001110_00000001101000;
    C21_MEM[15] = 'b00001100111000_00000001010010;
    C21_MEM[16] = 'b00001101011011_00000001000000;
    C21_MEM[17] = 'b00001101111000_00000000110010;
    C21_MEM[18] = 'b00001110010001_00000000100111;
    C21_MEM[19] = 'b00001110100101_00000000011111;
    C21_MEM[20] = 'b00001110110110_00000000011000;
    C21_MEM[21] = 'b00001111000100_00000000010011;
    C21_MEM[22] = 'b00001111001111_00000000001111;
    C21_MEM[23] = 'b00001111011001_00000000001011;
    C21_MEM[24] = 'b00001111100000_00000000001001;
    C21_MEM[25] = 'b00001111100110_00000000000111;
    C21_MEM[26] = 'b00001111101011_00000000000101;
    C21_MEM[27] = 'b00001111101111_00000000000100;
    C21_MEM[28] = 'b00001111110011_00000000000011;
    C21_MEM[29] = 'b00001111110101_00000000000011;
    C21_MEM[30] = 'b00001111110111_00000000000010;
    C21_MEM[31] = 'b00001111111001_00000000000010;
    C21_MEM[32] = 'b00001111111010_00000000000001;
    C21_MEM[33] = 'b00001111111100_00000000000001;
    C21_MEM[34] = 'b00001111111100_00000000000001;
    C21_MEM[35] = 'b00001111111101_00000000000001;
    C21_MEM[36] = 'b00001111111110_00000000000000;
    C21_MEM[37] = 'b00001111111110_00000000000000;
    C21_MEM[38] = 'b00001111111111_00000000000000;
    C21_MEM[39] = 'b00001111111111_00000000000000;
    C21_MEM[40] = 'b00001111111111_00000000000000;
    C21_MEM[41] = 'b00001111111111_00000000000000;
    C21_MEM[42] = 'b00001111111111_00000000000000;
    C21_MEM[43] = 'b00010000000000_00000000000000;
    C21_MEM[44] = 'b00010000000000_00000000000000;
    C21_MEM[45] = 'b00010000000000_00000000000000;
    C21_MEM[46] = 'b00010000000000_00000000000000;
    C21_MEM[47] = 'b00010000000000_00000000000000;
    C21_MEM[48] = 'b00010000000000_00000000000000;
    C21_MEM[49] = 'b00010000000000_00000000000000;
    C21_MEM[50] = 'b00010000000000_00000000000000;
    C21_MEM[51] = 'b00010000000000_00000000000000;
    C21_MEM[52] = 'b00010000000000_00000000000000;
    C21_MEM[53] = 'b00010000000000_00000000000000;
    C21_MEM[54] = 'b00010000000000_00000000000000;
    C21_MEM[55] = 'b00010000000000_00000000000000;
    C21_MEM[56] = 'b00010000000000_00000000000000;
    C21_MEM[57] = 'b00010000000000_00000000000000;
    C21_MEM[58] = 'b00010000000000_00000000000000;
    C21_MEM[59] = 'b00010000000000_00000000000000;
    C21_MEM[60] = 'b00010000000000_00000000000000;
    C21_MEM[61] = 'b00010000000000_00000000000000;
    C21_MEM[62] = 'b00010000000000_00000000000000;
    C21_MEM[62] = 'b00010000000000_00000000000000;
    C21_MEM[63] = 'b00010000000000_00000000000000;
end 
endmodule


module Tanh_ADDER #(parameter DATA_WIDTH_1 = 28, DATA_WIDTH_2 = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH_2-1:0] A,
    input wire [DATA_WIDTH_1-1:0] B,
    input wire SIGN,
    output reg [OUTPUT_WIDTH-1:0] OUTPUT
);

wire [27:0] OUTPUT_POS_reg1;
wire [27:0] OUTPUT_NEG_reg1;
wire [13:0] out_round;


Kogge_Stone_ADDER_28 ADDER({ {4{A[13]}}, A, {10{1'b0}}}, B, 1'b0, OUTPUT_POS_reg1);
Kogge_Stone_ADDER_28 ADDER_NEG(28'b0_0000000_00000000000000000000, ~OUTPUT_POS_reg1, 1'b1, OUTPUT_NEG_reg1);
reg [27:0] mux_out;
always @(*) begin
    if(SIGN == 1'b0) begin
        mux_out = OUTPUT_POS_reg1;
    end
    else begin
        mux_out = OUTPUT_NEG_reg1;
    end
end


Kogge_Stone_ADDER_14 Stage_Round_POS (mux_out[23:10], 14'b0, mux_out[9], out_round);
always @(*) begin
    OUTPUT = out_round;
    /*if(!rst) begin
        OUTPUT = 14'b0_000_0000000000;
    end
    else begin
        OUTPUT = out_round;
    end*/
end


endmodule

module Sig_ADDER #(parameter DATA_WIDTH_1 = 28, DATA_WIDTH_2 = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH_2-1:0] A,
    input wire [DATA_WIDTH_1-1:0] B,
    input wire SIGN,
    output reg [OUTPUT_WIDTH-1:0] OUTPUT
);

wire [27:0] OUTPUT_POS_reg1;
wire [27:0] OUTPUT_NEG_reg1;
wire [13:0] out_round;


Kogge_Stone_ADDER_28 ADDER({ {4{A[13]}}, A, {10{1'b0}}}, B, 1'b0, OUTPUT_POS_reg1);
Kogge_Stone_ADDER_28 ADDER_NEG(28'b0_0000001_00000000000000000000, ~OUTPUT_POS_reg1, 1'b1, OUTPUT_NEG_reg1);
reg [27:0] mux_out;
always @(*) begin
    if(SIGN == 1'b0) begin
        mux_out = OUTPUT_POS_reg1;
    end
    else begin
        mux_out = OUTPUT_NEG_reg1;
    end
end


Kogge_Stone_ADDER_14 Stage_Round_POS (mux_out[23:10], 14'b0, mux_out[9], out_round);
always @(*) begin
    OUTPUT = out_round;
    /*if(!rst) begin
        OUTPUT = 14'b0_000_0000000000;
    end
    else begin
        if(fun_out_enable == 1'b1) begin
            OUTPUT = out_round;
        end
    end*/
end


endmodule



module Tanh_SIGNMOD #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] IN_SAM,
    output reg [OUTPUT_WIDTH-1:0] OUTPUT
);

wire [DATA_WIDTH-1:0] OUTPUT_reg;
Kogge_Stone_ADDER_14 ADD (14'd0, ~IN_SAM, 1'b1, OUTPUT_reg);

always @(*) begin
    if(IN_SAM[13] == 1'b0) begin
        OUTPUT = IN_SAM;
    end
    else begin
        OUTPUT = OUTPUT_reg;
    end
end
endmodule

module MULTREG #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] D,

    output reg [OUTPUT_WIDTH-1:0] Q
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Q <= 14'b0_000_0000000000;
    end
    else begin
        Q <= D;
    end
end
endmodule

module SIGNREG #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire D,

    output reg Q
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Q <= 1'b0;
    end
    else begin
        Q <= D;
    end
end
endmodule

module Tanh_TOP (
    input  wire  clk,
                 rst,
    input  wire [13:0]  X ,
    output wire [13:0]  tanh_out
);
    
wire [27:0] const ;
wire [27:0] result_temp ;
wire [13:0] X_reg;
//wire [13:0] REG_IN_SAM_reg;
//wire        SIGN_reg;

Tanh_SIGNMOD SMOD(X, X_reg);
//SIGNREG SREG(clk, rst, X[13], SIGN_reg);
tanh_rom ROM (clk, rst, X_reg, const);
//MULTREG REG(clk, rst, X_reg, REG_IN_SAM_reg);
WallaceTreeMul MUL(X_reg, const[13:0], result_temp);
Tanh_ADDER ADDER (clk, rst, const[27:14], result_temp, X[13], tanh_out);

endmodule

module Tanh_TOP_H (
    input  wire  clk,
                 rst,
    input  wire [13:0]  X ,
    output wire [13:0]  tanh_out
);
    
wire [27:0] const ;
wire [27:0] result_temp ;
wire [13:0] X_reg;
wire [13:0] REG_IN_SAM_reg;
wire        SIGN_reg;

Tanh_SIGNMOD SMOD(X, X_reg);

tanh_rom_H ROM (
.clk(clk),
.rst(rst),
.Addres(X_reg),
.OUTPUT(const)
);  
SIGNREG SREG(clk, rst, X[13], SIGN_reg);
MULTREG REG(clk, rst, X_reg, REG_IN_SAM_reg);
WallaceTreeMul MUL(REG_IN_SAM_reg, const[13:0], result_temp);

Tanh_ADDER ADDER (.clk(clk), .rst(rst),
 .A(const[27:14]),
 .B(result_temp),
 .SIGN(SIGN_reg),
 .OUTPUT(tanh_out)
);

endmodule


////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////



module Sig_ROM #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 28) (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] IN_SAM,

    output reg [OUTPUT_WIDTH-1:0] OUTPUT
);

reg [OUTPUT_WIDTH-1:0] C12_MEM [63:0];

initial begin
    C12_MEM [0]  = 28'b00000100000000_00001000000000 ;
    C12_MEM [1]  = 28'b00000011111110_00001000000000 ;
    C12_MEM [2]  = 28'b00000011111010_00001000000001 ;
    C12_MEM [3]  = 28'b00000011110100_00001000000011 ;
    C12_MEM [4]  = 28'b00000011101101_00001000000111 ;
    C12_MEM [5]  = 28'b00000011100100_00001000001101 ;
    C12_MEM [6]  = 28'b00000011011010_00001000010100 ;
    C12_MEM [7]  = 28'b00000011001111_00001000011110 ;
    C12_MEM [8]  = 28'b00000011000011_00001000101001 ;
    C12_MEM [9]  = 28'b00000010110111_00001000110111 ;
    C12_MEM [10] = 28'b00000010101011_00001001000110 ;
    C12_MEM [11] = 28'b00000010011111_00001001010111 ;
    C12_MEM [12] = 28'b00000010010011_00001001101001 ;
    C12_MEM [13] = 28'b00000010000111_00001001111100 ;
    C12_MEM [14] = 28'b00000001111100_00001010010000 ;
    C12_MEM [15] = 28'b00000001110001_00001010100100 ;
    C12_MEM [16] = 28'b00000001100111_00001010111001 ;
    C12_MEM [17] = 28'b00000001011101_00001011001101 ;
    C12_MEM [18] = 28'b00000001010100_00001011100001 ;
    C12_MEM [19] = 28'b00000001001100_00001011110101 ;
    C12_MEM [20] = 28'b00000001000100_00001100001000 ;
    C12_MEM [21] = 28'b00000000111101_00001100011010 ;
    C12_MEM [22] = 28'b00000000110111_00001100101100 ;
    C12_MEM [23] = 28'b00000000110001_00001100111101 ;
    C12_MEM [24] = 28'b00000000101100_00001101001100 ;
    C12_MEM [25] = 28'b00000000100111_00001101011011 ;
    C12_MEM [26] = 28'b00000000100011_00001101101001 ;
    C12_MEM [27] = 28'b00000000011111_00001101110110 ;
    C12_MEM [28] = 28'b00000000011011_00001110000010 ;
    C12_MEM [29] = 28'b00000000011000_00001110001101 ;
    C12_MEM [30] = 28'b00000000010110_00001110010111 ;
    C12_MEM [31] = 28'b00000000010011_00001110100001 ;
    C12_MEM [32] = 28'b00000000010001_00001110101001 ;
    C12_MEM [33] = 28'b00000000001111_00001110110001 ;
    C12_MEM [34] = 28'b00000000001101_00001110111001 ;
    C12_MEM [35] = 28'b00000000001100_00001110111111 ;
    C12_MEM [36] = 28'b00000000001010_00001111000110 ;
    C12_MEM [37] = 28'b00000000001001_00001111001011 ;
    C12_MEM [38] = 28'b00000000001000_00001111010000 ;
    C12_MEM [39] = 28'b00000000000111_00001111010101 ;
    C12_MEM [40] = 28'b00000000000110_00001111011001 ;
    C12_MEM [41] = 28'b00000000000110_00001111011101 ;
    C12_MEM [42] = 28'b00000000000101_00001111100000 ;
    C12_MEM [43] = 28'b00000000000100_00001111100100 ;
    C12_MEM [44] = 28'b00000000000100_00001111100110 ;
    C12_MEM [45] = 28'b00000000000011_00001111101001 ;
    C12_MEM [46] = 28'b00000000000011_00001111101011 ;
    C12_MEM [47] = 28'b00000000000011_00001111101101 ;
    C12_MEM [48] = 28'b00000000000010_00001111101111 ;
    C12_MEM [49] = 28'b00000000000010_00001111110001 ;
    C12_MEM [50] = 28'b00000000000010_00001111110010 ;
    C12_MEM [51] = 28'b00000000000010_00001111110100 ;
    C12_MEM [52] = 28'b00000000000001_00001111110101 ;
    C12_MEM [53] = 28'b00000000000001_00001111110110 ;
    C12_MEM [54] = 28'b00000000000001_00001111110111 ;
    C12_MEM [55] = 28'b00000000000001_00001111111000 ;
    C12_MEM [56] = 28'b00000000000001_00001111111001 ;
    C12_MEM [57] = 28'b00000000000001_00001111111010 ;
    C12_MEM [58] = 28'b00000000000001_00001111111010 ;
    C12_MEM [59] = 28'b00000000000001_00001111111011 ;
    C12_MEM [60] = 28'b00000000000001_00001111111011 ;
    C12_MEM [61] = 28'b00000000000000_00001111111100 ;
    C12_MEM [62] = 28'b00000000000000_00001111111100 ;
    C12_MEM [63] = 28'b00000000000000_00001111111100 ;
end


always @(*) begin
    OUTPUT = C12_MEM[IN_SAM[12:7]];
    /*if(!rst) begin
        OUTPUT <= C12_MEM[0];
    end
    else begin
        OUTPUT <= C12_MEM[IN_SAM[12:7]];
    end*/
end

endmodule


/*module Sig_ADDER #(parameter DATA_WIDTH_1 = 28, DATA_WIDTH_2 = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH_2-1:0] A,
    input wire [DATA_WIDTH_1-1:0] B,
    input wire SIGN,
    output reg [OUTPUT_WIDTH-1:0] OUTPUT
);

wire [27:0] OUTPUT_POS_reg1;
wire [27:0] OUTPUT_NEG_reg1;
wire [13:0] out_round;


Kogge_Stone_ADDER_28 ADDER({ {4{A[13]}}, A, {10{1'b0}}}, B, 1'b0, OUTPUT_POS_reg1);
Kogge_Stone_ADDER_28 ADDER_NEG(28'b0_0000001_00000000000000000000, ~OUTPUT_POS_reg1, 1'b1, OUTPUT_NEG_reg1);
reg [27:0] mux_out;
always @(*) begin
    if(SIGN == 1'b0) begin
        mux_out = OUTPUT_POS_reg1;
    end
    else begin
        mux_out = OUTPUT_NEG_reg1;
    end
end


Kogge_Stone_ADDER_14 Stage_Round_POS (mux_out[23:10], 14'b0, mux_out[9], out_round);
always @(*) begin
    OUTPUT = out_round;
    /*if(!rst) begin
        OUTPUT = 14'b0_000_0000000000;
    end
    else begin
        if(fun_out_enable == 1'b1) begin
            OUTPUT = out_round;
        end
    end
end


endmodule*/


module Sig_SIGNMOD #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire [DATA_WIDTH-1:0] IN_SAM,
    output reg [OUTPUT_WIDTH-1:0] OUTPUT
);

wire [DATA_WIDTH-1:0] OUTPUT_reg;
Kogge_Stone_ADDER_14 ADD (14'd0, ~IN_SAM, 1'b1, OUTPUT_reg);

always @(*) begin
    if(IN_SAM[13] == 1'b0) begin
        OUTPUT = IN_SAM;
    end
    else begin
        OUTPUT = OUTPUT_reg;
    end
end

endmodule

/*module MULTREG #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] D,

    output reg [OUTPUT_WIDTH-1:0] Q
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Q <= 14'b0_000_0000000000;
    end
    else begin
        Q <= D;
    end
end

endmodule*/

/*module SIGNREG #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire D,

    output reg Q
);

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Q <= 1'b0;
    end
    else begin
        Q <= D;
    end
end

endmodule*/

module Sig_TOP (
    input wire clk, rst,
    input wire [13:0] IN_SAM,

    output wire [13:0] FINAL_OUTPUT
);


wire [27:0] PROD;
wire [27:0] OUTPUT;
wire [13:0] IN_SAM_reg;
//wire [13:0] REG_IN_SAM_reg;
//wire        SIGN_reg;
Sig_SIGNMOD SMOD(IN_SAM, IN_SAM_reg);
//SIGNREG SREG(clk, rst, IN_SAM[13], SIGN_reg);
Sig_ROM ROM(clk, rst, IN_SAM_reg, OUTPUT);
//MULTREG REG(clk, rst, IN_SAM_reg, REG_IN_SAM_reg);
WallaceTreeMul MUL(IN_SAM_reg, OUTPUT[27:14], PROD);
Sig_ADDER ADD(clk, rst, OUTPUT[13:0], PROD, IN_SAM[13],FINAL_OUTPUT);
    
endmodule




/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////



module top_function #(
    parameter WIDTH = 14 
) (
    input  wire               clk,
                              rst,
                              function_enable,

    input  wire  [WIDTH-1:0]  X1 ,
                              X2 ,
                              X3 ,
                              X4 ,

    output reg   [WIDTH-1:0]  Y1 ,
                              Y2 ,
                              Y3 ,
                              Y4 

);

wire [13:0] out1_temp,
            out2_temp,
            out3_temp,
            out4_temp;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Y1 = 14'b0_000_0000000000;
        Y2 = 14'b0_000_0000000000;
        Y3 = 14'b0_000_0000000000;
        Y4 = 14'b0_000_0000000000;
    end
    else begin
        if (function_enable == 1'b1) begin
            Y1 = out1_temp;
            Y2 = out2_temp;
            Y3 = out3_temp;
            Y4 = out4_temp;
        end
    end
end



Sig_TOP sig1 (
.IN_SAM(X1),
.clk(clk),
.rst(rst),
.FINAL_OUTPUT(out1_temp)
);

Sig_TOP sig2 (
.IN_SAM(X2),
.clk(clk),
.rst(rst),
.FINAL_OUTPUT(out2_temp)
);

Tanh_TOP tanh1 (
.X(X3),
.clk(clk),
.rst(rst),
.tanh_out(out3_temp)
);

Sig_TOP sig3 (
.IN_SAM(X4),
.clk(clk),
.rst(rst),
.FINAL_OUTPUT(out4_temp)
);
    
endmodule
