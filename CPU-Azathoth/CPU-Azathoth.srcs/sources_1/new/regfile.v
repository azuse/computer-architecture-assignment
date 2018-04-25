`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/12 13:50:45
// Design Name: 
// Module Name: regfiles
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


module regfile #(
    parameter num = 32,
    parameter width = 32,
    parameter numlog = 5
)(
    input clk,
    input rst,
    input we,
    input [numlog-1:0] raddr1,
    input [numlog-1:0] raddr2,
    input [numlog-1:0] waddr,
    output [width-1:0] rdata1,
    output [width-1:0] rdata2,
    input [width-1:0] wdata
    );

    reg [width - 1:0] array_reg [0:num - 1];

    assign rdata1 = array_reg[raddr1];
    assign rdata2 = array_reg[raddr2];

    integer j;
    always @(posedge clk or posedge rst)
    begin
        if(rst) begin
            for(j = 0; j < num; j = j + 1)
            begin : reset_regs
                array_reg[j] <= {(width){1'b0}};
            end
        end else if(we) begin
            if(waddr == 0)  // zero register $zero
                array_reg[waddr] <= {(width){1'b0}};
            else
                array_reg[waddr] <= wdata;
        end
    end
endmodule
