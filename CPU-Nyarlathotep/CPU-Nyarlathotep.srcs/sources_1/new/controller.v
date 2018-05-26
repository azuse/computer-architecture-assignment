module controller(
    input cpuRunning,
    output reg rfRAddr1,
    output reg rfRAddr2,
    output reg aluA,
    output reg aluModeSel,
    output reg rfWe,
    output reg rfWAddr,
    output reg rfWData,
    output reg extend16S_1In,
    output reg dmemAEn,
    output reg dmemAAddr,
    output reg bytePos,
    output reg extend16UIn,
    output reg aluB,
    output reg dmemAWe_orig,
    output reg dmemAIn,
    

);

    localparam BigEndianCPU = 1'b0;

    always @(*) begin
        if (cpuRunning) begin
            

            rfRAddr1 = rs;
            rfRAddr2 = rt;

            aluA = ((((iAdd | iAddu | iSub | iSubu) | (iAnd | iOr | iXor | iNor)) | ((iSlt | iSltu | iAddi) | (iAddiu | iAndi))) | (iOri | iXori | iLw | iSw | iBeq | iBne | iSlti | iSltiu | iDiv | iDivu | iMult | iMul | iMultu | iClz | iTeq)) ? rfRData1 : (iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iSb | iSh) ? rfRData2 : 32'h0;
            
            aluModeSel = ((iAdd | iAddi) ? ALU_SADD : 5'h00) | ((iAddu | iAddiu | iLw | iSw) ? ALU_UADD: 5'h00) | ((iSub) ? ALU_SSUB : 5'h00) | ((iSubu) ? ALU_USUB : 5'h00) | ((iAnd | iAndi) ? ALU_AND : 5'h00) | ((iOr | iOri) ? ALU_OR : 5'h00) | ((iXor | iXori) ? ALU_XOR : 5'h00) | ((iNor) ? ALU_NOR : 5'h00) | ((iSlt | iSlti) ? ALU_SLES : 5'h00) | ((iSltu | iSltiu) ? ALU_ULES : 5'h00) | ((iSll | iSb | iSh) ? ALU_SL : 5'h00) | ((iSrl | iSrlv) ? ALU_SRL : 5'h00) | ((iSra | iSrav) ? ALU_SRA : 5'h00) | ((iAdd | iAddi) ? ALU_SADD : 5'h00) | ((iBeq | iBne | iTeq) ? ALU_EQU : 5'h00) | ((iDiv) ? ALU_SDIV : 5'h00) | ((iDivu) ? ALU_UDIV : 5'h00) | ((iMult | iMul) ? ALU_SMUL : 5'h00) | ((iMultu) ? ALU_UMUL : 5'h00) | ((iClz) ? ALU_CLZ : 5'h00);

            rfWe = ((iAdd | iSub) & (aluOverflow ? `DISABLE : `ENABLE)) | ((iAddu | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iAddi | iAddiu | iAndi | iOri | iXori | iLw | iSlti | iSltiu | iLui | iJal | iMul | iJalr | iLbu | iLhu | iLb | iLh | iMfhi | iMflo | iMfc0 | iClz) & (`ENABLE));

            rfWAddr = ((iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iMul | iJalr | iMfhi | iMflo | iClz) ? rd : 5'h0) | ((iAddi | iAddiu | iAndi | iOri | iXori | iLw | iSlti | iSltiu | iLui | iLbu | iLhu | iLb | iLh | iMfc0) ? rt : 5'h0) | ((iJal) ? 5'd31 : 5'h0);

            rfWData = ((iLw) ? dmemAOut : 32'h0) | ((iLui) ? {imm, 16'h0} : 32'h0) | ((iJal | iJalr) ? pcPlus4 : 32'h0) | ((iLbu) ? extend8UOut : 32'h0) | ((iLhu) ? extend16UOut : 32'h0) | ((iLb) ? extend8SOut : 32'h0) | ((iLh) ? extend16S_2Out : 32'h0)  | ((iMfhi) ? hi : 32'h0) | ((iMflo) ? lo : 32'h0)  | ((iMfc0) ? cp0RData : 32'h0) | ((~iLw & ~iLui & ~iJal & ~iJalr & ~iLbu & ~iLhu & ~iLb & ~iLh & ~iMfhi & ~iMflo & ~iMfc0) ? aluR : 32'h0);

            extend16S_1In = imm;

            

            dmemAEn = ((iLw | iSw | iLbu | iLhu | iLb | iLh | iSb | iSh) & `ENABLE);

            dmemAAddr = ((iLw | iSw) ? aluR : uaddR);
            
            bytePos = ((iLbu | iLb | iSb) ? {3'b000, dmemAAddr[1:0] ^ {2{BigEndianCPU}}} : 5'h00) | ((iLhu | iLh | iSh) ? {3'b000, dmemAAddr[1] ^ BigEndianCPU, 1'b0} : 5'h00);

            extend16UIn = ((iAndi | iOri | iXori) ? imm : 16'h0) | ((iLhu) ? dmemAOut[8 * bytePos +: 16] : 16'h0);
            
            aluB = ((iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iBeq | iBne | iDiv | iDivu | iMult | iMul | iMultu | iTeq) ? rfRData2 : 32'h0) 
            | ((iSll | iSrl | iSra) ? shamt : 32'h0)
            | ((iSllv | iSrlv | iSrav) ? rfRData1 : 32'h0)
            | ((iAddi | iAddiu | iLw | iSw | iSlti | iSltiu) ? extend16S_1Out : 32'h0)
            | ((iAndi | iOri | iXori) ? extend16UOut : 32'h0)
            | ((iSb) ? (bytePos[1:0] << 3) : 32'h0)
            | ((iSh) ? (bytePos[1] ? 16 : 0) : 32'h0);
            
            

            dmemAWe_orig = ((iSw) ? 4'hf : 4'h0) | ((iSb) ? {(bytePos[1:0] == 2'h3), (bytePos[1:0] == 2'h2), (bytePos[1:0] == 2'h1), (bytePos[1:0] == 2'h0)} : 4'h0) | ((iSh) ? {(bytePos[1:0] == 2'h1), (bytePos[1:0] == 2'h1), (bytePos[1:0] == 2'h0), (bytePos[1:0] == 2'h0)} : 4'h0);

            dmemAIn = (iSw ? rfRData2 : 32'h0) | ((iSb | iSh) ? aluR : 32'h0);

            uaddA = ((iBeq | iBne | iBgez) ? pcPlus4 : 32'h0) | ((iLbu | iLhu | iLb | iLh | iSb | iSh) ? extend16S_1Out : 32'h0);

            uaddB = (iBeq | iBne | iBgez) ? (extend16S_1Out << 2) : rfRData1;

            nextHi = ((iDiv | iDivu | iMult | iMultu) ? aluRX : iMthi ? rfRData1 : hi);

            nextLo = ((iDiv | iDivu | iMult | iMultu) ? aluR : iMtlo ? rfRData1 : lo);

            extend8UIn = dmemAOut[8 * bytePos +: 8];

            extend8SIn = dmemAOut[8 * bytePos +: 8];

            extend16S_2In = dmemAOut[8 * bytePos +: 16];

            cp0Exception = ((iBreak | iSyscall | (iTeq & aluR[0])) & `ENABLE);

            cp0Cause = (iBreak ? {25'h0, `BREAKCAUSE, 2'h0} : 32'h0) | (iSyscall ? {25'h0, `SYSCALLCAUSE, 2'h0} : 32'h0) | ((iTeq & aluR[0]) ? {25'h0, `TEQCAUSE, 2'h0} : 32'h0);

            cp0Addr = rd;

            nextPC = ((iJr | iJalr) ? rfRData1 : 32'h0) | ((iBeq) ? (aluR[0] ? uaddR : pcPlus4) : 32'h0) | ((iBne) ? (aluR[0] ? pcPlus4 : uaddR) : 32'h0) | ((iJ | iJal) ? {pc[31:28], index, 2'b0} : 32'h0) | ((iBgez) ? (rfRData1[31] ? pcPlus4 : uaddR) : 32'h0) | ((iBreak | iSyscall | iTeq) ? (exceptionEntry) : 32'h0) | ((iEret) ? (cp0ExecAddr) : 32'h0) | ((~iJr & ~iJalr & ~iBeq & ~iBne & ~iJ & ~iJal & ~iBgez & ~iBreak & ~iSyscall & ~iTeq & ~iEret) ? pcPlus4 : 32'h0);

            trap = (iTeq & aluR[0]);

            cp0WData = rfRData1;
        end else begin
            bytePos = 'hx;

            rfRAddr1 = 'hx;

            rfRAddr2 = 'hx;

            aluA = 'hx;

            aluB = 'hx;

            aluModeSel = 'hx;

            rfWe = 0;

            rfWAddr = 'hx;

            rfWData = 'hx;

            extend16S_1In = 'hx;

            extend16UIn = 'hx;

            dmemAEn = 0;

            dmemAAddr = 'hx;

            dmemAWe_orig = 0;

            dmemAIn = 'hx;

            uaddA = 'hx;

            uaddB = 'hx;

            nextHi = hi;

            nextLo = lo;

            extend8UIn = 'hx;

            extend8SIn = 'hx;

            extend16S_2In = 'hx;

            cp0Exception = 0;

            cp0Cause = 0;

            cp0Addr = 'hx;

            trap = 0;

            cp0WData = 'hx;

            nextPC = 32'hABABABAB;
        end
    end
endmodule