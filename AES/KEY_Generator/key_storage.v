module key_storage(
input   wire    [0:127]    storage_in,
input   wire    [3:0]      wr_addr,
input   wire    [3:0]      rd_addr,
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
      storage_out <= mem[rd_addr];
    end
  else if(wr_en)
    begin
      mem[wr_addr] <= storage_in;
    end
end

endmodule
