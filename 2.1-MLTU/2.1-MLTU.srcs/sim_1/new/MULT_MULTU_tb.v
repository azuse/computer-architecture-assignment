`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/20 13:02:34
// Design Name: 
// Module Name: MULTU_tb
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


module MULT_MULTU_tb(

    );
    reg [31:0] a;
    reg [31:0] b;
    reg isSigned;
    wire [63:0] z_unsigned;
    wire [63:0] z_signed;
    
    wire [63:0] z;
    
    MULT uut(.a(a), .b(b), .z(z_signed));
    MULTU uut2(.a(a), .b(b), .z(z_unsigned));
    
    assign z = isSigned ? z_signed : z_unsigned;
    
    initial begin
        a = 45;
        b = 11;
        isSigned = 0;
        #20
        a = 32'b11111111111111111111111111111111;
        b = 32'b11111111111111111111111111111111;
        #20
        isSigned = 1;
        #20
        a = -12;
        b = 11;
        #20
        isSigned = 0;
    end
endmodule
