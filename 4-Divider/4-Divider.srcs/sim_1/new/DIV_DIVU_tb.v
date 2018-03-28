`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/28 18:03:50
// Design Name: 
// Module Name: DIV_DIVU_tb
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


module DIV_DIVU_tb(

    );
    reg [31:0] dividend;
    reg [31:0] divisor;
    wire [31:0] quotient;
    wire [31:0] remainder;
    
    DIVU uut1 (.dividend(dividend),
        .divisor(divisor),
        .q(quotient),
        .r(remainder)
   );
   
   initial begin
       dividend = 33;
       divisor = 4;
       #20
       dividend = 37;
   end
endmodule
