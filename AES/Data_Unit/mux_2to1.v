

module mux_2to1
    (
        input wire [31:0]a,b,
        input wire s,
        output reg [31:0]f
    );
    
    always@(*)
    begin
            case(s)
            1'b0: f = a;
            1'b1: f = b;
            default: f = a;
            endcase
     end
endmodule
