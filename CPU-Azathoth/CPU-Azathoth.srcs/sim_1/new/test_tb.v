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
    reg[31:0] cnt;
    reg flag;
    
    initial begin
        clk_in = 0;
        cnt = 0;
        flag = 0;
    end
    
    initial begin
        #20
        forever #5 clk_in = ~clk_in;
    end
    
    always @(posedge clk_in) begin
        cnt <= cnt + 1;
    end
    
    always @(posedge clk_in) begin
        if(cnt > 0)
            flag <= 1;
    end
endmodule
