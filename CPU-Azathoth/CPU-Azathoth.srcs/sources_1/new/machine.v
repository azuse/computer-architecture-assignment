`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/30 00:32:56
// Design Name: 
// Module Name: machine
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


module machine(
    input clk,
    input rst,
    output reg [31:0] pc
    );
    always @(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            pc <= 0;
        end else
            pc <= pc + 4;
    end
endmodule
