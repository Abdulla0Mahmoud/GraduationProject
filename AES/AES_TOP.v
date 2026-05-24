
module AES_TOP(
input wire AES_CLK,RST,
input wire AES_enc_dec,
input wire AES_start,
input wire [31:0] AES_input,
input wire [127:0] KEY,

output wire [31:0] AES_output
);

/////////////////////////////////////////////////////////////////
/////////////GLOBAL SIGNAL///////////////////////////////////////
/////////////////////////////////////////////////////////////////
wire Data_cell_SEL;
wire [3:0] KEY_NUM;
wire key_gen_EN;
wire KEY_state;
wire Sbox_mux_sel;
wire [31:0] Sbox_out;
wire [1:0] barrel_sel;
wire key_done;
wire key_read;
wire [31:0] key_Sbox;



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                          INSTANTATION                                                          //
/////////////////////////////////////////////////////////////////
/////////////CONTROLLER//////////////////////////////////////////
/////////////////////////////////////////////////////////////////
 AES_controller U0_AES_controller(
.CLK(AES_CLK),
.RST(RST),
.enc_dec(AES_enc_dec),
.start(AES_start),
.Data_cell_sel(Data_cell_SEL),
.key_number(KEY_NUM),
.Barrel_mux(barrel_sel),
.Key_done(key_done),
.Rd_en(key_read),
.Key_generator_EN(key_gen_EN)

);



/////////////////////////////////////////////////////////////////
/////////////DATA UNIT///////////////////////////////////////////
/////////////////////////////////////////////////////////////////

 DATA_UNIT U0_DATA_UNIT (
  
.KEY(KEY_state) ,
.IN(AES_input) ,
.InKEY(key_Sbox),
.Sel(AES_enc_dec),       // enryption or decryption
.clk(AES_CLK),
.SHIFTAmt(barrel_sel) ,    // Barrel shifter mux
.mux2_SEL(Sbox_mux_sel) ,         // between last row and sbox 
.Datacell_SEL(Data_cell_SEL) ,  // for each data cell
.rst(RST),
.sbox(Sbox_out) ,
.out(AES_output) 
  
);



/////////////////////////////////////////////////////////////////
/////////////key unit////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

 key_unit U0_KEY_UNIT(
.key_input(KEY),
.enable(key_gen_EN),
.input_sbox(Sbox_out),
.rd_en(key_read),
.clk(AES_CLK),
.rst(RST),
.key_output(KEY_state),
.done(key_done),
.output_sbox(key_Sbox),
.sbox_enable(Sbox_mux_sel)
);





endmodule