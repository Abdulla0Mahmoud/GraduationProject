module Multi_0C(
  input wire [7:0] X ,
  output wire [7:0] Z
);


// internal connections 
wire  [7:0]   chain2, chain3 ;



Multi_2 u3 (
.a(X),
.b(chain2)
);

Multi_2 u4 (
.a(chain2),
.b(chain3)
);


Multi_3 u5 (
.x(chain3),
.z(Z)
);

endmodule


