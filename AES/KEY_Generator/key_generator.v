module key_generator(
input   wire  [0:127]  key_input,
input   wire  [0:31]   input_sbox,
input   wire           enable, //must be 1 all the time this block working
input   wire  [3:0]    counter1,
input   wire  [3:0]    counter2,
input   wire           clk,
input   wire           rst,
output  wire  [0:127]  key_output,
output  reg   [3:0]    addr,
output  wire  [0:31]   output_sbox,
output  reg            sbox_enable,
output  reg            storage_enable
);

//internal registers
reg   [7:0]  w0   [0:3];
reg   [7:0]  w1   [0:3];
reg   [7:0]  w2   [0:3];
reg   [7:0]  w3   [0:3];
wire  [7:0]  sbox [0:3];
wire  [31:0] RCON [0:9];  

//main block
always@(posedge clk or negedge rst)
begin
  if(!rst)
    begin
      sbox_enable    <= 1'b0;
      storage_enable <= 1'b0;
      addr  <= 4'b0;
    end
  else if(enable)
    begin
      if(counter1 == 4'b0 & counter2 == 4'b0)
        begin
          w0[0] <= key_input[0:7];
          w0[1] <= key_input[8:15];
          w0[2] <= key_input[16:23];
          w0[3] <= key_input[24:31];
          w1[0] <= key_input[32:39];
          w1[1] <= key_input[40:47];
          w1[2] <= key_input[48:55];
          w1[3] <= key_input[56:63];
          w2[0] <= key_input[64:71];
          w2[1] <= key_input[72:79];
          w2[2] <= key_input[80:87];
          w2[3] <= key_input[88:95];
          w3[0] <= key_input[96:103];
          w3[1] <= key_input[104:111];
          w3[2] <= key_input[112:119];
          w3[3] <= key_input[120:127];
          storage_enable <= 1'b1;
          addr  <= 4'b0;
        end
      else if(counter1 == 4'd1)
        begin
          sbox_enable <= 1'b1;
          storage_enable <= 1'b0;
        end
      else if(counter1 == 4'd2)
        begin
          {w0[0],w0[1],w0[2],w0[3]} <= ({sbox[0],sbox[1],sbox[2],sbox[3]} ^ RCON[counter2]) ^ {w0[0],w0[1],w0[2],w0[3]};
          sbox_enable <= 1'b0;
          storage_enable <= 1'b0;
        end
      else if(counter1 == 4'd3)
        begin
          w1[0] <= w0[0] ^ w1[0];
          w1[1] <= w0[1] ^ w1[1];
          w1[2] <= w0[2] ^ w1[2];
          w1[3] <= w0[3] ^ w1[3];
          sbox_enable <= 1'b0;
          storage_enable <= 1'b0;
        end
      else if(counter1 == 4'd5)
        begin
          w2[0] <= w2[0] ^ w1[0];
          w2[1] <= w2[1] ^ w1[1];
          w2[2] <= w2[2] ^ w1[2];
          w2[3] <= w2[3] ^ w1[3];
          sbox_enable <= 1'b0;
          storage_enable <= 1'b0;
        end
      else if(counter1 == 4'd7)
        begin
          w3[0] <= w3[0] ^ w2[0];
          w3[1] <= w3[1] ^ w2[1];
          w3[2] <= w3[2] ^ w2[2];
          w3[3] <= w3[3] ^ w2[3];
          sbox_enable <= 1'b0;
          storage_enable <= 1'b0;
        end
      else if(counter1 == 4'd8)
        begin
          storage_enable <= 1'b1;
          addr           <= counter2+1;
        end  
    end
end

assign output_sbox = {w3[1],w3[2],w3[3],w3[0]};
assign key_output  = {w0[0],w0[1],w0[2],w0[3],w1[0],w1[1],w1[2],w1[3],w2[0],w2[1],w2[2],w2[3],w3[0],w3[1],w3[2],w3[3]};
assign sbox[0]     = input_sbox[0:7];
assign sbox[1]     = input_sbox[8:15];
assign sbox[2]     = input_sbox[16:23];
assign sbox[3]     = input_sbox[24:31];


assign  RCON[0]     = 32'h01000000;
assign  RCON[1]     = 32'h02000000;
assign  RCON[2]     = 32'h04000000;
assign  RCON[3]     = 32'h08000000;
assign  RCON[4]     = 32'h10000000;
assign  RCON[5]     = 32'h20000000;
assign  RCON[6]     = 32'h40000000;
assign  RCON[7]     = 32'h80000000;
assign  RCON[8]     = 32'h1b000000;
assign  RCON[9]     = 32'h36000000;



endmodule
