`timescale 1ns/1ns
`include "sdHeader.vh"

module debugInfo(
    input CLK100MHZ,
    input clk_cpu,
    input reset,
    input [15:0] SW,
    input [31:0] pc,
    input [31:0] instruction,
    input [7:0] blState,
    input [7:0] sdState,
    input [31:0] debugInfo,
    input debugInfoAvailable,
    output [15:0] LED,
    output reg [31:0] sevenSegOut
);

    wire latch_n = SW[1];

    reg [31:0] instructionHistory [0:7];
    reg [31:0] regHistory [0:7];
    reg [31:0] debugInfoHistory [0:7];

    reg [31:0] blStateHistory;
    reg [31:0] sdStateHistory;
    

    integer i;

    always @(posedge clk_cpu)
    begin
        if (reset) begin
            for (i = 0; i < 8; i++) begin
                instructionHistory[i] <= 0;
                regHistory[i] <= 0;
            end
        end else begin
            if (~latch_n) begin
                if(regHistory[0] != pc) begin
                    for (i = 0; i < 8; i++) begin
                        regHistory[i + 1] <= regHistory[i];
                        instructionHistory[i + 1] <= regHistory[i];
                    end

                    regHistory[0] <= pc;
                    instructionHistory[0] <= instruction;
                end
            end
        end
    end

    always @(posedge CLK100MHZ)
    begin
        if (reset) begin
            blStateHistory <= 0;
            sdStateHistory <= 0;
            for (i = 0; i < 8; i++) begin
                debugInfoHistory[i] <= 0;
            end
        end else begin
            if (~latch_n) begin
                if (blState != blStateHistory[7:0])
                    blStateHistory <= {blStateHistory[23:0], blState};

                if (sdState != sdStateHistory[7:0])
                    sdStateHistory <= {sdStateHistory[23:0], sdState};

                if(debugInfoAvailable)
                begin
                    for (i = 0; i < 8; i++) begin
                        debugInfoHistory[i + 1] <= debugInfoHistory[i];
                    end
                    debugInfoHistory[0] <= debugInfo;
                end
            end
        end
    end

    always @(*)
    begin
        case (SW[7:3])
            0:
                sevenSegOut = regHistory[SW[10:8]];
            1:
                sevenSegOut = sevenSegOut_cpu;
            2:
                sevenSegOut = debugDMEMData;
            3:
                sevenSegOut = debugRFData;
            4:
                sevenSegOut = sdStateHistory;
            5:
                sevenSegOut = debugInfo[0];
            default:
                sevenSegOut = 'hFFFFFFFF;
        endcase
    end

endmodule


