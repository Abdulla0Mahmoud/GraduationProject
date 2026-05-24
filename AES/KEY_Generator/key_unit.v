module key_unit(
input   wire  [0:127]  key_input,
//input   wire  [0:31]   input_sbox,
input   wire           enable,
input   wire    [3:0]  rd_addr,
input   wire           rd_en,
input   wire           clk,
input   wire           rst,
output  wire   [0:127]  key_output,
//output  wire   [0:31]   output_sbox,
//output  wire            sbox_enable,
output  wire            done
);

//internal signal
wire    [3:0]   wr_addr;
wire            storage_enable;
wire    [3:0]   counter1;
wire    [3:0]   counter2;
wire    [0:127] out;
wire    [0:31]  input_sbox;
wire            sbox_enable;
wire    [0:31]   output_sbox;



//instansiation
key_storage storage(
.storage_in(out),
.wr_addr(wr_addr),
.rd_addr(rd_addr),
.rd_en(rd_en),
.wr_en(storage_enable),
.clk(clk),
.rst(rst),
.storage_out(key_output)
);





key_counter counter(
.enable(enable),
.clk(clk),
.rst(rst),
.counter1(counter1),
.counter2(counter2),
.done(done)
);


key_generator key_generator(
.key_input(key_input),
.input_sbox(input_sbox),
.enable(enable),
.counter1(counter1),
.counter2(counter2),
.clk(clk),
.rst(rst),
.key_output(out),
.addr(wr_addr),
.output_sbox(output_sbox),
.sbox_enable(sbox_enable),
.storage_enable(storage_enable)
);

sbox sbox1(
.sbox_input(output_sbox[0:7]),
.sbox_enable(sbox_enable),
.encr(1'b1),
.sbout(input_sbox[0:7])
);

sbox sbox2(
.sbox_input(output_sbox[8:15]),
.sbox_enable(sbox_enable),
.encr(1'b1),
.sbout(input_sbox[8:15])
);
sbox sbox3(
.sbox_input(output_sbox[16:23]),
.sbox_enable(sbox_enable),
.encr(1'b1),
.sbout(input_sbox[16:23])
);
sbox sbox4(
.sbox_input(output_sbox[24:31]),
.sbox_enable(sbox_enable),
.encr(1'b1),
.sbout(input_sbox[24:31])
);

endmodule
