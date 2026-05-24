module Inv_Mixcolumns (
  
  input  wire [31:0] Win ,
  input  wire  sel ,
  output reg [31:0] Wout
  
);


wire  [7:0]   chain4, chain5,chain6, chain7,chain8, chain9,chain10, chain11,chain12, chain13,chain14, chain15;
reg  [31:0]  Eout,Dout;


Multi_2 u5 (
.a(Win[31:24]),
.b(chain4)
);


Multi_2 u6 (
.a(Win[23:16]),
.b(chain5)
);


Multi_2 u7 (
.a(Win[15:8]),
.b(chain6)
);


Multi_2 u8 (
.a(Win[7:0]),
.b(chain7)
);

Multi_08 u9 (
.A(Win[31:24]),
.B(chain8)
);


Multi_0C u10 (
.X(Win[31:24]),
.Z(chain9)
);


Multi_08 u11 (
.A(Win[23:16]),
.B(chain10)
);


Multi_0C u12 (
.X(Win[23:16]),
.Z(chain11)
);


Multi_08 u13 (
.A(Win[15:8]),
.B(chain12)
);


Multi_0C u14 (
.X(Win[15:8]),
.Z(chain13)
);


Multi_08 u15 (
.A(Win[7:0]),
.B(chain14)
);


Multi_0C u16 (
.X(Win[7:0]),
.Z(chain15)
);




always@(*)
begin
Eout[31:24]  = chain4^chain5^Win[23:16]^Win[15:8]^Win[7:0];
Eout[23:16] = Win[31:24]^chain6^chain5^Win[15:8]^Win[7:0];
Eout[15:8]= Win[31:24]^Win[23:16]^chain6^chain7^Win[7:0];
Eout[7:0]= Win[31:24]^chain4^Win[23:16]^Win[15:8]^chain7;
Dout[31:24]  = Eout[31:24]^chain9^chain10^chain13^chain14;
Dout[23:16] = Eout[23:16]^chain8^chain11^chain12^chain15;
Dout[15:8]= Eout[15:8]^chain9^chain10^chain13^chain14;
Dout[7:0] = Eout[7:0]^chain8^chain11^chain12^chain15;

case(sel)
  1'b0 : Wout = Dout ;
  1'b1 : Wout = Eout ;
endcase 
  
end

endmodule