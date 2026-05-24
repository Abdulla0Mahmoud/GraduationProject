
module NEG_EDGE_ENABLE (
    input wire clk, rst,
    input wire flag,

    output reg neg_enable
);

always @(negedge clk or negedge rst) begin
    if(!rst) begin
        neg_enable <= 1'b0;
    end
    else begin
        neg_enable <= flag;
    end
end
endmodule




////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////




module CONTROLLER (
    input wire clk , 
               rst ,
               enable_input,

    output reg Hidden_EN,
               Fun_Cell_EN
);
    
reg       C1    ,
          C1_reg;

reg [1:0] C2    ,
          C2_reg;

reg [1:0]  current_state,
           next_state   ;


localparam IDLE            = 'b00  ,
           mat_mul_state   = 'b01  ,
           enable_state    = 'b10  ;
           

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        current_state <= IDLE        ;
     end
    else begin 
        current_state <= next_state ;
    end
end

always @(*) begin
                Fun_Cell_EN = 0 ;
                Hidden_EN  = 0 ;
    case (current_state)
        IDLE: begin
            C1_reg = 0 ;
            C2_reg = 0 ;
            if (enable_input) begin
                next_state = mat_mul_state ;
            end
            else begin
                next_state = IDLE ;
            end
        end

        mat_mul_state : begin
            C1_reg = ~C1    ; 
            C2_reg  = 2'b00 ;
            if (enable_input == 1'b0)begin
                next_state = IDLE  ;
            end
            else if (C1) begin
                next_state = enable_state ;
            end
            else begin
                next_state = mat_mul_state ;
            end
        end

        enable_state : begin
            C1_reg = 1'b0      ;
            C2_reg = C2 + 1'b1 ;
            if (enable_input == 1'b0)begin
                next_state = IDLE  ;
                Fun_Cell_EN = 0 ;
                Hidden_EN  = 0 ;
            end
            else if (C2 == 2'b00 ) begin
                Fun_Cell_EN = 1 ;
                Hidden_EN  = 0 ;
                next_state = enable_state  ;
            end
            else if (C2 == 2'b10) begin
                next_state = mat_mul_state ;
                Fun_Cell_EN = 0 ;
                Hidden_EN  = 1 ;
            end
            else begin
                next_state = enable_state  ;
                Fun_Cell_EN = 0 ;
                Hidden_EN  = 0 ;
            end
        end

        default : next_state = IDLE ; 
    endcase
end

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        C1 <= 0 ;
        C2 <= 0 ;
    end
    else begin
        C1 <= C1_reg ;
        C2 <= C2_reg ;
    end
end

endmodule
