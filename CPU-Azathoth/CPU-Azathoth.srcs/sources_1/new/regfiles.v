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


module regfiles #(
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

    generate
        genvar i;

        for(i = 0; i < num; i = i + 1)
        begin : loop_registers
            reg [width-1:0] r;
        end

    endgenerate

    assign rdata1 = loop_registers[raddr1].r;
    assign rdata2 = loop_registers[raddr2].r;

    integer j;
    always @(posedge clk or negedge rst)
    begin
        if(rst)
                    for(j = 0; j < num; j = j + 1)
                    begin : reset_regs
                        loop_registers[i].r <= {(width){1'b0}};
                    end
        else if(we) begin
            loop_registers[waddr].r <= wdata;
        end
    end
endmodule
