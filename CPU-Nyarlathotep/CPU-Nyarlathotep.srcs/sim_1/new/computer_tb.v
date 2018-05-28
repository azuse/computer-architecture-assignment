`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/24 20:36:18
// Design Name: 
// Module Name: sccomp_dataflow_oj_tb
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


module computer_tb(

    );
    reg clk_in;
    wire clk_div;
    reg rst;
    wire [31:0] inst;
    wire [31:0] pc;
    wire [31:0] addr;
    
    reg [31:0] instPrev;
    reg [31:0] pcPrev;
    wire cpuRunning;

    integer file_output;
    reg cpuEna = 1'b1;

    computer uut(
        .clk_in(clk_in),
        .clk_afterDiv(clk_div),
        .cpuEna(cpuEna),
        .reset(rst),
        .inst(inst),
        .pc(pc),
        .addr(addr),
        .cpuRunning(cpuRunning)
    );
    
    initial begin
        clk_in = 0;
        rst = 1;
        file_output = $fopen("results.txt");
        #100
        //$readmemh("../../../Test/54_div.hex.txt", uut.imem.array_reg);
        #23
        rst = 0;
    end
    
    
    
    always #5 clk_in = ~clk_in;
    
    reg cpuDonotRecordFirst = 0;
endmodule
