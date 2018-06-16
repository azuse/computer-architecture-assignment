`timescale 1ns/1ns
`include "sdHeader.vh"
module bootloader(
    input clk,
    input reset,

    input en,
    input sdIdle,
    
    output reg sdStartEn,
    output reg sdReadEn,
    output reg [31:0] sdReadAddr,
    output reg [31:0] sdReadSectorNum,
    input sdStartOk,
    input sdReadOk,
    input [7:0] sdReadData,
    input sdReadDataValid,
    input sdReadDataASectorDone,

    output reg [31:0] debugInfo,
    output reg debugInfoAvailable,
    output ok
);

    localparam S_BL_RESET = 8'hFF;
    localparam S_BL_INIT = 8'h00;
    localparam S_BL_SDSTART = 8'h00;
    
    reg tmpError;
    reg [7:0] blState;

    reg [10:0] readByteCounter;
    reg [31:0] readSectorCounter;

    reg [23:0] mbrHeader;

    reg [31:0] dbrAddr;

    reg isFdd;

    always @(posedge clk)
    begin
        if (debugInfoAvailable)
            debugInfoAvailable <= `False;
            
        if(reset || S_BL_RESET) begin
           blState <= S_BL_INIT;
           sdStartEn <= `Disabled;
           sdReadEn <= `Disabled;
           tmpError <= `False;
           
        end else case(blState)
            S_BL_INIT:
            begin
                if (en) begin
                    blState <= S_BL_SDSTART;
                end
            end

            S_BL_START:
            begin
                if(sdStartOk) begin
                    blState <= S_BL_READSECTOR0_PRE;
                end else begin
                    sdStartEn <= `Enabled;
                end
            end

            S_BL_READSECTOR0_PRE:
            begin
                if (sdStartOk && sdIdle)
                begin
                    readByteCounter <= 0;
                    readSectorCounter <= 0;
                    sdReadSectorNum <= 1;
                    sdReadAddr <= 0;
                    sdReadEn <= `Enabled;
                    blState <= S_BL_READSECTOR0;
                    tmpError <= `False;
                    isFdd <= `False;`
                end else if (~sdStartOk)
                    blState <= S_BL_RESET;
            end

            S_BL_READSECTOR0:
            begin
                if (sdReadOk) begin
                    
                    if (tmpError) begin
                        blState <= S_BL_ERROR;

                    end else begin
                        blState <= S_BL_READDBR_PRE;
                        sdReadEn <= `Disabled;
                    end

                end else if (sdReadDataValid) begin
                    readByteCounter <= readByteCounter + 1;
                    if(sdReadDataASectorDone) begin
                        readByteCounter <= 0;
                        readSectorCounter <= readSectorCounter + 1;
                    end
                    
                    if(!tmpError) begin
                        if(readByteCounter < 2) begin
                            mbrHeader[(readByteCounter << 3) +: 8] <= sdReadData;
                        else if (readByteCounter == 2) begin
                            if(mbrHeader[7:0] == 8'hEB && sdReadData == 8'h90 || mbrHeader[7:0] == 8'hE9) begin
                                isFdd <= `True;
                                dbrAddr <= 0;
                            end
                        end else if (!isFdd && readByteCounter == 'h1C2) begin
                            if (sdReadData == 'h0B || sdReadData == 'h0C)
                            begin
                                // 第一个分区是 FAT32
                                ;
                            end else begin

                                



        endcase

    end

endmodule