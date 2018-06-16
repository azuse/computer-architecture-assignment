`timescale 1ns/1ns
`include "sdHeader.vh"
`define Root 1'b0
`define File 1'b1

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

    input iGetFileEn,

    input [63:0] iGetFileName,

    output reg oGetFileOk,

    output reg [31:0] debugInfo,
    output reg debugInfoAvailable,
    output ok
);

    localparam S_BL_RESET = 8'hFF;
    localparam S_BL_INIT = 8'h00;
    localparam S_BL_SDSTART = 8'h00;
    localparam N_BL_INITSCRIPT = "APOCLYPS";
    
    reg tmpError;
    reg [7:0] blState;

    reg [10:0] readByteCounter;
    reg [31:0] readSectorCounter;

    reg [23:0] mbrHeader;

    reg [31:0] dbrAddr;

    reg isFdd;

    reg [63:0] getFileName;

    always @(posedge clk)
    begin
        if (debugInfoAvailable)
            debugInfoAvailable <= `False;

        if (rootClusMemWe)
            rootClusMemWe <= `Disabled;

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
            if (sdReadOk) begin
                sdReadEn <= `Disabled;
                
                if (tmpError) begin
                    blState <= S_BL_ERROR;
                end else begin
                    blState <= S_BL_READDBR_PRE;
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
                    end else if (readByteCounter == 2) begin
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
                            debugInfo <= {24'hC0, sdReadData};
                            debugInfoAvailable <= `True;
                            tmpError <= `True;
                        end
                    end else if (!isFdd && readByteCounter >= 'h1C6 && readByteCounter <= 'h1C9)
                    begin
                        // 分区的 0 扇区位置
                        dbrAddr[((readByteCounter - 'h1C6) << 3 ) +: 8] <= sdReadData;
                    end 
                end
            end

            S_BL_READDBR_PRE:
                begin
                    readByteCounter <= 0;
                    readSectorCounter <= 0;
                    sdReadSectorNum <= 1;
                    sdReadAddr <= dbrAddr;
                    sdReadEn <= `Enabled;
                    blState <= S_BL_READDBR;
                    tmpError <= `False;
                end

            S_BL_READDBR:
                if (sdReadOk) begin
                    sdReadEn <= `Disabled;
                    if(!tmpError) begin
                        getFileName <= N_BL_INITSCRIPT;
                        blState <= S_BL_READROOTCLUS_PRE;
                        debugInfo <= BPB_FATSz32;
                        debugInfoAvailable <= `True;
                    end else begin
                        blState <= S_BL_ERROR;
                    end
                end else if (sdReadDataValid) begin
                    readByteCounter <= readByteCounter + 1;
                    if(sdReadDataASectorDone) begin
                        readByteCounter <= 0;
                        readSectorCounter <= readSectorCounter + 1;
                    end
                    
                    if(!tmpError) begin
                        if(readByteCounter == 13) begin
                            case (sdReadData)
                                1:BPB_SecPerClus_log2 <= 0;
                                2:BPB_SecPerClus_log2 <= 1;
                                4:BPB_SecPerClus_log2 <= 2;
                                8:BPB_SecPerClus_log2 <= 3;
                                16:BPB_SecPerClus_log2 <= 4;
                                32:BPB_SecPerClus_log2 <= 5;
                                64:BPB_SecPerClus_log2 <= 6;
                                default:begin
                                    debugInfo <= {24'hDC, sdReadData};
                                    debugInfoAvailable <= 1;
                                    tmpError <= `True;
                                end
                            endcase
                        end else if (readByteCounter == 14 || readByteCounter == 15) begin
                            BPB_RsvdSecCnt[((readByteCounter - 14) << 3) +: 8] <= sdReadData;
                        end else if (readByteCounter == 16) begin
                            BPB_NumFATs <= sdReadData;
                        end else if (readByteCounter >= 36 && readByteCounter < 40)
                        begin
                            BPB_FATSz32[((readByteCounter - 36) << 3) +: 8] <= sdReadData;
                        end else if (readByteCounter >= 44 && readByteCounter < 48)
                        begin
                            BPB_RootClusNum[((readByteCounter - 44) << 3) +: 8] <= sdReadData;
                        end
                    end
                end

            S_BL_READROOTCLUS_PRE:
                begin
                    currRootFATSecNum <= 32'hFFFFFFFF;
                    currFileFATSecNum <= 32'hFFFFFFFF;
                    currRootClusNum <= BPB_RootClusNum;
                    debugInfo <= {2'b10, BPB_SecPerClus_log2, BPB_RsvdSecCnt, BPB_NumFATs};
                    debugInfoAvailable <= `True;

                    
                    blState <= S_BL_READROOTCLUS_INVOKE;
                end
                
            S_BL_READROOTCLUS_INVOKE:
                begin
                    readByteCounter <= 0;
                    readSectorCounter <= 0;
                    tmpError <= `False;
                    sdReadEn <= `True;
                    sdReadSectorNum <= (1 << BPB_SecPerClus_log2);
                    sdReadAddr <= ((currRootClusNum - 2) << BPB_SecPerClus_log2) + firstClusSec;
                    blState <= S_BL_READROOTCLUS;
                end

            S_BL_READROOTCLUS:
                if (sdReadOk) begin
                    rootClusMemWe <= `Disabled;
                    sdReadEn <= `Disabled;
                    blState <= S_BL_SCANROOT_PRE;
                end else if (sdReadDataValid) begin
                    readByteCounter <= readByteCounter + 1;
                    if (sdReadDataASectorDone) begin
                        readByteCounter <= 0;
                        readSectorCounter <= readSectorCounter + 1;
                    end
                    rootClusMemWe <= `Enabled;
                    rootClusMemAddra <= (readSectorCounter << 9) | readByteCounter;
                    rootClusMemDina <= sdReadData;
                end

            S_BL_SCANROOT_PRE:
                begin
                    dirItemIndex <= 0;
                    scanRootState <= 0;
                    debugInfo <= sdReadAddr;
                    debugInfoAvailable <= `True;

                    blState <= S_BL_SCANROOT_DO;
                end

            S_BL_SCANROOT_INCREMENT:
                begin
                    if (dirItemIndex == (1 << dirItemsPerClus_log2) - 1) begin
                        // 读下一簇
                        blState <= S_BL_GETNEXTROOTCLUS;
                    end else begin
                        dirItemIndex <= dirItemIndex + 1;
                        scanRootState <= 0;
                        blState <= S_BL_SCANROOT_DO;
                    end
                end

            S_BL_SCANROOT_DO:
                begin
                    scanRootState <= scanRootState + 1;
                    case(scanRootState)
                        0:
                        begin
                            rootClusMemAddrb <= (dirItemIndex << 5) + 26;
                        end

                        1,2,3,4,5:
                        begin
                            if (scanRootState == 2) begin
                                rootClusMemAddrb <= rootClusMemAddrb - 7;
                            end else begin
                                rootClusMemAddrb <= rootClusMemAddrb + 1;
                            end

                            if (scanRootState == 1) begin
                                ;
                            end else begin
                                currFileClusNum[((scanRootState - 2) << 3) +: 8] <= rootClusMemDoutb;
                            end
                        end

                        6:
                        begin
                            if (currFileClusNum == 0) begin
                                scanRootState <= 0;
                                blState <= S_BL_SCANROOT_INCREMENT;
                            end else begin
                                rootClusMemAddrb <= (dirItemIndex << 5) + 0;
                            end
                        end

                        7,8,9,10,11,12,13,14,15:
                        begin
                            rootClusMemAddrb <= rootClusMemAddrb + 1;
                            if(scanRootState == 7) begin
                                ;
                            end else begin
                                // Big Endian
                                // Upper Case
                                currFileName[((15 - scanRootState) << 3) +: 8] <= ((rootClusMemDoutb >= 'h61 && rootClusMemDoutb <= 'h7a) ? (rootClusMemDoutb - 'h20) : rootClusMemDoutb);
                            end
                        end
                        
                        16:
                        begin
                            if (currFileName == getFileName) begin
                                rootClusMemAddrb <= (dirItemIndex << 5) + 11;
                            end else begin
                                debugInfo <= currFileName[32:0];
                                debugInfoAvailable <= `True;
                                blState <= S_BL_SCANROOT_INCREMENT;
                            end
                        end
                        
                        17:
                        ;

                        18:
                        begin
                            if((rootClusMemDoutb & 8'h0F) == 8'h0F) begin
                                debugInfo <= {{3{8'hA2}}, rootClusMemDoutb};
                                debugInfoAvailable <= `True;
                                blState <= S_BL_SCANROOT_INCREMENT;
                            end else begin
                                blState <= S_BL_READTEXTCLUS;
                            end
                        end
                    endcase
                end

            S_BL_GETNEXTROOTCLUS:
                begin
                    nextState <= S_BL_GETNEXTROOTCLUS_POST;
                    clusNumUse <= `Root;
                    blState <= S_BL_GETNEXTCLUSNUM;
                end

            S_BL_GETNEXTCLUSNUM:
                begin
                    nextNextState <= nextState;
                    if( (clusNumUse == `Root && ((currRootClusNum << 2) >> 9) + fatSecNum == currRootFATSecNum ) || (clusNumUse == `File && ((currFileClusNum << 2) >> 9) + fatSecNum == currFileFATSecNum )) begin
                        // 不需要读 FAT 表，之前已经读入过
                        blState <= S_BL_GETNEXTCLUSNUM_POST;
                    end else begin
                        fatClusAddr <= (clusNumUse == `Root) ? (((currRootClusNum << 2) >> 9) + fatSecNum) : ((currFileClusNum << 2) >> 9) + fatSecNum;
                        nextState <= S_BL_GETNEXTCLUSNUM_POST;
                        blState <= S_BL_READFATSEC_PRE;
                    end
                end

            S_BL_GETNEXTCLUSNUM:
                begin
                    debugInfo <= {8'hB5, fatClusAddr[23:0]};
                    debugInfoAvailable <= `True;
                    
                    if(clusNumUse == `File) begin
                        nextClusNum <= {fileFATSector[((currFileClusNum << 2) & 9'b111111111) + 3], fileFATSector[((currFileClusNum << 2) & 9'b111111111) + 2], fileFATSector[((currFileClusNum << 2) & 9'b111111111) + 1], fileFATSector[(currFileClusNum << 2) & 9'b111111111]};
                        currFileFATSecNum <= fatClusAddr;
                    end else begin
                        nextClusNum <= {rootFATSector[((currRootClusNum << 2) & 9'b111111111) + 3], rootFATSector[((currRootClusNum << 2) & 9'b111111111) + 2], rootFATSector[((currRootClusNum << 2) & 9'b111111111) + 1], rootFATSector[(currRootClusNum << 2) & 9'b111111111]};
                        currRootFATSecNum <= fatClusAddr;
                    end

                    blState <= nextNextState;
                end

            S_BL_READFATSEC_PRE:
                begin
                    sdReadEn <= `Enabled;
                    readByteCounter <= 0;
                    readSectorCounter <= 0;
                    sdReadSectorNum <= 1;
                    sdReadAddr <= fatClusAddr;
                    blState <= S_BL_READFATSEC;
                end

            S_BL_READFATSEC:
                if(sdReadOk) begin
                    blState <= nextState;
                    sdReadEn <= `Disabled;
                end else if (sdReadDataValid) begin
                    readByteCounter <= readByteCounter + 1;
                    if (sdReadDataASectorDone) begin
                        readByteCounter <= 0;
                        readSectorCounter <= readSectorCounter + 1;
                    end

                    if (clusNumUse == `File)
                        fileFATSector[readByteCounter] <= sdReadData;
                    else
                        rootFATSector[readByteCounter] <= sdReadData;
                end

            



        endcase

    end

endmodule