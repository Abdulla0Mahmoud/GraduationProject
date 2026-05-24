module Multi_2(
  input wire [7:0] a ,
  output reg [7:0] b
);


always@(*)
begin
  if(a[7] == 1) b = ((a << 1) ^ 8'h1b);
			else b = a << 1; 
end

endmodule