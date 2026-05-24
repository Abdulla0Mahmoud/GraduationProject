
module barrelShifter_32
    (
        input wire [31:0]data,         //changed 15 ->31
        input wire sel,
        input wire [1:0] shiftAmt,    // changed 3 -> 4
        output wire [31:0]f              //changed 15 ->31
    );
    
    //signal declarations
     wire [31:0] r0;             //changed 15 ->31
     wire [31:0] L0;         //add 1 additional stage
     wire [31:0]x0,x1;                
     
      //rotate right 
      
      assign r0= shiftAmt[0] ? {data[7:0], data[31:8]} : data;          //Stage 0, rotate by 0 or 8     
      
      assign x0= shiftAmt[1] ? {r0[15:0], r0[31:16]} : r0;     //Stage 1, rotate by 0 or 16          
      
      //rotate left
      
      assign L0 = shiftAmt[0] ? {data[23:0], data[31:24]} : data;       //Stage 0, rotate by 0 or 8         
  
      assign x1 = shiftAmt[1] ? {L0[15:0], L0[31:16]} : L0;           //Stage 1, rotate by 0 or 16                
           
      mux_2to1 M0(.a(x0),.b(x1),.s(sel),.f(f));                           //instantiate 2 to 1 MUX 
      
endmodule
