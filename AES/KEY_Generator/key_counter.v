module key_counter (
input   wire       enable,
input   wire       clk,
input   wire       rst,
output  reg  [3:0] counter1,
output  reg  [3:0] counter2,
output  wire       done
);



always@(posedge clk or negedge rst)
begin
  if(!rst)
    begin
      counter1 <= 4'b0;
      counter2 <= 4'b0;
    end
  else if(enable)
    begin
        counter1 <= counter1+1;
        if(counter1 == 4'd8)
          begin
            counter1 <= 4'b0;
            counter2 <= counter2+1;
          end
    end
    else
      begin
        counter1 <= 4'b0;
        counter2 <= 4'b0;
      end
end

assign done = (counter2 == 4'ha & counter1 == 4'd0);

endmodule
