`timescale 1ns / 1ns
`define ENABLE 1'b1
`define DISABLE 1'b0

`define SIGNED 1'b1
`define UNSIGNED 1'b0
    
module nyarlathotep(
    input clk,
    input reset,
    input ena,

    input [31:0] inst,  //imemOut

    input [31:0] dmemAOut,

    output reg dmemAEn,
    output [3:0] dmemAWe,
    output reg [31:0] dmemAAddr,
    output reg [31:0] dmemAIn,
    

    output cpuRunning,
    output reg [31:0] pc,   //imemRAddr

    output [31:0] imemWAddr,
    output [31:0] imemWData,
    output imemWe
);
    assign imemWAddr = 32'h0;
    assign imemWData = 32'h0;
    assign imemWe = `DISABLE;
    
    reg cpuStarted;
    assign cpuRunning = cpuStarted & ena;
    wire cpuPaused;

    `include "aluHeader.vh"

    ////////////////////
    /// Parts Instantiating
    /// Register File
    reg rfWe;
    reg [4:0] rfRAddr1;
    reg [4:0] rfRAddr2;
    reg [4:0] rfWAddr;
    reg [31:0] rfWData;

    wire [31:0] rfRData1;
    wire [31:0] rfRData2;

    regfile cpu_ref(
        .clk(clk),
        .rst(reset),
        .we(rfWe),
        .cpuPaused(cpuPaused),
        .raddr1(rfRAddr1),
        .raddr2(rfRAddr2),
        .waddr(rfWAddr),
        .rdata1(rfRData1),
        .rdata2(rfRData2),
        .wdata(rfWData)
    );

    /// ALU
    reg [31:0] aluA;
    reg [31:0] aluB;
    reg [4:0] aluModeSel;
    wire [31:0] aluR;
    wire [31:0] aluRX;
    wire aluBusy;
    assign cpuPaused = aluBusy;
    wire aluZero, aluCarry, aluNegative, aluOverflow;
    ALU alu(
        .clk(~clk),
        .A(aluA),
        .B(aluB),
        .modeSel(aluModeSel),
        .R(aluR),
        .RX(aluRX),
        .isRZero(aluZero),
        .isCarry(aluCarry),
        .isRNegative(aluNegative),
        .isOverflow(aluOverflow),
        .busy(aluBusy)
    );

    ///////////////
    /// Extender
    ///
    reg [31:0] extend16S_1In;
    wire [31:0] extend16S_1Out;

    reg [31:0] extend16S_2In;
    wire [31:0] extend16S_2Out;

    reg [31:0] extend16UIn;
    wire [31:0] extend16UOut;

    reg [31:0] extend8SIn;
    wire [31:0] extend8SOut;

    reg [31:0] extend8UIn;
    wire [31:0] extend8UOut;

    extender #(16, `SIGNED) extend16S_1(
        .in(extend16S_1In),
        .out(extend16S_1Out)
    );

    extender #(16, `SIGNED) extend16S_2(
        .in(extend16S_2In),
        .out(extend16S_2Out)
    );

    extender #(16, `UNSIGNED) extend16U(
        .in(extend16UIn),
        .out(extend16UOut)
    );

    extender #(8, `SIGNED) extend8S(
        .in(extend8SIn),
        .out(extend8SOut)
    );

    extender #(8, `UNSIGNED) extend8U(
        .in(extend8UIn),
        .out(extend8UOut)
    );

    /////////////////////////////////////
    /// Special structures
    /// Instruction Decoder
    wire [5:0] op = inst[31:26];
    wire [5:0] func = inst[5:0];
    wire [4:0] rs = inst[25:21];
    wire [4:0] base = inst[25:21];
    wire [4:0] rt = inst[20:16];
    wire [4:0] rd = inst[15:11];
    wire [4:0] shamt = inst[10:6];
    wire [15:0] imm = inst[15:0];
    wire [25:0] index = inst[25:0];

    reg iMul, iAdd, iAddu, iSub, iSubu, iAnd, iOr, iXor, iNor, iSlt, iSltu, iSll, iSrl, iSra, iSllv, iSrlv, iSrav, iJr, iAddi, iAddiu, iAndi, iOri, iXori, iLw, iSw, iBeq, iBne, iSlti, iSltiu, iLui, iJ, iJal, iDiv, iDivu, iMult, iMultu, iBgez, iJalr, iLbu, iLhu, iLb, iLh, iSb, iSh, iBreak, iSyscall, iEret, iMfhi, iMflo, iMthi, iMtlo, iMfc0, iMtc0, iClz, iTeq;

    always @ (*)
    begin
        if(op == 6'b000000 && func == 6'b100000) iAdd = 1; else iAdd = 0;
        if(op == 6'b000000 && func == 6'b100001) iAddu = 1; else iAddu = 0;
        if(op == 6'b000000 && func == 6'b100010) iSub = 1; else iSub = 0;
        if(op == 6'b000000 && func == 6'b100011) iSubu = 1; else iSubu = 0;
        if(op == 6'b000000 && func == 6'b100100) iAnd = 1; else iAnd = 0;
        if(op == 6'b000000 && func == 6'b100101) iOr = 1; else iOr = 0;
        if(op == 6'b000000 && func == 6'b100110) iXor = 1; else iXor = 0;
        if(op == 6'b000000 && func == 6'b100111) iNor = 1; else iNor = 0;
        if(op == 6'b000000 && func == 6'b101010) iSlt = 1; else iSlt = 0;
        if(op == 6'b000000 && func == 6'b101011) iSltu = 1; else iSltu = 0;

        if(op == 6'b000000 && func == 6'b000000) iSll = 1; else iSll = 0;
        if(op == 6'b000000 && func == 6'b000010) iSrl = 1; else iSrl = 0;
        if(op == 6'b000000 && func == 6'b000011) iSra = 1; else iSra = 0;

        if(op == 6'b000000 && func == 6'b000100) iSllv = 1; else iSllv = 0;
        if(op == 6'b000000 && func == 6'b000110) iSrlv = 1; else iSrlv = 0;
        if(op == 6'b000000 && func == 6'b000111) iSrav = 1; else iSrav = 0;

        if(op == 6'b000000 && func == 6'b001000 && rt == 5'h0 && rd == 5'h0) iJr = 1; else iJr = 0;

        if(op == 6'b001000) iAddi = 1; else iAddi = 0;
        if(op == 6'b001001) iAddiu = 1; else iAddiu = 0;
        if(op == 6'b001100) iAndi = 1; else iAndi = 0;
        if(op == 6'b001101) iOri = 1; else iOri = 0;
        if(op == 6'b001110) iXori = 1; else iXori = 0;
        if(op == 6'b100011) iLw = 1; else iLw = 0;
        if(op == 6'b101011) iSw = 1; else iSw = 0;
        if(op == 6'b000100) iBeq = 1; else iBeq = 0;
        if(op == 6'b000101) iBne = 1; else iBne = 0;
        if(op == 6'b001010) iSlti = 1; else iSlti = 0;
        if(op == 6'b001011) iSltiu = 1; else iSltiu = 0;

        if(op == 6'b001111) iLui = 1; else iLui = 0;

        if(op == 6'b000010) iJ = 1; else iJ = 0;
        if(op == 6'b000011) iJal = 1; else iJal = 0;
        
        if(op == 6'b000000 && func == 6'b011010 && rd == 5'h0) iDiv = 1; else iDiv = 0;
        if(op == 6'b000000 && func == 6'b011011 && rd == 5'h0) iDivu = 1; else iDivu = 0;
        if(op == 6'b011100 && func == 6'b000010) iMul = 1; else iMul = 0;
        if(op == 6'b000000 && func == 6'b011000 && rd == 5'h0) iMult = 1; else iMult = 0;
        if(op == 6'b000000 && func == 6'b011001 && rd == 5'h0) iMultu = 1; else iMultu = 0;

        if(op == 6'b000001 && rt == 5'b00001) iBgez = 1; else iBgez = 0;

        if(op == 6'b000000 && rt == 5'b00000 && shamt == 5'b00000 && func == 6'b001001) iJalr = 1; else iJalr = 0;

        if(op == 6'b100000) iLb = 1; else iLb = 0;
        if(op == 6'b100001) iLh = 1; else iLh = 0;
        if(op == 6'b100100) iLbu = 1; else iLbu = 0;
        if(op == 6'b100101) iLhu = 1; else iLhu = 0;

        if(op == 6'b101000) iSb = 1; else iSb = 0;
        if(op == 6'b101001) iSh = 1; else iSh = 0;

        if(op == 6'b000000 && func == 6'b001101) iBreak = 1; else iBreak = 0;
        if(inst == 32'b000000_00000_00000_00000_00000_001100) iSyscall = 1; else iSyscall = 0;
        if(inst == 32'h42000018) iEret = 1; else iEret = 0;

        if(op == 6'b000000 && rt == 5'h0 && func == 6'b010000) iMfhi = 1; else iMfhi = 0;
        if(op == 6'b000000 && rt == 5'h0 && func == 6'b010010) iMflo = 1; else iMflo = 0;

        if(op == 6'b000000 && rd == 5'h0 && rt == 5'h0 && func == 6'b010001) iMthi = 1; else iMthi = 0;
        if(op == 6'b000000 && rd == 5'h0 && rt == 5'h0 && func == 6'b010011) iMtlo = 1; else iMtlo = 0;

        if(op == 6'b010000 && func == 6'b000000) iMfc0 = 1; else iMfc0 = 0;
        if(op == 6'b010000 && rs == 5'b00100 && func == 6'b000000) iMtc0 = 1; else iMtc0 = 0;

        if(op == 6'b011100 && func == 6'b100000) iClz = 1; else iClz = 0;
        if(op == 6'b000000 && func == 6'b110100) iTeq = 1; else iTeq = 0;
    end

    /////////////////////
    /// UADD - unsigned adder
    ///
    reg [31:0] uaddA;
    reg [31:0] uaddB;
    wire [31:0] uaddR = uaddA + uaddB;

    ///////////////////////
    /// Next PC
    wire [31:0] pcPlus4 = pc + 4;
    reg [31:0] nextPC;
    wire [31:0] cp0ExecAddr;

    ///////////////////////
    /// PC, HI, LO
    /// PC is defined at I/O ports.
    reg [31:0] hi;
    reg [31:0] lo;
    reg [31:0] nextHi;
    reg [31:0] nextLo;

    /////////////////////////
    /// Main Blocks

    reg [3:0] startCounter;
    localparam startNo = 10;

    localparam initInstAddr = 32'h00400000;
    localparam initDataAddr = 32'h10010000;

    always @(posedge clk) begin
        if(reset == `ENABLE) begin
            startCounter <= 0;
            pc <= initInstAddr;
            hi <= 0;
            lo <= 0;
        end
        else
        begin
            if(cpuStarted == `DISABLE) begin
                if(startCounter < startNo - 1) begin
                    startCounter <= startCounter + 1;
                end
                else if (startCounter >= startNo - 1) begin
                    startCounter <= startNo - 1;
                end
            end else if(cpuRunning & ~cpuPaused) begin
                pc <= nextPC;   //update PC at rising edge
                lo <= nextLo;
                hi <= nextHi;
            end
        end
    end

    always @(negedge clk) begin
        if(reset == `ENABLE) begin
            cpuStarted <= `DISABLE;
        end
        else
        begin
            if(cpuStarted == `DISABLE) begin
                if(startCounter == startNo - 1) begin
                    cpuStarted <= `ENABLE;
                end
            end
        end
    end
    
    localparam exceptionEntry = 32'h00000004;


    `define SYSCALLCAUSE  5'b01000
    `define BREAKCAUSE  5'b01001
    `define TEQCAUSE 5'b011010
    // Instruction-specific datapath
    reg [4:0] bytePos;
    //reg [31:0] exec_addr;
    
    reg [4:0] cp0Addr;
    reg [31:0] cp0WData;
    wire [31:0] cp0RData;
    reg cp0Exception;
    wire cp0Intr = `DISABLE;
    wire [31:0] cp0Status;
    reg [31:0] cp0Cause;
    reg trap;
    reg [3:0] dmemAWe_orig;
    assign dmemAWe = dmemAWe_orig & {4{cpuRunning & ~cpuPaused}};
    localparam BigEndianCPU = 1'b0;
    always @(*) begin
        if (cpuRunning) begin
            bytePos = ((iLbu | iLb | iSb) ? {3'b000, dmemAAddr[1:0] ^ {2{BigEndianCPU}}} : 5'h00) | ((iLhu | iLh | iSh) ? {3'b000, dmemAAddr[1] ^ BigEndianCPU, 1'b0} : 5'h00);

            rfRAddr1 = (iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu |iSllv | iSrlv | iSrav | iJr | iAddi | iAddiu | iAndi | iOri | iXori | iLw | iSw | iBeq | iBne | iSlti | iSltiu | iDiv | iDivu | iMult | iMul | iMultu | iBgez | iJalr | iLbu | iLhu | iLb | iLh | iSb | iSh | iMthi | iMtlo | iClz | iTeq) ? rs : 32'h0;

            rfRAddr2 = (iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iSw | iBeq | iBne | iDiv | iDivu | iMult | iMul | iMultu | iSb | iSh | iMtc0 | iTeq) ? rt : 32'h0;

            aluA = (iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iAddi | iAddiu | iAndi | iOri | iXori | iLw | iSw | iBeq | iBne | iSlti | iSltiu | iDiv | iDivu | iMult | iMul | iMultu | iClz | iTeq) ? rfRData1 : (iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iSb | iSh) ? rfRData2 : 32'h0;

            aluB = ((iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iBeq | iBne | iDiv | iDivu | iMult | iMul | iMultu | iTeq) ? rfRData2 : 32'h0) 
            | ((iSll | iSrl | iSra) ? shamt : 32'h0)
            | ((iSllv | iSrlv | iSrav) ? rfRData1 : 32'h0)
            | ((iAddi | iAddiu | iLw | iSw | iSlti | iSltiu) ? extend16S_1Out : 32'h0)
            | ((iAndi | iOri | iXori) ? extend16UOut : 32'h0)
            | ((iSb) ? (bytePos[1:0] << 3) : 32'h0)
            | ((iSh) ? (bytePos[1] ? 16 : 0) : 32'h0);

            aluModeSel = ((iAdd | iAddi) ? ALU_SADD : 5'h00) | ((iAddu | iAddiu | iLw | iSw) ? ALU_UADD: 5'h00) | ((iSub) ? ALU_SSUB : 5'h00) | ((iSubu) ? ALU_USUB : 5'h00) | ((iAnd | iAndi) ? ALU_AND : 5'h00) | ((iOr | iOri) ? ALU_OR : 5'h00) | ((iXor | iXori) ? ALU_XOR : 5'h00) | ((iNor) ? ALU_NOR : 5'h00) | ((iSlt | iSlti) ? ALU_SLES : 5'h00) | ((iSltu | iSltiu) ? ALU_ULES : 5'h00) | ((iSll | iSb | iSh) ? ALU_SL : 5'h00) | ((iSrl | iSrlv) ? ALU_SRL : 5'h00) | ((iSra | iSrav) ? ALU_SRA : 5'h00) | ((iAdd | iAddi) ? ALU_SADD : 5'h00) | ((iBeq | iBne | iTeq) ? ALU_EQU : 5'h00) | ((iDiv) ? ALU_SDIV : 5'h00) | ((iDivu) ? ALU_UDIV : 5'h00) | ((iMult | iMul) ? ALU_SMUL : 5'h00) | ((iMultu) ? ALU_UMUL : 5'h00) | ((iClz) ? ALU_CLZ : 5'h00);

            rfWe = ((iAdd | iSub) & (aluOverflow ? `DISABLE : `ENABLE)) | ((iAddu | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iAddi | iAddiu | iAndi | iOri | iXori | iLw | iSlti | iSltiu | iLui | iJal | iMul | iJalr | iLbu | iLhu | iLb | iLh | iMfhi | iMflo | iMfc0 | iClz) & (`ENABLE));

            rfWAddr = ((iAdd | iAddu | iSub | iSubu | iAnd | iOr | iXor | iNor | iSlt | iSltu | iSll | iSrl | iSra | iSllv | iSrlv | iSrav | iMul | iJalr | iMfhi | iMflo | iClz) ? rd : 5'h0) | ((iAddi | iAddiu | iAndi | iOri | iXori | iLw | iSlti | iSltiu | iLui | iLbu | iLhu | iLb | iLh | iMfc0) ? rt : 5'h0) | ((iJal) ? 5'd31 : 5'h0);

            rfWData = ((iLw) ? dmemAOut : 32'h0) | ((iLui) ? {imm, 16'h0} : 32'h0) | ((iJal | iJalr) ? pcPlus4 : 32'h0) | ((iLbu) ? extend8UOut : 32'h0) | ((iLhu) ? extend16UOut : 32'h0) | ((iLb) ? extend8SOut : 32'h0) | ((iLh) ? extend16S_2Out : 32'h0)  | ((iMfhi) ? hi : 32'h0) | ((iMflo) ? lo : 32'h0)  | ((iMfc0) ? cp0RData : 32'h0) | ((~iLw & ~iLui & ~iJal & ~iJalr & ~iLbu & ~iLhu & ~iLb & ~iLh & ~iMfhi & ~iMflo & ~iMfc0) ? aluR : 32'h0);

            extend16S_1In = imm;

            extend16UIn = ((iAndi | iOri | iXori) ? imm : 16'h0) | ((iLhu) ? dmemAOut[8 * bytePos +: 16] : 16'h0);

            dmemAEn = ((iLw | iSw | iLbu | iLhu | iLb | iLh | iSb | iSh) & `ENABLE);

            dmemAAddr = ((iLw | iSw) ? aluR : uaddR);

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
        end else begin
            bytePos = 0;

            rfRAddr1 = 0;

            rfRAddr2 = 0;

            aluA = 0;

            aluB = 0;

            aluModeSel = 0;

            rfWe = 0;

            rfWAddr = 0;

            rfWData = 0;

            extend16S_1In = 0;

            extend16UIn = 0;

            dmemAEn = 0;

            dmemAAddr = 0;

            dmemAWe_orig = 0;

            dmemAIn = 0;

            uaddA = 0;

            uaddB = 0;

            nextHi = 0;

            nextLo = 0;

            extend8UIn = 0;

            extend8SIn = 0;

            extend16S_2In = 0;

            cp0Exception = 0;

            cp0Cause = 0;

            cp0Addr = 0;

            trap = 0;

            nextPC = 32'hABABABAB;
        end
    end

    ///////////////
    /// Trapezohedron - CP0
    
    Trapezohedron cp0(
        .clk(clk),
        .rst(rst),
        .mfc0(iMfc0),
        .mtc0(iMtc0),
        .pc(pc),
        .addr(cp0Addr),
        .data(cp0WData),
        .exception(cp0Exception),
        .eret(iEret),
        .cause(cp0Cause),
        .intr(cp0Intr),

        .PC0_out(cp0RData),
        .status(cp0Status),
        .epc_out(cp0ExecAddr)
    );

endmodule
