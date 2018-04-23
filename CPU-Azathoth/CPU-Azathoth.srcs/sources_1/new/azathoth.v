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
    input wire reset,
    
    output dmemAEn,
    output [3:0] dmemAWe,
    output [31:0] dmemAAddr,
    output [31:0] dmemAIn,
    input [31:0] dmemAOut,

    output dmemBEn,
    output [3:0] dmemBWe,
    output [31:0] dmemBAddr,
    output [31:0] dmemBIn,
    input [31:0] dmemBOut,

    output [31:0] pc,   //imemAddr
    input [31:0] inst   //imemOut
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
    
    /////////////////////////////////////
    /// Special structure
    /// Instruction Decoder
    wire [31:0] instruction;

endmodule
