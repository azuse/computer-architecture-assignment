`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/23 21:07:31
// Design Name: 
// Module Name: test_tb
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


module test_tb(

    );
    reg clk_in;
    reg [12:0] imemAddr;
    wire [31:0] imemOut;
    
    initial begin
        clk_in = 0;
    end
    IMEM imem (
       .clka(clk_in),    // input wire clka
       .wea(0),      // input wire [0 : 0] wea
       .addra(imemAddr),  // input wire [12 : 0] addra
       .dina(null),    // input wire [31 : 0] dina
       .douta(imemOut)  // output wire [31 : 0] douta
    );
    always #5 clk_in = ~clk_in;
    
    initial begin
        #2 imemAddr = 0;
        #100 imemAddr = 0;
        #30 imemAddr = 2;
        #30 imemAddr = 3;
        #30 imemAddr = 4;
        #30 imemAddr = 5;
        #30 imemAddr = 6;
        #30 imemAddr = 7;
        #30 imemAddr = 8;
    end
endmodule
