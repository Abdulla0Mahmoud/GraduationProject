module EnergyDetection (
    input wire clk,
    input wire reset,
    input wire [13:0] sample_in,
    output reg detection
);

parameter L = 10; // window size                     (10 samples per window)

reg [13:0] sample_window [0:L-1];
reg [L-1:0] sum;


integer sum_temp;
integer i; 
integer threshold = 14'b00001000000000;       // بالحب كده 


always @(posedge clk or negedge reset) begin
    if (!reset) begin
        for (i = 0; i < L; i = i + 1) begin
            sample_window[i] <= 0;
        end
        sum <= 0;
    end
    else 
     begin
        for (i = L-1; i > 0; i = i - 1)
         begin
            sample_window[i] <= sample_window[i-1];
        end
        sample_window[0] <= sample_in;
        sum_temp = 0;
        for (i = 0; i < L; i = i + 1)
         begin
            sum_temp = sum_temp + sample_window[i] * sample_window[i]; // Square each sample value
        end
        sum <= sum_temp;
    end
end


always @(posedge clk or negedge reset) begin
    if (!reset)
        detection <= 1'b0;
    else begin
        if (sum > threshold)
            detection <= 1'b1;
        else
            detection <= 1'b0;
    end
end

endmodule
