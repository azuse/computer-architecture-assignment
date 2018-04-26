`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/23 14:42:41
// Design Name: 
// Module Name: cpu_div_tb
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


module cpu_div_tb(

    );
    reg clk_in;
    reg rst;
    wire clk_out_1;
    cpu_div uut1(.clk_in(clk_in), .rst(rst), .clk_out(clk_out_1));
    
    initial begin
        clk_in = 0;
        rst = 0;
    end
    always #5 clk_in = ~clk_in;
    
    initial begin
        #63 rst = 1;
        #30 rst = 0;
        #30 rst = 0;
    end
endmodule
