`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/28 10:43:59
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
    reg A;
    reg Z;
    wire B;
    test uut (.A(A), .Z(Z), .B(B));
    
    initial begin
        A = 1;
        Z = 0;
        #20
        A = 0;
    end
endmodule
