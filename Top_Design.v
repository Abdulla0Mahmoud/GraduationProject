module Top_Design (

input   wire          CLK, RST,
input   wire          WR_EN, RD_EN,
input   wire  [7:0]   DATA,
output  wire          SER_OUT );



// internal connections 
wire  [7:0]   REG0, REG1, REG2 ;
wire  [7:0]   enc_out ;


REG_FILE U_regfile (
.clk(CLK),
.rst(RST),
.data(DATA),
.wr(WR_EN),
.rd(RD_EN),
.reg0(REG0),    // connected to encoder
.reg1(REG1),    // connected to encoder
.reg2(REG2)     // connected to serializer
);


ENCODER U_encoder (
.clk(CLK),
.rst(RST),
.data(DATA),
.reg0(REG0),                // connected to register file
.reg1(REG1),                // connected to register file
.encoded_out(enc_out)       // connected to serializer
); 

SERIALIZER U_serializer (
.clk(CLK),
.rst(RST),
.reg2(REG2),                 // connected to register file
.ser_in(enc_out),            // connected to encoder
.ser_out(SER_OUT)
); 


endmodule

