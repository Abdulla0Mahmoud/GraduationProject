module Multi_3(
  input wire [7:0] x ,
  output wire [7:0] z
);

wire [7:0] y ;

Multi_2 m0 (
.a(x),
.b(y)
);

assign z = y ^ x;

endmodule
