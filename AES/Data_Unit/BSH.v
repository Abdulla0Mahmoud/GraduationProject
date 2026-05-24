module BSH
    (
        input wire [31:0]data,         //changed 15 ->31
        input wire sel,
        input wire [1:0] shiftAmt,    // changed 3 -> 4
        output reg [31:0]f              //changed 15 ->31
    );
    
    
    always@(*)
    begin
      if (sel)
        begin
        case (shiftAmt)
            2'b00: f = data;
            2'b01: f = {data[23:0], data[31:24]};
            2'b10: f = {data[15:0], data[31:16]};
            2'b11: f = {data[7:0], data[31:8]};
            
            default  f = data;
        endcase
      end
    else
      begin
         case (shiftAmt)
            2'b00: f = data;
            2'b01: f = {data[7:0], data[31:8]};
            2'b10: f = {data[15:0], data[31:16]};
            2'b11: f = {data[23:0], data[31:24]};
            
            default  f = data;
        endcase
        
      end
    end
    
    
    
  endmodule