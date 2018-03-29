`timescale 1ns / 1ns
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
    reg start = 0;
    reg clock = 0;
    reg reset = 0;
    reg selSigned = 0;
    
    wire [31:0] quotient_u;
    wire [31:0] remainder_u;
    wire [31:0] quotient_s;
    wire [31:0] remainder_s;
    wire [31:0] quotient;
    wire [31:0] remainder;
    wire busy;
    
    DIVU uut1 (.dividend(dividend),
        .divisor(divisor),
        .start(start),
        .clock(clock),
        .reset(reset),
        .q(quotient_u),
        .r(remainder_u),
        .busy(busy)
    );
    
    DIV uut2 (.dividend(dividend),
        .divisor(divisor),
        .start(start),
        .clock(clock),
        .reset(reset),
        .q(quotient_s),
        .r(remainder_s),
        .busy(busy)
    );
    
    assign quotient = selSigned ? quotient_s : quotient_u;
    assign remainder = selSigned ? remainder_s : remainder_u;

    always begin
        #10 clock = ~clock;
    end

    initial begin
        selSigned = 0;
        dividend = 33;
        divisor = 4;
        #5 start = 1;
        #10 start = 0;
        #30
        dividend = 38;
        start = 1;
        #10
        start = 0;
        #10

        #20

        dividend = 32'h00000000;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        dividend = 32'hffffffff;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10

        dividend = 32'haaaaaaaa;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10

        dividend = 32'h7fffffff;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10
        ;
        
        #20
        reset = 1;

        #20
        reset = 0;
        
        #20

        selSigned = 1;
        dividend = -33;
        divisor = 4;
        start = 1;
        #10 start = 0;
        #30
        dividend = 38;
        divisor = -4;
        start = 1;
        #10
        start = 0;
        #10

        #20

        dividend = -401;
        divisor = -20;
        start = 1;
        #10
        start = 0;
        #10

        #20

        dividend = 32'h00000000;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10

        #20
        
        dividend = 32'hffffffff;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10

        dividend = 32'haaaaaaaa;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10

        dividend = 32'h7fffffff;
        divisor = 32'hffffffff;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'haaaaaaaa;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h55555555;
        start = 1;
        #10
        start = 0;
        #10

        divisor = 32'h7fffffff;
        start = 1;
        #10
        start = 0;
        #10
        ;

        #20
        reset = 1;

        #20
        reset = 0;
        
        #20
        ;
    end
endmodule
