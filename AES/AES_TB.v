`timescale 1ns/1ps
module AES_TB();
  parameter CLK_PERIOD = 100 ;
integer i = 0;
  // signal declaration 

reg AES_CLK_tb,RST_tb;
reg AES_enc_dec_tb;
reg AES_start_tb;
reg [31:0] AES_input_tb;
reg [127:0] KEY_tb;
wire OUT_VALID_tb;
wire [31:0] AES_output_tb;
reg start_key_gen_tb;
wire key_done_tb;

  // DUT
 AES_TOP  DUT(
.AES_CLK(AES_CLK_tb),
.RST(RST_tb),
.AES_enc_dec(AES_enc_dec_tb),
.AES_start(AES_start_tb),
.AES_input(AES_input_tb),
.KEY(KEY_tb),
.key_Done(key_done_tb),
.OUT_VALID(OUT_VALID_tb),
.start_key_gen(start_key_gen_tb),
.AES_output(AES_output_tb)



);
  // CLK 
  always 
  begin
  #(CLK_PERIOD/2) 
  i = i+1;
  AES_CLK_tb = ~AES_CLK_tb ;
  
end
  // initial 
  
  initial 
  begin
    
// System Functions
 $dumpfile("AES_DUMP.vcd") ;       
 $dumpvars; 
 
 
    initialize();
    reset();
    KEY_tb  = 128'h5468617473206D79204B756E67204675;
    start_key_gen_tb = 1 ;
    #9003
    start_key_gen_tb = 0 ;
    AES_enc_dec_tb = 1 ;
    AES_start_tb= 1 ;
       # CLK_PERIOD ;
    AES_input_tb = 32'h54776F20;
    # CLK_PERIOD ;
    AES_input_tb = 32'h4F6E6520;
    # CLK_PERIOD ;
    AES_input_tb = 32'h4E696E65;
    # CLK_PERIOD ;
    AES_input_tb = 32'h2054776F;
    //# 6800
    #9000
    
  AES_enc_dec_tb = 1 ;
    AES_start_tb= 0 ;
    
    reset();
    #1000
    AES_enc_dec_tb = 0 ;
    AES_start_tb= 1 ;
       # CLK_PERIOD ;
    AES_input_tb = 32'h29C3505F;
    # CLK_PERIOD ;
    AES_input_tb = 32'h571420F6;
    # CLK_PERIOD ;
    AES_input_tb = 32'h402299B3;
    # CLK_PERIOD ;
    AES_input_tb = 32'h1A02D73A;
    //# 6800
    #9000
    
    //29C3505F 571420F6 402299B3 1A02D73A
    $stop;
    
    
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  // tasks
  
  task initialize ;
  begin
	AES_CLK_tb    = 1'b1  ;
	RST_tb    = 1'b1  ;    // rst is deactivated

 AES_enc_dec_tb= 'b0;
AES_start_tb= 'b0;
AES_input_tb = 'b0;
KEY_tb = 'b0;
start_key_gen_tb = 'b0;
  end
endtask

///////////////////////// RESET /////////////////////////

task reset ;
 begin
  #(CLK_PERIOD)
  RST_tb  = 'b0;           // rst is activated
  #(CLK_PERIOD)
  RST_tb  = 'b1;
  #(CLK_PERIOD) ;
 end
endtask
  
endmodule
