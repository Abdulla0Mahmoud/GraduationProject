module AES_controller(
input 		wire 					CLK,
input 		wire					RST,
input			wire					enc_dec,
input 		wire					start,
//input   wire     Key_done,
output reg        Rd_en,
output		reg 		[1:0]		Data_cell_sel,
output 		reg 		[3:0]		key_number,
output   reg    [1:0] Barrel_mux, 
output  reg         out_valid
//output		reg					Key_generator_EN

);

reg   [4:0]               current_state,
                          next_state;

localparam IDLE           =5'b00000,
           input_0	     =5'b00001,
			  input_1		  =5'b00010,
			  input_2        =5'b00011,
			  input_3        =5'b00100,
			  ADD_RND_KEY_1    =5'b00101,
			  Mix_col_S        =5'b00110,
			  shift_SUB_S	  =5'b00111,
			  inv_shift_SUB_S	  =5'b01000,
			  ADD_RND_KEY_S	  =5'b01001,
			  inv_Mix_col_S	  ='b01010,
			  OUTPUT_0		  =5'b01011,
			  OUTPUT_1		  =5'b01100,
			  OUTPUT_2		  =5'b01101,
			  OUTPUT_3		  =5'b01110,
			  inv_ADD_RND_KEY_S = 5'b01111,
			  ADD_RND_KEY_F	= 5'b10000,
			  shift_SUB_F   = 5'b10001,
			  inv_ADD_RND_KEY_F	= 5'b10011,
			  inv_shift_SUB_F = 5'b10010;
			  

localparam input_in  	  ='b10,
			  add_rnd_key	  ='b00,
			  vertical_input ='b11,
			  mix_col		  ='b01;
			  
			  
reg [3:0] counter_up, counter_down;
reg [1:0] sub_counter;
	reg counter_down_en,counter_up_en,sub_counter_en;
always @(posedge CLK or negedge RST)
begin
if(!RST)
begin
counter_up <= 1;

end
else
begin
if (counter_up_en )
begin

counter_up <= counter_up + 1;
if (counter_up == 'd10)
counter_up <= 'd0;

end
end
end
always @(posedge CLK or negedge RST)
begin
if(!RST)
begin
counter_down <= 'd11;

end
else
begin
if (counter_down_en )
begin
counter_down <= counter_down - 1;
 if (counter_down == 'd1)
counter_down <= 'd11; 
end

end
end


	
always @(posedge CLK or negedge RST)
begin
if(!RST)
begin
sub_counter <= 0;

end
else
begin
if (sub_counter_en )
begin
sub_counter <= sub_counter+ 1;
if (sub_counter == 'd3)
sub_counter <= 'd0;

end
else 
begin
sub_counter <= 'd0;
end 
end

end


		////FSM

//state transiton
always@(posedge CLK or negedge RST)
  begin
     if(!RST)
	    current_state<= IDLE;
		else
		 current_state <= next_state;
  end

// next state logic

always@(*)
begin
counter_up_en = 0 ;
counter_down_en = 0 ; 
sub_counter_en = 0 ;

case (current_state)
IDLE:		begin
if (start)
next_state = input_0;
else
next_state = IDLE;
			end
input_0:	begin
next_state = input_1;

			end
input_1:	begin
next_state = input_2;

			end		
input_2:	begin
next_state = input_3;


			end    
input_3:	begin

next_state = ADD_RND_KEY_1;
 
end
ADD_RND_KEY_1: begin
if (enc_dec)
begin
next_state = shift_SUB_S;
counter_up_en = 1 ;
end
else
begin
next_state = inv_shift_SUB_S;
counter_down_en = 1 ;
end
end
shift_SUB_S : begin
begin
sub_counter_en = 1 ;
if (sub_counter ==3)
next_state = Mix_col_S ;
else 
next_state = shift_SUB_S;

end

end
Mix_col_S: begin
next_state = ADD_RND_KEY_S ;
end
ADD_RND_KEY_S :begin
if (counter_up <= 'd9)
begin
next_state = shift_SUB_S; 
counter_up_en = 1 ;
end
else begin
next_state = shift_SUB_F;

end
end
shift_SUB_F:begin
begin
sub_counter_en = 1 ;
if (sub_counter ==3)
next_state = ADD_RND_KEY_F;
else 
next_state = shift_SUB_F;

end

end
ADD_RND_KEY_F : 
begin
next_state = OUTPUT_0;
end
OUTPUT_0 : 
begin
next_state = OUTPUT_1;
end
OUTPUT_1 : 
begin
next_state = OUTPUT_2;
end
OUTPUT_2 : 
begin
next_state = OUTPUT_3;
end
OUTPUT_3:
begin
next_state = IDLE;
end
inv_shift_SUB_S :
begin
begin
sub_counter_en = 1 ;
if (sub_counter ==3)
next_state = inv_ADD_RND_KEY_S;
else 
next_state = inv_shift_SUB_S;

end

end
inv_ADD_RND_KEY_S:begin
next_state = inv_Mix_col_S ; 
end
inv_Mix_col_S :
begin
if (counter_down > 2 )
begin
counter_down_en = 1 ;
next_state = inv_shift_SUB_S;

end
else 
next_state = inv_shift_SUB_F;

end
inv_shift_SUB_F: 
begin
sub_counter_en = 1 ;
if (sub_counter ==3)
next_state = inv_ADD_RND_KEY_F;
else 
next_state = inv_shift_SUB_F;

end
inv_ADD_RND_KEY_F:
begin
next_state = OUTPUT_0;
end
endcase
end	



// output calculation



always@(*)
begin
Data_cell_sel = 0;
key_number = 0 ;

Rd_en =0 ;
out_valid = 0 ;
case (current_state)
IDLE:		begin
Data_cell_sel = 0;
key_number = 0 ;


			end
input_0:	begin
Data_cell_sel = input_in;



			end
input_1:	begin
Data_cell_sel = input_in;



			end		
input_2:	begin
Data_cell_sel = input_in;




			end    
input_3:	begin

Data_cell_sel = input_in;
if (enc_dec)
  begin
key_number =counter_up -1 ;
Rd_en =1 ;
end
else
  begin
    key_number =counter_down - 1 ;
Rd_en =1 ; 
  end
  

end
ADD_RND_KEY_1: begin
if (enc_dec)
begin
//key_number =counter_up -1 ;
//Rd_en =1 ;
Data_cell_sel = add_rnd_key;
end
else
begin

Data_cell_sel = add_rnd_key;
end
end	
shift_SUB_S :begin
Data_cell_sel = vertical_input;
Barrel_mux = 3- sub_counter;
end
Mix_col_S: begin
Data_cell_sel = mix_col;
key_number =counter_up -1; 
Rd_en =1 ; 
end
ADD_RND_KEY_S :
begin

Data_cell_sel = add_rnd_key;
end
shift_SUB_F:begin
Data_cell_sel = vertical_input;
Barrel_mux = 3- sub_counter;
if (sub_counter ==3)
  begin

key_number ='d10; 
Rd_en =1 ;
end 
else
  begin
 Rd_en =0 ;
 end
end
ADD_RND_KEY_F :begin

Data_cell_sel = add_rnd_key;
end
OUTPUT_0 : 
begin
Data_cell_sel = input_in;
out_valid = 1 ;
end
OUTPUT_1: 
begin
Data_cell_sel = input_in;
out_valid = 1 ;
end
OUTPUT_2 : 
begin
Data_cell_sel = input_in;
out_valid = 1 ;
end
OUTPUT_3 : 
begin
Data_cell_sel = input_in;
out_valid = 1 ;
end
inv_shift_SUB_S: begin
Data_cell_sel = vertical_input;
Barrel_mux = 3-sub_counter;
if (sub_counter ==3)
  begin

key_number =counter_down -1; 
Rd_en =1 ;
end 
end
inv_ADD_RND_KEY_S:begin 
Data_cell_sel = add_rnd_key;
end
inv_Mix_col_S :begin
Data_cell_sel = mix_col;
end

inv_shift_SUB_F:begin
Data_cell_sel = vertical_input;
Barrel_mux = 3-sub_counter;
if (sub_counter ==3)
  begin

key_number =0; 
Rd_en =1 ;
end
end

inv_ADD_RND_KEY_F:begin
key_number =0; 
Data_cell_sel = add_rnd_key;
end






endcase
end	










endmodule