module mux8_2to1(
  
  input wire  [7:0] W,X,
  input wire       mux2_sel,
  output reg  [7:0] mux2_out 
  
);



always@(*)
begin
case(mux2_sel)
  1'b0 : mux2_out = W ;
  1'b1 : mux2_out = X ;
endcase 
end

endmodule

