`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/11 17:54:44
// Design Name: 
// Module Name: azathoth
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


module azathoth(
    input clk,
    input wire reset
    );
    
    ////////////////////
    /// Parts Instantiating
    /// ALU
    wire [31:0] aluA;
    wire [31:0] aluB;
    wire [4:0] aluModeSel;
    wire [31:0] aluR;
    wire [31:0] aluRX;
    wire aluZero, aluCarry, aluNegative, aluOverflow;
    ALU alu(
        .A(aluA),
        .B(aluB),
        .modeSel(aluModeSel),
        .R(aluR),
        .RX(aluRX),
        .isRZero(aluZero),
        .isCarry(aluCarry),
        .isRNegative(aluNegative),
        .isOverflow(aluOverflow)
    );
    
    ////////////////
    /// DMEM
    /// Port A: For Read. Work at falling edge of clk.
    /// Port B: For Write. Work at rising edge of clk.
    wire [3:0] dmemAWe;
    wire [31:0] dmemAAddr;
    wire [31:0] dmemAIn;
    wire [31:0] dmemAOut;
    wire [3:0] dmemBWe;
    wire [31:0] dmemBAddr;
    wire [31:0] dmemBIn;
    wire [31:0] dmemBOut;
    DMEM dmem (
        .clka(clk),    // input wire clka
        .wea(dmemAWe),      // input wire [3 : 0] wea
        .addra(dmemAAddr[9:0]),  // input wire [9 : 0] addra
        .dina(dmemAIn),    // input wire [31 : 0] dina
        .douta(dmemAOut),  // output wire [31 : 0] douta
        .clkb(~clk),    // input wire clkb
        .web(dmemBWe),      // input wire [3 : 0] web
        .addrb(dmemBAddr[9:0]),  // input wire [9 : 0] addrb
        .dinb(dmemBIn),    // input wire [31 : 0] dinb
        .doutb(dmemBOut)  // output wire [31 : 0] doutb
    );

    //////////////
    /// IMEM
    ///
    wire imemWe;
    wire [31:0] imemAddr;
    wire [31:0] imemIn;
    wire [31:0] imemOut;
    IMEM imem (
        .clka(clk),    // input wire clka
        .wea(imemAddr),      // input wire [0 : 0] wea
        .addra(imemAddr[9:0]),  // input wire [9 : 0] addra
        .dina(imemIn),    // input wire [31 : 0] dina
        .douta(imemOut)  // output wire [31 : 0] douta
    );

    ///////////////
    /// Extender
    ///
    wire [31:0] extend1In;
    wire [5:0] extend1NOB;
    wire extend1Signed;
    wire [31:0] extend1Out;

    wire [31:0] extend2In;
    wire [5:0] extend2NOB;
    wire extend2Signed;
    wire [31:0] extend2Out;
    extender extend1(
        .in(extend1In),
        .numOfBits(extend1NOB),
        .isSigned(extend1Signed),
        .out(extend1Out)
    );

    extender extend2(
        .in(extend2In),
        .numOfBits(extend2NOB),
        .isSigned(extend2Signed),
        .out(extend2Out)
    );

endmodule
