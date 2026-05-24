module key_storage(
input   wire    [0:127]    storage_in,
input   wire    [3:0]      addr,
input   wire               rd_en,
input   wire               wr_en,
input   wire               clk,
input   wire               rst,
output  reg     [0:127]    storage_out
);

reg   [0:127]   mem   [0:10];

always@(posedge clk or negedge rst)
begin
  if(!rst)
    begin
      storage_out <= 128'd0;
    end
  else if(rd_en)
    begin
      storage_out <= mem[addr];
    end
  else if(wr_en)
    begin
      mem[addr] <= storage_in;
    end
end

endmodule
