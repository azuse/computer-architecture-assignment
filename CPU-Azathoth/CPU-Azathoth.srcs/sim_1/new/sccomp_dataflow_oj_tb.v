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


module sccomp_dataflow_oj_tb(

    );
    reg clk_in;
    reg rst;
    wire [31:0] inst;
    wire [31:0] pc;
    wire [31:0] addr;
    
    sccomp_dataflow uut(
        .clk_in(clk_in),
        .reset(rst),
        .inst(inst),
        .pc(pc),
        .addr(addr)
    );
    
    initial begin
        clk_in = 0;
        rst = 1;
        #20
        $readmemh("D:/Projects/CompArch/CPU-Azathoth/Test/1_addi.hex.txt", uut.imem.array_reg);
        #23
        rst = 0;
    end
    
    
    
    always #5 clk_in = ~clk_in;
    
    initial begin
        
    end
endmodule
