

module TOP_MATMUL1 #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] Input_Sample,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output wire [OUTPUT_WIDTH-1:0] Output_1,
    output wire [OUTPUT_WIDTH-1:0] Output_2,
    output wire [OUTPUT_WIDTH-1:0] Output_3,
    output wire [OUTPUT_WIDTH-1:0] Output_4,
    output wire [OUTPUT_WIDTH-1:0] Output_5,
    output wire [OUTPUT_WIDTH-1:0] Output_6,
    output wire [OUTPUT_WIDTH-1:0] Output_7,
    output wire [OUTPUT_WIDTH-1:0] Output_8,
    output wire [OUTPUT_WIDTH-1:0] Output_9,
    output wire [OUTPUT_WIDTH-1:0] Output_10,
    output wire [OUTPUT_WIDTH-1:0] Output_11,
    output wire [OUTPUT_WIDTH-1:0] Output_12,
    output wire [OUTPUT_WIDTH-1:0] Output_13,
    output wire [OUTPUT_WIDTH-1:0] Output_14,
    output wire [OUTPUT_WIDTH-1:0] Output_15,
    output wire [OUTPUT_WIDTH-1:0] Output_16,
    output wire [OUTPUT_WIDTH-1:0] Output_17,
    output wire [OUTPUT_WIDTH-1:0] Output_18,
    output wire [OUTPUT_WIDTH-1:0] Output_19,
    output wire [OUTPUT_WIDTH-1:0] Output_20
);


wire [DATA_WIDTH-1:0] Output_K1_1_1;
wire [DATA_WIDTH-1:0] Output_K1_1_2;
wire [DATA_WIDTH-1:0] Output_K1_1_3;
wire [DATA_WIDTH-1:0] Output_K1_1_4;
wire [DATA_WIDTH-1:0] Output_K1_1_5;
wire [DATA_WIDTH-1:0] Output_K1_1_6;
wire [DATA_WIDTH-1:0] Output_K1_1_7;
wire [DATA_WIDTH-1:0] Output_K1_1_8;
wire [DATA_WIDTH-1:0] Output_K1_1_9;
wire [DATA_WIDTH-1:0] Output_K1_1_10;
wire [DATA_WIDTH-1:0] Output_K1_1_11;
wire [DATA_WIDTH-1:0] Output_K1_1_12;
wire [DATA_WIDTH-1:0] Output_K1_1_13;
wire [DATA_WIDTH-1:0] Output_K1_1_14;
wire [DATA_WIDTH-1:0] Output_K1_1_15;
wire [DATA_WIDTH-1:0] Output_K1_1_16;
wire [DATA_WIDTH-1:0] Output_K1_1_17;
wire [DATA_WIDTH-1:0] Output_K1_1_18;
wire [DATA_WIDTH-1:0] Output_K1_1_19;
wire [DATA_WIDTH-1:0] Output_K1_1_20;




wire [DATA_WIDTH-1:0] Output_R1_1_1;
wire [DATA_WIDTH-1:0] Output_R1_1_2;
wire [DATA_WIDTH-1:0] Output_R1_1_3;
wire [DATA_WIDTH-1:0] Output_R1_1_4;
wire [DATA_WIDTH-1:0] Output_R1_1_5;
wire [DATA_WIDTH-1:0] Output_R1_1_6;
wire [DATA_WIDTH-1:0] Output_R1_1_7;
wire [DATA_WIDTH-1:0] Output_R1_1_8;
wire [DATA_WIDTH-1:0] Output_R1_1_9;
wire [DATA_WIDTH-1:0] Output_R1_1_10;
wire [DATA_WIDTH-1:0] Output_R1_1_11;
wire [DATA_WIDTH-1:0] Output_R1_1_12;
wire [DATA_WIDTH-1:0] Output_R1_1_13;
wire [DATA_WIDTH-1:0] Output_R1_1_14;
wire [DATA_WIDTH-1:0] Output_R1_1_15;
wire [DATA_WIDTH-1:0] Output_R1_1_16;
wire [DATA_WIDTH-1:0] Output_R1_1_17;
wire [DATA_WIDTH-1:0] Output_R1_1_18;
wire [DATA_WIDTH-1:0] Output_R1_1_19;
wire [DATA_WIDTH-1:0] Output_R1_1_20;





Kernel_1_MULT K1M(clk, rst, Input_Sample, 
                                Output_K1_1_1,
                                Output_K1_1_2,
                                Output_K1_1_3,
                                Output_K1_1_4,
                                Output_K1_1_5,
                                Output_K1_1_6,
                                Output_K1_1_7,
                                Output_K1_1_8,
                                Output_K1_1_9,
                                Output_K1_1_10,
                                Output_K1_1_11,
                                Output_K1_1_12,
                                Output_K1_1_13,
                                Output_K1_1_14,
                                Output_K1_1_15,
                                Output_K1_1_16,
                                Output_K1_1_17,
                                Output_K1_1_18,
                                Output_K1_1_19,
                                Output_K1_1_20);


Recurrent_1_MULT R1M(clk, rst, h_1,
                               h_2,
                               h_3,
                               h_4,
                               h_5,

                                Output_R1_1_1,
                                Output_R1_1_2,
                                Output_R1_1_3,
                                Output_R1_1_4,
                                Output_R1_1_5,
                                Output_R1_1_6,
                                Output_R1_1_7,
                                Output_R1_1_8,
                                Output_R1_1_9,
                                Output_R1_1_10,
                                Output_R1_1_11,
                                Output_R1_1_12,
                                Output_R1_1_13,
                                Output_R1_1_14,
                                Output_R1_1_15,
                                Output_R1_1_16,
                                Output_R1_1_17,
                                Output_R1_1_18,
                                Output_R1_1_19,
                                Output_R1_1_20);



Bias_1_ADD B1A(clk, rst, 
                                Output_K1_1_1,
                                Output_K1_1_2,
                                Output_K1_1_3,
                                Output_K1_1_4,
                                Output_K1_1_5,
                                Output_K1_1_6,
                                Output_K1_1_7,
                                Output_K1_1_8,
                                Output_K1_1_9,
                                Output_K1_1_10,
                                Output_K1_1_11,
                                Output_K1_1_12,
                                Output_K1_1_13,
                                Output_K1_1_14,
                                Output_K1_1_15,
                                Output_K1_1_16,
                                Output_K1_1_17,
                                Output_K1_1_18,
                                Output_K1_1_19,
                                Output_K1_1_20,

                                Output_R1_1_1,
                                Output_R1_1_2,
                                Output_R1_1_3,
                                Output_R1_1_4,
                                Output_R1_1_5,
                                Output_R1_1_6,
                                Output_R1_1_7,
                                Output_R1_1_8,
                                Output_R1_1_9,
                                Output_R1_1_10,
                                Output_R1_1_11,
                                Output_R1_1_12,
                                Output_R1_1_13,
                                Output_R1_1_14,
                                Output_R1_1_15,
                                Output_R1_1_16,
                                Output_R1_1_17,
                                Output_R1_1_18,
                                Output_R1_1_19,
                                Output_R1_1_20,

                                Output_1,
                                Output_2,
                                Output_3,
                                Output_4,
                                Output_5,
                                Output_6,
                                Output_7,
                                Output_8,
                                Output_9,
                                Output_10,
                                Output_11,
                                Output_12,
                                Output_13,
                                Output_14,
                                Output_15,
                                Output_16,
                                Output_17,
                                Output_18,
                                Output_19,
                                Output_20);

    
endmodule




module LAYER1_TOP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire function_enable, 
    input wire [DATA_WIDTH-1:0] Input_Sample,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output wire [OUTPUT_WIDTH-1:0] i_1,
    output wire [OUTPUT_WIDTH-1:0] i_2,
    output wire [OUTPUT_WIDTH-1:0] i_3,
    output wire [OUTPUT_WIDTH-1:0] i_4,
    output wire [OUTPUT_WIDTH-1:0] i_5,
    output wire [OUTPUT_WIDTH-1:0] f_1,
    output wire [OUTPUT_WIDTH-1:0] f_2,
    output wire [OUTPUT_WIDTH-1:0] f_3,
    output wire [OUTPUT_WIDTH-1:0] f_4,
    output wire [OUTPUT_WIDTH-1:0] f_5,
    output wire [OUTPUT_WIDTH-1:0] c_1,
    output wire [OUTPUT_WIDTH-1:0] c_2,
    output wire [OUTPUT_WIDTH-1:0] c_3,
    output wire [OUTPUT_WIDTH-1:0] c_4,
    output wire [OUTPUT_WIDTH-1:0] c_5,
    output wire [OUTPUT_WIDTH-1:0] o_1,
    output wire [OUTPUT_WIDTH-1:0] o_2,
    output wire [OUTPUT_WIDTH-1:0] o_3,
    output wire [OUTPUT_WIDTH-1:0] o_4,
    output wire [OUTPUT_WIDTH-1:0] o_5
);

wire [DATA_WIDTH-1:0] BA_1;
wire [DATA_WIDTH-1:0] BA_2;
wire [DATA_WIDTH-1:0] BA_3;
wire [DATA_WIDTH-1:0] BA_4;
wire [DATA_WIDTH-1:0] BA_5;
wire [DATA_WIDTH-1:0] BA_6;
wire [DATA_WIDTH-1:0] BA_7;
wire [DATA_WIDTH-1:0] BA_8;
wire [DATA_WIDTH-1:0] BA_9;
wire [DATA_WIDTH-1:0] BA_10;
wire [DATA_WIDTH-1:0] BA_11;
wire [DATA_WIDTH-1:0] BA_12;
wire [DATA_WIDTH-1:0] BA_13;
wire [DATA_WIDTH-1:0] BA_14;
wire [DATA_WIDTH-1:0] BA_15;
wire [DATA_WIDTH-1:0] BA_16;
wire [DATA_WIDTH-1:0] BA_17;
wire [DATA_WIDTH-1:0] BA_18;
wire [DATA_WIDTH-1:0] BA_19;
wire [DATA_WIDTH-1:0] BA_20;

TOP_MATMUL1 MATMULT (
    clk, rst,

    Input_Sample,

    h_1,
    h_2,
    h_3,
    h_4,
    h_5,

    BA_1 ,
    BA_2 ,
    BA_3 ,
    BA_4 ,
    BA_5 ,
    BA_6 ,
    BA_7 ,
    BA_8 ,
    BA_9 ,
    BA_10,
    BA_11,
    BA_12,
    BA_13,
    BA_14,
    BA_15,
    BA_16,
    BA_17,
    BA_18,
    BA_19,
    BA_20
);

top_function N1 (clk, rst, function_enable, BA_1, BA_6 , BA_11, BA_16, i_1, f_1, c_1, o_1 );
top_function N2 (clk, rst, function_enable, BA_2, BA_7 , BA_12, BA_17, i_2, f_2, c_2, o_2 );
top_function N3 (clk, rst, function_enable, BA_3, BA_8 , BA_13, BA_18, i_3, f_3, c_3, o_3 );
top_function N4 (clk, rst, function_enable, BA_4, BA_9 , BA_14, BA_19, i_4, f_4, c_4, o_4 );
top_function N5 (clk, rst, function_enable, BA_5, BA_10, BA_15, BA_20, i_5, f_5, c_5, o_5 );

endmodule



module LAYER1_MEGA_TOP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire store_enable,
    input wire store_hidden_enable,
    input wire function_enable,
    input wire [DATA_WIDTH-1:0] Input_Sample,

    output reg [DATA_WIDTH-1:0] h_1_1,
    output reg [DATA_WIDTH-1:0] h_1_2,
    output reg [DATA_WIDTH-1:0] h_1_3,
    output reg [DATA_WIDTH-1:0] h_1_4,
    output reg [DATA_WIDTH-1:0] h_1_5
);


wire [DATA_WIDTH-1:0] h_internal_1;
wire [DATA_WIDTH-1:0] h_internal_2;
wire [DATA_WIDTH-1:0] h_internal_3;
wire [DATA_WIDTH-1:0] h_internal_4;
wire [DATA_WIDTH-1:0] h_internal_5;

wire [DATA_WIDTH-1:0] i_internal_1;
wire [DATA_WIDTH-1:0] i_internal_2;
wire [DATA_WIDTH-1:0] i_internal_3;
wire [DATA_WIDTH-1:0] i_internal_4;
wire [DATA_WIDTH-1:0] i_internal_5;
wire [DATA_WIDTH-1:0] f_internal_1;
wire [DATA_WIDTH-1:0] f_internal_2;
wire [DATA_WIDTH-1:0] f_internal_3;
wire [DATA_WIDTH-1:0] f_internal_4;
wire [DATA_WIDTH-1:0] f_internal_5;
wire [DATA_WIDTH-1:0] c_internal_1;
wire [DATA_WIDTH-1:0] c_internal_2;
wire [DATA_WIDTH-1:0] c_internal_3;
wire [DATA_WIDTH-1:0] c_internal_4;
wire [DATA_WIDTH-1:0] c_internal_5;
wire [DATA_WIDTH-1:0] o_internal_1;
wire [DATA_WIDTH-1:0] o_internal_2;
wire [DATA_WIDTH-1:0] o_internal_3;
wire [DATA_WIDTH-1:0] o_internal_4;
wire [DATA_WIDTH-1:0] o_internal_5;

LAYER1_TOP LT(clk, rst, function_enable,
                        Input_Sample,
                        h_internal_1,
                        h_internal_2,
                        h_internal_3,
                        h_internal_4,
                        h_internal_5,

                        i_internal_1,
                        i_internal_2,
                        i_internal_3,
                        i_internal_4,
                        i_internal_5,
                        f_internal_1,
                        f_internal_2,
                        f_internal_3,
                        f_internal_4,
                        f_internal_5,
                        c_internal_1,
                        c_internal_2,
                        c_internal_3,
                        c_internal_4,
                        c_internal_5,
                        o_internal_1,
                        o_internal_2,
                        o_internal_3,
                        o_internal_4,
                        o_internal_5
);





CELL_HIDDEN_BLOCK CHB1(clk, rst, store_enable, store_hidden_enable, i_internal_1,
                                                                    f_internal_1,
                                                                    c_internal_1,
                                                                    o_internal_1,

                                                                    h_internal_1
);

CELL_HIDDEN_BLOCK CHB2(clk, rst, store_enable, store_hidden_enable, i_internal_2,
                                                                    f_internal_2,
                                                                    c_internal_2,
                                                                    o_internal_2,
                                                                    
                                                                    h_internal_2
);

CELL_HIDDEN_BLOCK CHB3(clk, rst, store_enable, store_hidden_enable, i_internal_3,
                                                                    f_internal_3,
                                                                    c_internal_3,
                                                                    o_internal_3,
                                                                    
                                                                    h_internal_3
);

CELL_HIDDEN_BLOCK CHB4(clk, rst, store_enable, store_hidden_enable, i_internal_4,
                                                                    f_internal_4,
                                                                    c_internal_4,
                                                                    o_internal_4,
                                                                    
                                                                    h_internal_4
);

CELL_HIDDEN_BLOCK CHB5(clk, rst, store_enable, store_hidden_enable, i_internal_5,
                                                                    f_internal_5,
                                                                    c_internal_5,
                                                                    o_internal_5,
                                                                    
                                                                    h_internal_5
);

always @(*) begin
    h_1_1 <= h_internal_1;
    h_1_2 <= h_internal_2;
    h_1_3 <= h_internal_3;
    h_1_4 <= h_internal_4;
    h_1_5 <= h_internal_5;
end

endmodule



module LAYER1_GIGA #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire START_SYMBOL,
    input wire [DATA_WIDTH-1:0] Input_Sample,

    output wire [DATA_WIDTH-1:0] h_1_1,
    output wire [DATA_WIDTH-1:0] h_1_2,
    output wire [DATA_WIDTH-1:0] h_1_3,
    output wire [DATA_WIDTH-1:0] h_1_4,
    output wire [DATA_WIDTH-1:0] h_1_5
);

wire Hidden_EN;
wire Hidden_EN_negative_edge;
wire Fun_Cell_EN;
wire Fun_Cell_EN_negative_edge;
CONTROLLER CTRL(clk, rst, START_SYMBOL, Hidden_EN, Fun_Cell_EN);
NEG_EDGE_ENABLE NEE1(clk, rst, Hidden_EN, Hidden_EN_negative_edge);
NEG_EDGE_ENABLE NEE2(clk, rst, Fun_Cell_EN, Fun_Cell_EN_negative_edge);
LAYER1_MEGA_TOP LMT(clk, rst, Fun_Cell_EN_negative_edge, Hidden_EN_negative_edge, Fun_Cell_EN_negative_edge, Input_Sample, h_1_1,
                                                                                                                           h_1_2,
                                                                                                                           h_1_3,
                                                                                                                           h_1_4,
                                                                                                                           h_1_5
);

endmodule



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




module TOP_MATMUL2 #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire [DATA_WIDTH-1:0] In_1,
    input wire [DATA_WIDTH-1:0] In_2,
    input wire [DATA_WIDTH-1:0] In_3,
    input wire [DATA_WIDTH-1:0] In_4,
    input wire [DATA_WIDTH-1:0] In_5,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output wire [OUTPUT_WIDTH-1:0] Output_1,
    output wire [OUTPUT_WIDTH-1:0] Output_2,
    output wire [OUTPUT_WIDTH-1:0] Output_3,
    output wire [OUTPUT_WIDTH-1:0] Output_4,
    output wire [OUTPUT_WIDTH-1:0] Output_5,
    output wire [OUTPUT_WIDTH-1:0] Output_6,
    output wire [OUTPUT_WIDTH-1:0] Output_7,
    output wire [OUTPUT_WIDTH-1:0] Output_8,
    output wire [OUTPUT_WIDTH-1:0] Output_9,
    output wire [OUTPUT_WIDTH-1:0] Output_10,   
    output wire [OUTPUT_WIDTH-1:0] Output_11,
    output wire [OUTPUT_WIDTH-1:0] Output_12,
    output wire [OUTPUT_WIDTH-1:0] Output_13,
    output wire [OUTPUT_WIDTH-1:0] Output_14,
    output wire [OUTPUT_WIDTH-1:0] Output_15,
    output wire [OUTPUT_WIDTH-1:0] Output_16,
    output wire [OUTPUT_WIDTH-1:0] Output_17,
    output wire [OUTPUT_WIDTH-1:0] Output_18,
    output wire [OUTPUT_WIDTH-1:0] Output_19,
    output wire [OUTPUT_WIDTH-1:0] Output_20
);


wire [DATA_WIDTH-1:0] Output_K2_2_1;
wire [DATA_WIDTH-1:0] Output_K2_2_2;
wire [DATA_WIDTH-1:0] Output_K2_2_3;
wire [DATA_WIDTH-1:0] Output_K2_2_4;
wire [DATA_WIDTH-1:0] Output_K2_2_5;
wire [DATA_WIDTH-1:0] Output_K2_2_6;
wire [DATA_WIDTH-1:0] Output_K2_2_7;
wire [DATA_WIDTH-1:0] Output_K2_2_8;
wire [DATA_WIDTH-1:0] Output_K2_2_9;
wire [DATA_WIDTH-1:0] Output_K2_2_10;
wire [DATA_WIDTH-1:0] Output_K2_2_11;
wire [DATA_WIDTH-1:0] Output_K2_2_12;
wire [DATA_WIDTH-1:0] Output_K2_2_13;
wire [DATA_WIDTH-1:0] Output_K2_2_14;
wire [DATA_WIDTH-1:0] Output_K2_2_15;
wire [DATA_WIDTH-1:0] Output_K2_2_16;
wire [DATA_WIDTH-1:0] Output_K2_2_17;
wire [DATA_WIDTH-1:0] Output_K2_2_18;
wire [DATA_WIDTH-1:0] Output_K2_2_19;
wire [DATA_WIDTH-1:0] Output_K2_2_20;




wire [DATA_WIDTH-1:0] Output_R2_2_1;
wire [DATA_WIDTH-1:0] Output_R2_2_2;
wire [DATA_WIDTH-1:0] Output_R2_2_3;
wire [DATA_WIDTH-1:0] Output_R2_2_4;
wire [DATA_WIDTH-1:0] Output_R2_2_5;
wire [DATA_WIDTH-1:0] Output_R2_2_6;
wire [DATA_WIDTH-1:0] Output_R2_2_7;
wire [DATA_WIDTH-1:0] Output_R2_2_8;
wire [DATA_WIDTH-1:0] Output_R2_2_9;
wire [DATA_WIDTH-1:0] Output_R2_2_10;
wire [DATA_WIDTH-1:0] Output_R2_2_11;
wire [DATA_WIDTH-1:0] Output_R2_2_12;
wire [DATA_WIDTH-1:0] Output_R2_2_13;
wire [DATA_WIDTH-1:0] Output_R2_2_14;
wire [DATA_WIDTH-1:0] Output_R2_2_15;
wire [DATA_WIDTH-1:0] Output_R2_2_16;
wire [DATA_WIDTH-1:0] Output_R2_2_17;
wire [DATA_WIDTH-1:0] Output_R2_2_18;
wire [DATA_WIDTH-1:0] Output_R2_2_19;
wire [DATA_WIDTH-1:0] Output_R2_2_20;





Kernel_2_MULT K2M(clk, rst,     In_1,
                                In_2,
                                In_3,
                                In_4,
                                In_5,

                                Output_K2_2_1,
                                Output_K2_2_2,
                                Output_K2_2_3,
                                Output_K2_2_4,
                                Output_K2_2_5,
                                Output_K2_2_6,
                                Output_K2_2_7,
                                Output_K2_2_8,
                                Output_K2_2_9,
                                Output_K2_2_10,
                                Output_K2_2_11,
                                Output_K2_2_12,
                                Output_K2_2_13,
                                Output_K2_2_14,
                                Output_K2_2_15,
                                Output_K2_2_16,
                                Output_K2_2_17,
                                Output_K2_2_18,
                                Output_K2_2_19,
                                Output_K2_2_20);


Recurrent_2_MULT R2M(clk, rst, h_1,
                               h_2,
                               h_3,
                               h_4,
                               h_5,

                                Output_R2_2_1,
                                Output_R2_2_2,
                                Output_R2_2_3,
                                Output_R2_2_4,
                                Output_R2_2_5,
                                Output_R2_2_6,
                                Output_R2_2_7,
                                Output_R2_2_8,
                                Output_R2_2_9,
                                Output_R2_2_10,
                                Output_R2_2_11,
                                Output_R2_2_12,
                                Output_R2_2_13,
                                Output_R2_2_14,
                                Output_R2_2_15,
                                Output_R2_2_16,
                                Output_R2_2_17,
                                Output_R2_2_18,
                                Output_R2_2_19,
                                Output_R2_2_20);



Bias_2_ADD B2A(clk, rst, 
                                Output_K2_2_1,
                                Output_K2_2_2,
                                Output_K2_2_3,
                                Output_K2_2_4,
                                Output_K2_2_5,
                                Output_K2_2_6,
                                Output_K2_2_7,
                                Output_K2_2_8,
                                Output_K2_2_9,
                                Output_K2_2_10,
                                Output_K2_2_11,
                                Output_K2_2_12,
                                Output_K2_2_13,
                                Output_K2_2_14,
                                Output_K2_2_15,
                                Output_K2_2_16,
                                Output_K2_2_17,
                                Output_K2_2_18,
                                Output_K2_2_19,
                                Output_K2_2_20,

                                Output_R2_2_1,
                                Output_R2_2_2,
                                Output_R2_2_3,
                                Output_R2_2_4,
                                Output_R2_2_5,
                                Output_R2_2_6,
                                Output_R2_2_7,
                                Output_R2_2_8,
                                Output_R2_2_9,
                                Output_R2_2_10,
                                Output_R2_2_11,
                                Output_R2_2_12,
                                Output_R2_2_13,
                                Output_R2_2_14,
                                Output_R2_2_15,
                                Output_R2_2_16,
                                Output_R2_2_17,
                                Output_R2_2_18,
                                Output_R2_2_19,
                                Output_R2_2_20,

                                Output_1,
                                Output_2,
                                Output_3,
                                Output_4,
                                Output_5,
                                Output_6,
                                Output_7,
                                Output_8,
                                Output_9,
                                Output_10,
                                Output_11,
                                Output_12,
                                Output_13,
                                Output_14,
                                Output_15,
                                Output_16,
                                Output_17,
                                Output_18,
                                Output_19,
                                Output_20);

    
endmodule




module LAYER2_TOP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire function_enable,
    input wire [DATA_WIDTH-1:0] In_1,
    input wire [DATA_WIDTH-1:0] In_2,
    input wire [DATA_WIDTH-1:0] In_3,
    input wire [DATA_WIDTH-1:0] In_4,
    input wire [DATA_WIDTH-1:0] In_5,

    input wire [DATA_WIDTH-1:0] h_1,
    input wire [DATA_WIDTH-1:0] h_2,
    input wire [DATA_WIDTH-1:0] h_3,
    input wire [DATA_WIDTH-1:0] h_4,
    input wire [DATA_WIDTH-1:0] h_5,

    output wire [OUTPUT_WIDTH-1:0] i_1,
    output wire [OUTPUT_WIDTH-1:0] i_2,
    output wire [OUTPUT_WIDTH-1:0] i_3,
    output wire [OUTPUT_WIDTH-1:0] i_4,
    output wire [OUTPUT_WIDTH-1:0] i_5,
    output wire [OUTPUT_WIDTH-1:0] f_1,
    output wire [OUTPUT_WIDTH-1:0] f_2,
    output wire [OUTPUT_WIDTH-1:0] f_3,
    output wire [OUTPUT_WIDTH-1:0] f_4,
    output wire [OUTPUT_WIDTH-1:0] f_5,
    output wire [OUTPUT_WIDTH-1:0] c_1,
    output wire [OUTPUT_WIDTH-1:0] c_2,
    output wire [OUTPUT_WIDTH-1:0] c_3,
    output wire [OUTPUT_WIDTH-1:0] c_4,
    output wire [OUTPUT_WIDTH-1:0] c_5,
    output wire [OUTPUT_WIDTH-1:0] o_1,
    output wire [OUTPUT_WIDTH-1:0] o_2,
    output wire [OUTPUT_WIDTH-1:0] o_3,
    output wire [OUTPUT_WIDTH-1:0] o_4,
    output wire [OUTPUT_WIDTH-1:0] o_5
);

wire [DATA_WIDTH-1:0] BA_1;
wire [DATA_WIDTH-1:0] BA_2;
wire [DATA_WIDTH-1:0] BA_3;
wire [DATA_WIDTH-1:0] BA_4;
wire [DATA_WIDTH-1:0] BA_5;
wire [DATA_WIDTH-1:0] BA_6;
wire [DATA_WIDTH-1:0] BA_7;
wire [DATA_WIDTH-1:0] BA_8;
wire [DATA_WIDTH-1:0] BA_9;
wire [DATA_WIDTH-1:0] BA_10;
wire [DATA_WIDTH-1:0] BA_11;
wire [DATA_WIDTH-1:0] BA_12;
wire [DATA_WIDTH-1:0] BA_13;
wire [DATA_WIDTH-1:0] BA_14;
wire [DATA_WIDTH-1:0] BA_15;
wire [DATA_WIDTH-1:0] BA_16;
wire [DATA_WIDTH-1:0] BA_17;
wire [DATA_WIDTH-1:0] BA_18;
wire [DATA_WIDTH-1:0] BA_19;
wire [DATA_WIDTH-1:0] BA_20;

TOP_MATMUL2 MATMULT (
    clk, rst,

    In_1,
    In_2,
    In_3,
    In_4,
    In_5,

    h_1,
    h_2,
    h_3,
    h_4,
    h_5,

    BA_1 ,
    BA_2 ,
    BA_3 ,
    BA_4 ,
    BA_5 ,
    BA_6 ,
    BA_7 ,
    BA_8 ,
    BA_9 ,
    BA_10,
    BA_11,
    BA_12,
    BA_13,
    BA_14,
    BA_15,
    BA_16,
    BA_17,
    BA_18,
    BA_19,
    BA_20
);

top_function N1 (clk, rst, function_enable, BA_1, BA_6 , BA_11, BA_16, i_1, f_1, c_1, o_1 );
top_function N2 (clk, rst, function_enable, BA_2, BA_7 , BA_12, BA_17, i_2, f_2, c_2, o_2 );
top_function N3 (clk, rst, function_enable, BA_3, BA_8 , BA_13, BA_18, i_3, f_3, c_3, o_3 );
top_function N4 (clk, rst, function_enable, BA_4, BA_9 , BA_14, BA_19, i_4, f_4, c_4, o_4 );
top_function N5 (clk, rst, function_enable, BA_5, BA_10, BA_15, BA_20, i_5, f_5, c_5, o_5 );


endmodule



module LAYER2_MEGA_TOP #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire store_enable,
    input wire store_hidden_enable,
    input wire function_enable,

    input wire [DATA_WIDTH-1:0] In_1,
    input wire [DATA_WIDTH-1:0] In_2,
    input wire [DATA_WIDTH-1:0] In_3,
    input wire [DATA_WIDTH-1:0] In_4,
    input wire [DATA_WIDTH-1:0] In_5,

    output reg [DATA_WIDTH-1:0] h_2_1,
    output reg [DATA_WIDTH-1:0] h_2_2,
    output reg [DATA_WIDTH-1:0] h_2_3,
    output reg [DATA_WIDTH-1:0] h_2_4,
    output reg [DATA_WIDTH-1:0] h_2_5
);


wire [DATA_WIDTH-1:0] h_internal_1;
wire [DATA_WIDTH-1:0] h_internal_2;
wire [DATA_WIDTH-1:0] h_internal_3;
wire [DATA_WIDTH-1:0] h_internal_4;
wire [DATA_WIDTH-1:0] h_internal_5;

wire [DATA_WIDTH-1:0] i_internal_1;
wire [DATA_WIDTH-1:0] i_internal_2;
wire [DATA_WIDTH-1:0] i_internal_3;
wire [DATA_WIDTH-1:0] i_internal_4;
wire [DATA_WIDTH-1:0] i_internal_5;
wire [DATA_WIDTH-1:0] f_internal_1;
wire [DATA_WIDTH-1:0] f_internal_2;
wire [DATA_WIDTH-1:0] f_internal_3;
wire [DATA_WIDTH-1:0] f_internal_4;
wire [DATA_WIDTH-1:0] f_internal_5;
wire [DATA_WIDTH-1:0] c_internal_1;
wire [DATA_WIDTH-1:0] c_internal_2;
wire [DATA_WIDTH-1:0] c_internal_3;
wire [DATA_WIDTH-1:0] c_internal_4;
wire [DATA_WIDTH-1:0] c_internal_5;
wire [DATA_WIDTH-1:0] o_internal_1;
wire [DATA_WIDTH-1:0] o_internal_2;
wire [DATA_WIDTH-1:0] o_internal_3;
wire [DATA_WIDTH-1:0] o_internal_4;
wire [DATA_WIDTH-1:0] o_internal_5;

LAYER2_TOP LT(clk, rst, function_enable,
                        In_1,
                        In_2,
                        In_3,
                        In_4,
                        In_5,

                        h_internal_1,
                        h_internal_2,
                        h_internal_3,
                        h_internal_4,
                        h_internal_5,

                        i_internal_1,
                        i_internal_2,
                        i_internal_3,
                        i_internal_4,
                        i_internal_5,
                        f_internal_1,
                        f_internal_2,
                        f_internal_3,
                        f_internal_4,
                        f_internal_5,
                        c_internal_1,
                        c_internal_2,
                        c_internal_3,
                        c_internal_4,
                        c_internal_5,
                        o_internal_1,
                        o_internal_2,
                        o_internal_3,
                        o_internal_4,
                        o_internal_5
);





CELL_HIDDEN_BLOCK CHB1(clk, rst, store_enable, store_hidden_enable, i_internal_1,
                                                                    f_internal_1,
                                                                    c_internal_1,
                                                                    o_internal_1,

                                                                    h_internal_1
);

CELL_HIDDEN_BLOCK CHB2(clk, rst, store_enable, store_hidden_enable, i_internal_2,
                                                                    f_internal_2,
                                                                    c_internal_2,
                                                                    o_internal_2,
                                                                    
                                                                    h_internal_2
);

CELL_HIDDEN_BLOCK CHB3(clk, rst, store_enable, store_hidden_enable, i_internal_3,
                                                                    f_internal_3,
                                                                    c_internal_3,
                                                                    o_internal_3,
                                                                    
                                                                    h_internal_3
);

CELL_HIDDEN_BLOCK CHB4(clk, rst, store_enable, store_hidden_enable, i_internal_4,
                                                                    f_internal_4,
                                                                    c_internal_4,
                                                                    o_internal_4,
                                                                    
                                                                    h_internal_4
);

CELL_HIDDEN_BLOCK CHB5(clk, rst, store_enable, store_hidden_enable, i_internal_5,
                                                                    f_internal_5,
                                                                    c_internal_5,
                                                                    o_internal_5,
                                                                    
                                                                    h_internal_5
);

always @(*) begin
    h_2_1 <= h_internal_1;
    h_2_2 <= h_internal_2;
    h_2_3 <= h_internal_3;
    h_2_4 <= h_internal_4;
    h_2_5 <= h_internal_5;
end
endmodule




module LAYER2_GIGA #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire START_SYMBOL,
    input wire [DATA_WIDTH-1:0] In_1,
    input wire [DATA_WIDTH-1:0] In_2,
    input wire [DATA_WIDTH-1:0] In_3,
    input wire [DATA_WIDTH-1:0] In_4,
    input wire [DATA_WIDTH-1:0] In_5,

    output wire [DATA_WIDTH-1:0] h_2_1,
    output wire [DATA_WIDTH-1:0] h_2_2,
    output wire [DATA_WIDTH-1:0] h_2_3,
    output wire [DATA_WIDTH-1:0] h_2_4,
    output wire [DATA_WIDTH-1:0] h_2_5
);

wire Hidden_EN;
wire Hidden_EN_negative_edge;
wire Fun_Cell_EN;
wire Fun_Cell_EN_negative_edge;
CONTROLLER CTRL(clk, rst, START_SYMBOL, Hidden_EN, Fun_Cell_EN);
NEG_EDGE_ENABLE NEE1(clk, rst, Hidden_EN, Hidden_EN_negative_edge);
NEG_EDGE_ENABLE NEE2(clk, rst, Fun_Cell_EN, Fun_Cell_EN_negative_edge);
LAYER2_MEGA_TOP LMT(clk, rst, Fun_Cell_EN_negative_edge, Hidden_EN_negative_edge, Fun_Cell_EN_negative_edge, In_1,
                                                                                                             In_2,
                                                                                                             In_3,
                                                                                                             In_4,
                                                                                                             In_5,

                                                                                                             h_2_1,
                                                                                                             h_2_2,
                                                                                                             h_2_3,
                                                                                                             h_2_4,
                                                                                                             h_2_5
);

endmodule




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




module LAYER_12_BLOCK #(parameter DATA_WIDTH = 14, OUTPUT_WIDTH = 14) (
    input wire clk, rst,
    input wire START_SYMBOL,
    input wire [DATA_WIDTH-1:0] Input_Sample,

    output wire [DATA_WIDTH-1:0] h_2_1,
    output wire [DATA_WIDTH-1:0] h_2_2,
    output wire [DATA_WIDTH-1:0] h_2_3,
    output wire [DATA_WIDTH-1:0] h_2_4,
    output wire [DATA_WIDTH-1:0] h_2_5
);


wire [DATA_WIDTH-1:0] h_1_1;
wire [DATA_WIDTH-1:0] h_1_2;
wire [DATA_WIDTH-1:0] h_1_3;
wire [DATA_WIDTH-1:0] h_1_4;
wire [DATA_WIDTH-1:0] h_1_5;


LAYER1_GIGA L1G(clk, rst, START_SYMBOL, Input_Sample, h_1_1,
                                                      h_1_2,
                                                      h_1_3,
                                                      h_1_4,
                                                      h_1_5
);

LAYER2_GIGA L2G(clk, rst, START_SYMBOL, h_1_1,
                                        h_1_2,
                                        h_1_3,
                                        h_1_4,
                                        h_1_5,

                                        h_2_1,
                                        h_2_2,
                                        h_2_3,
                                        h_2_4,
                                        h_2_5
);

endmodule