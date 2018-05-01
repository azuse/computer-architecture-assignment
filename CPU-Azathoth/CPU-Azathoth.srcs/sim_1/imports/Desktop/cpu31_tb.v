`timescale 1ns/1ns
module cpu_tb;
reg clk;
reg rst;
initial
begin
  clk=0;
  rst=1;
  #10 rst=0;
end
always begin
  #10 clk=~clk;
end
wire [31:0] inst;
wire [31:0] pc;
wire [31:0] addr;
machine cpu_inst(
  .clk(clk),
  .rst(rst),
  .pc(pc)
);
endmodule // cpu_tb