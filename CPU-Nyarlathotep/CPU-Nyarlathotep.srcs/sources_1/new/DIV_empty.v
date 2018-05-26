`timescale 1ns / 1ns

module DIV_empty(
    input clk,
    input ena,
    input [31:0] dividend,
    input [31:0] divisor,
    input isUnsigned,
    output [31:0] q,
    output [31:0] r,
    output busy
    );
    assign q = 32'hcdcdcdcd;
    assign r = 32'hefefefef;
    assign busy = 1'b0;
endmodule
