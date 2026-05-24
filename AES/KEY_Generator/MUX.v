module MUX(
input   wire    [2:0]     counter1,
input   wire    [3:0]     counter2,
input   wire    [0:127]   key_input_generator,
input   wire    [0:127]   key_input,
output  reg     [0:127]   out
);

always@(*)
begin
  if(counter1 == 2'b0 & counter2 == 3'b0)
    begin
      out = key_input;
    end
  else
    begin
      out = key_input_generator;
    end
end

endmodule