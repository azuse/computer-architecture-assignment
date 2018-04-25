`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/20 13:28:19
// Design Name: 
// Module Name: adders
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module half_adder(input a, input b, output r, output c);
    assign r = a ^ b;
    assign c = a & b;
endmodule

module full_adder(input a, input b, input cprev, output r, output c);
    assign r = a ^ b ^ cprev;
    assign c = a & b | b & cprev | a & cprev;
endmodule