`timescale 1ns/1ns
module DIV_tb;

reg [31:0] dividend;
reg [31:0] divisor;
wire [31:0] q;
wire [31:0] r;
reg start;
reg clock;
reg reset;
wire busy;

DIV DIV_inst(
  .dividend(dividend),
  .divisor(divisor),
  .start(start),
  .clock(clock),
  .reset(reset),
  .q(q),
  .r(r),
  .busy(busy)
);

initial begin
clock=0;
reset=1;
#1 clock=1;
#1 clock=0;
reset=0;
start=1;
dividend=0;
divisor={32{1'b1}};
#1 clock=1;
#1 clock=0;
repeat (32) begin
    #1 clock=1;
    start=0;
    #1 clock=0;
  end
start=1;
dividend={32{1'b1}};
#1 clock=1;
#1 clock=0;
repeat (32) begin
    #1 clock=1;
    start=0;
    #1 clock=0;
  end
dividend=-5;
divisor=6;
start=1;
#1 clock=1;
#1 clock=0;
repeat (32) begin
    #1 clock=1;
    start=0;
    #1 clock=0;
  end
dividend=-6;
divisor=-5;
start=1;
#1 clock=1;
#1 clock=0;
repeat (32) begin
    #1 clock=1;
    start=0;
    #1 clock=0;
  end
end
endmodule // DIV_tb
