module Multi_08(
  input wire [7:0] A ,
  output wire [7:0] B
);


// internal connections 
wire  [7:0]   chain0, chain1 ;



Multi_2 u0 (
.a(A),
.b(chain0)
);

Multi_2 u1 (
.a(chain0),
.b(chain1)
);


Multi_2 u2 (
.a(chain1),
.b(B)
);

endmodule


