module Data_Cell (
  
  input wire CLK ,
  input wire RST ,
  input wire [7:0] key ,
  input wire [7:0] mixcolumn_in ,
  input wire [7:0] input_h ,
  input wire [7:0] input_v ,
  input wire [1:0] Datacell_sel,
  output reg [7:0] Datacell_op
  
);

reg [7:0] Mux_op ;
wire [7:0] addroundkey_op ;


always@(posedge CLK or negedge RST)
begin
   if(!RST)
    begin
    Datacell_op <= 8'b00000000;
  end
else 
   begin
    Datacell_op <= Mux_op ;
  end
end 


assign addroundkey_op = Datacell_op ^ key ;


always@(*)
begin
  case (Datacell_sel)
    2'b00 : begin 
            Mux_op = addroundkey_op ; 
            end
    2'b01 : begin
            Mux_op = mixcolumn_in ;
            end
    2'b10 : begin 
            Mux_op = input_h ;
            end
    2'b11 : begin 
            Mux_op = input_v ;
            end
  endcase
end
 
 
 assign addroundkey_op = Datacell_op ^ key ;
 
 
 endmodule           
  