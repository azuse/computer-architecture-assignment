`timescale 1ns/1ns
module DIV(
  input [31:0] dividend,
  input [31:0] divisor,
  input start,
  input clock,
  input reset,
  output [31:0] q,
  output [31:0] r,
  output reg busy
);

wire [31:0] udividend;
wire [31:0] udivisor;
assign udividend=dividend[31]?(~dividend+1):dividend;
assign udivisor=divisor[31]?(~divisor+1):divisor;
reg [4:0] cnt;
reg [31:0] quotient;
reg [31:0] remainder;
reg [31:0] theCopyOfDivisor;
reg flag;
wire [32:0] subtractionAndAddition=flag?({remainder,q[31]}+{1'b0,theCopyOfDivisor}):({remainder,q[31]}-{1'b0,theCopyOfDivisor});
assign r=flag?(remainder+theCopyOfDivisor):remainder;
//assign q=quotient;
//assign r=dividend[31]?((~(flag?(remainder+theCopyOfDivisor):remainder))+1):(flag?(remainder+theCopyOfDivisor):remainder);
assign q=(dividend[31]^divisor[31])?((~quotient)+1):quotient;
always @(posedge clock or posedge reset) begin
  if(reset==1) begin
    cnt<=0;
    busy<=0;  
  end
  if(start)begin
    remainder<=0;
    flag<=0;
    quotient<=udividend;
    theCopyOfDivisor<=udivisor;
    cnt<=0;
    busy<=1;
  end else if (busy) begin
    remainder<=subtractionAndAddition[31:0];
    flag<=subtractionAndAddition[32];
    quotient<={quotient[30:0],~subtractionAndAddition[32]};
    cnt<=cnt+1;
    if (cnt==5'b11111) begin
      busy<=0;
    end
  end
end
endmodule // DIV