`timescale 1ns / 1ns
/// CoProcessor 0 Module
module Trapezohedron(
    input clk,
    input rst,
    input mfc0,
    input mtc0,
    input [31:0] pc,
    input [4:0] addr,
    input [31:0] data,
    input exception,
    input eret,
    input [31:0] cause,
    input intr,
    output reg [31:0] PC0_out,
    output [31:0] status,
    output reg [31:0] epc_out
);

    reg [31:0] cause_reg;
    reg [31:0] status_reg;
    reg [31:0] epc_reg;

    assign status = status_reg;
    wire [4:0] excCode = cause[6:2];

    always @(*) begin
        if(mfc0) begin
            if(addr == 12)
                PC0_out = status_reg;
            else if (addr == 13)
                PC0_out = cause_reg;
            else if (addr == 14)
                PC0_out = epc_reg;
            else
                PC0_out = 32'hacacacac;
        end
        else PC0_out = 32'hbcbcbcbc;
    end

    always @(*) begin
        if(eret) begin
            epc_out = epc_reg;
        end else begin
            epc_out = 32'h87878787;
        end
    end

    wire interruptEna = status_reg[0];
    wire syscallMask = status_reg[1];
    wire breakMask = status_reg[2];
    wire teqMask = status_reg[3];

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            cause_reg <= 0;
            status_reg <= 32'b1111;
            epc_reg <= 0;
        end else if(eret) begin
            status_reg <= status_reg >> 5;
        end else if (exception && interruptEna) begin
            if((excCode == 'b01000) && syscallMask) begin
                // Syscall
                cause_reg[6:2] <= excCode;
                status_reg <= status_reg << 5;
                epc_reg <= pc;
            end else if((excCode == 'b01001) && breakMask) begin
                // Break
                cause_reg[6:2] <= excCode;
                status_reg <= status_reg << 5;
                epc_reg <= pc;
            end else if((excCode == 'b01101) && teqMask) begin
                // Teq
                cause_reg[6:2] <= excCode;
                status_reg <= status_reg << 5;
                epc_reg <= pc;
            end else if(excCode == 'b00000) begin
                // Outside Interrupt
                cause_reg[6:2] <= excCode;
                status_reg <= status_reg << 5;
                epc_reg <= pc;
            end
        end else if(mtc0) begin
            if (addr == 12)
                status_reg <= data;
            else if (addr == 13)
                cause_reg <= data;
            else if (addr == 13)
                epc_reg <= data;
        end

    end
endmodule
