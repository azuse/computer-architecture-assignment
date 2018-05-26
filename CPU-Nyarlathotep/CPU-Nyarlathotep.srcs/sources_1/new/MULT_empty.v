`timescale 1ns / 1ps

module MULT_empty (
    input clk,
    input ena,
    input isUnsigned,
    input signed [31:0] a,
    input signed [31:0] b,
    output signed [63:0] z,
    output carry,
    output busy
);

    assign z = 64'hABABABABABABABAB;
    assign carry = 1'b0;
    assign busy = 1'b0;


endmodule