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
    output reg [3:0] dmemAWe,
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
        if(op == 6'b000000 && func == 6'b100000 && shamt == 5'h0) iAdd = 1; else iAdd = 0;
        if(op == 6'b000000 && func == 6'b100001 && shamt == 5'h0) iAddu = 1; else iAddu = 0;
        if(op == 6'b000000 && func == 6'b100010 && shamt == 5'h0) iSub = 1; else iSub = 0;
        if(op == 6'b000000 && func == 6'b100011 && shamt == 5'h0) iSubu = 1; else iSubu = 0;
        if(op == 6'b000000 && func == 6'b100100 && shamt == 5'h0) iAnd = 1; else iAnd = 0;
        if(op == 6'b000000 && func == 6'b100101 && shamt == 5'h0) iOr = 1; else iOr = 0;
        if(op == 6'b000000 && func == 6'b100110 && shamt == 5'h0) iXor = 1; else iXor = 0;
        if(op == 6'b000000 && func == 6'b100111 && shamt == 5'h0) iNor = 1; else iNor = 0;
        if(op == 6'b000000 && func == 6'b101010 && shamt == 5'h0) iSlt = 1; else iSlt = 0;
        if(op == 6'b000000 && func == 6'b101011 && shamt == 5'h0) iSltu = 1; else iSltu = 0;

        if(op == 6'b000000 && func == 6'b000000 && rs == 5'h0) iSll = 1; else iSll = 0;
        if(op == 6'b000000 && func == 6'b000010 && rs == 5'h0) iSrl = 1; else iSrl = 0;
        if(op == 6'b000000 && func == 6'b000011 && rs == 5'h0) iSra = 1; else iSra = 0;

        if(op == 6'b000000 && func == 6'b000100 && shamt == 5'h0) iSllv = 1; else iSllv = 0;
        if(op == 6'b000000 && func == 6'b000110 && shamt == 5'h0) iSrlv = 1; else iSrlv = 0;
        if(op == 6'b000000 && func == 6'b000111 && shamt == 5'h0) iSrav = 1; else iSrav = 0;

        if(op == 6'b000000 && func == 6'b001000 && shamt == 5'h0 && rt == 5'h0 && rd == 5'h0) iJr = 1; else iJr = 0;

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

        if(op == 6'b001111 && rs == 5'h0) iLui = 1; else iLui = 0;

        if(op == 6'b000010) iJ = 1; else iJ = 0;
        if(op == 6'b000011) iJal = 1; else iJal = 0;
        
        if(op == 6'b000000 && func == 6'b011010 && shamt == 5'h0 && rd == 5'h0) iDiv = 1; else iDiv = 0;
        if(op == 6'b000000 && func == 6'b011011 && shamt == 5'h0 && rd == 5'h0) iDivu = 1; else iDivu = 0;
        if(op == 6'b011100 && func == 6'b000010 && shamt == 5'h0) iMul = 1; else iMul = 0;
        if(op == 6'b000000 && func == 6'b011000 && shamt == 5'h0 && rd == 5'h0) iMult = 1; else iMult = 0;
        if(op == 6'b000000 && func == 6'b011001 && shamt == 5'h0 && rd == 5'h0) iMultu = 1; else iMultu = 0;

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

        if(op == 6'b000000 && rs == 5'h0 && rt == 5'h0 && shamt == 5'h0 && func == 6'b010000) iMfhi = 1; else iMfhi = 0;
        if(op == 6'b000000 && rs == 5'h0 && rt == 5'h0 && shamt == 5'h0 && func == 6'b010010) iMflo = 1; else iMflo = 0;

        if(op == 6'b000000 && rd == 5'h0 && rt == 5'h0 && shamt == 5'h0 && func == 6'b010001) iMthi = 1; else iMthi = 0;
        if(op == 6'b000000 && rd == 5'h0 && rt == 5'h0 && shamt == 5'h0 && func == 6'b010011) iMtlo = 1; else iMtlo = 0;

        if(op == 6'b010000 && rs == 5'h0 && shamt == 5'h0 && func == 6'b000000) iMfc0 = 1; else iMfc0 = 0;
        if(op == 6'b010000 && rs == 5'b00100 && shamt == 5'h0 && func == 6'b000000) iMtc0 = 1; else iMtc0 = 0;

        if(op == 6'b011100 && shamt == 5'h0 && func == 6'b100000) iClz = 1; else iClz = 0;
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

    ///////////////////////
    /// PC, HI, LO
    /// PC is defined at I/O ports.
    reg [31:0] hi;
    reg [31:0] lo;
    reg [31:0] nextHi;
    reg [31:0] nextLo;

    /////////////////////////
    /// Main Blocks

    reg cpuStarted;
    assign cpuRunning = cpuStarted & ena & ~aluBusy;
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
            end else if(cpuRunning) begin
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

    /// Deciding nextPC
    reg [31:0] epc;
    
    always @(*) begin
        epc = 32'habcdef12;
    end
    
    always @(*) begin
        if(cpuRunning) begin
            if(iJr)
                nextPC = rfRData1;  //GPR[rs]
            else if (iBeq)
                nextPC = aluR[0] ? uaddR : pcPlus4;
            else if (iBne)
                nextPC = aluR[0] ? pcPlus4 : uaddR;
            else if (iJ)
                nextPC = {pc[31:28], index, 2'b0};
            else if (iJal)
                nextPC = {pc[31:28], index, 2'b0};
            else if (iBgez)
                nextPC = rfRData1[31] ? pcPlus4 : uaddR;     //GPR[rs]
            else if (iJalr)
                nextPC = rfRData1;  //GPR[rs]
            else if (iBreak)
                nextPC = 32'h0000003c;
            else if (iSyscall)
                nextPC = 32'h0000003c;
            else if (iEret)
                nextPC = epc;
            else if (iTeq)
                nextPC = 32'h0000003c;
            else
                nextPC = pcPlus4;
        end else
            nextPC = 32'hABABABAB;
    end

    // Instruction-specific datapath
    reg [4:0] bytePos;
    reg [31:0] exec_addr;
    reg trap;
    localparam BigEndianCPU = 1'b0;
    always @(*) begin
        exec_addr = 0;
        trap = 0;

        extend16S_1In = 32'hxxxxxxxx;
        extend16S_2In = 32'hxxxxxxxx;
        extend16UIn = 32'hxxxxxxxx;
        extend8SIn = 32'hxxxxxxxx;
        extend8UIn = 32'hxxxxxxxx;
        

        dmemAWe = 4'h0;
        dmemAEn = 1'b0;
        dmemAIn = 32'haaaaaaaa;
        dmemAAddr = initDataAddr;

        rfRAddr1 = 32'hxxxxxxxx;
        rfRAddr2 = 32'hxxxxxxxx;

        bytePos = 5'bxxxxx;

        aluA = 32'hxxxxxxxx;
        aluB = 32'hxxxxxxxx;
        aluModeSel = ALU_AND;

        rfWe = 1'b0;
        rfWAddr = 32'hxxxxxxxx;
        rfWData = 32'hxxxxxxxx;

        nextHi = hi;
        nextLo = lo;
        
        uaddA = 32'hxxxxxxxx;
        uaddB = 32'hxxxxxxxx;
        
        if(cpuRunning) begin
            if(iAdd) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SADD;

                rfWe = aluOverflow ? 1'b0 : 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iAddu) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_UADD;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSub) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SSUB;

                rfWe = aluOverflow ? 1'b0 : 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSubu) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_USUB;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iAnd) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_AND;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iOr) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_OR;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iXor) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_XOR;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iNor) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_NOR;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSlt) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SLES;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSltu) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_ULES;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSll) begin
                rfRAddr1 = rt;
                rfRAddr2 = 0;

                aluA = rfRData1;
                aluB = shamt;
                aluModeSel = ALU_SL;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSrl) begin
                rfRAddr1 = rt;
                rfRAddr2 = 0;
                aluA = rfRData1;
                aluB = shamt;
                aluModeSel = ALU_SRL;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSra) begin
                rfRAddr1 = rt;
                rfRAddr2 = 0;
                aluA = rfRData1;
                aluB = shamt;
                aluModeSel = ALU_SRA;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSllv) begin
                rfRAddr1 = rt;
                rfRAddr2 = rs;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SL;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSrlv) begin
                rfRAddr1 = rt;
                rfRAddr2 = rs;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SRL;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iSrav) begin
                rfRAddr1 = rt;
                rfRAddr2 = rs;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SRA;

                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iJr) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                aluA = 0;
                aluB = 0;
                aluModeSel = ALU_AND;
            end else if (iAddi) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = extend16S_1Out;
                aluModeSel = ALU_SADD;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iAddiu) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = extend16S_1Out;
                aluModeSel = ALU_UADD;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iAndi) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16UIn = imm;

                aluA = rfRData1;
                aluB = extend16UOut;
                aluModeSel = ALU_AND;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iOri) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16UIn = imm;

                aluA = rfRData1;
                aluB = extend16UOut;
                aluModeSel = ALU_OR;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iXori) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16UIn = imm;

                aluA = rfRData1;
                aluB = extend16UOut;
                aluModeSel = ALU_XOR;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iLw) begin
                rfRAddr1 = base;
                rfRAddr2 = 0;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = extend16S_1Out;
                aluModeSel = ALU_UADD;

                dmemAEn = 1'b1;
                dmemAAddr = aluR;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = dmemAOut;
            end else if (iSw) begin
                rfRAddr1 = base;
                rfRAddr2 = rt;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = extend16S_1Out;
                aluModeSel = ALU_UADD;

                dmemAEn = 1'b1;
                dmemAWe = 4'hf;
                dmemAAddr = aluR;
                dmemAIn = rfRData2;
            end else if (iBeq || iBne) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_EQU;

                uaddA = pcPlus4;
                uaddB = extend16S_1Out << 2;
            end else if (iSlti) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = extend16S_1Out;
                aluModeSel = ALU_SLES;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iSltiu) begin
                rfRAddr1 = rs;
                rfRAddr2 = 0;
                extend16S_1In = imm;
                aluA = rfRData1;
                aluB = extend16S_1Out;
                aluModeSel = ALU_ULES;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = aluR;
            end else if (iLui) begin
                rfRAddr1 = 0;
                rfRAddr2 = 0;

                rfWe = 1'b1;
                rfWAddr = rt;
                rfWData = {imm, 16'h0};
            end else if (iJ) begin
                rfWe = 1'b0;   // Do nothing
            end else if (iJal) begin
                rfWe = 1'b1;
                rfWAddr = 31;
                rfWData = pcPlus4;
            end else if (iDiv) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SDIV;
                
                nextHi = aluRX;
                nextLo = aluR;
            end else if (iDivu) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_UDIV;
                
                nextHi = aluRX;
                nextLo = aluR;
            end else if (iMult) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SMUL;
                
                nextHi = aluRX;
                nextLo = aluR;
            end else if (iMul) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_SMUL;
                
                rfWData = aluR;
                rfWAddr = rd;
                rfWe = 1;
                
            end else if (iMultu) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;
                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_UMUL;
                
                nextHi = aluRX;
                nextLo = aluR;
            end else if (iBgez) begin
                rfRAddr1 = rs;
                extend16S_1In = imm;
                
                uaddA = pcPlus4;
                uaddB = extend16S_1Out << 2;
            end else if (iJalr) begin
                rfRAddr1 = rs;
                rfWe = 1'b1;
                rfWAddr = rd;
                rfWData = pcPlus4;
            end else if (iLbu) begin
                rfRAddr1 = base;
                rfWAddr = rt;
                rfWe = 1'b1;

                extend16S_1In = imm;
                
                uaddA = extend16S_1Out;
                uaddB = rfRData1;

                dmemAAddr = uaddR;
                dmemAEn = 1'b1;

                bytePos = {3'b000, dmemAAddr[1:0] ^ {2{BigEndianCPU}}};

                extend8UIn = dmemAOut[8 * bytePos +: 8];

                rfWData = extend8UOut;
            end else if (iLhu) begin
                rfRAddr1 = base;
                rfWAddr = rt;
                rfWe = 1'b1;

                extend16S_1In = imm;

                uaddA = extend16S_1Out;
                uaddB = rfRData1;

                dmemAAddr = uaddR;
                dmemAEn = 1'b1;

                //bytePos = {3'b000, dmemAAddr[1:0] ^ {BigEndianCPU, 1'b0}};
                bytePos = {3'b000, dmemAAddr[1] ^ BigEndianCPU, 1'b0};

                extend16UIn = dmemAOut[8 * bytePos +: 16];

                rfWData = extend16UOut;
            end else if (iLb) begin
                rfRAddr1 = base;
                rfWAddr = rt;
                rfWe = 1'b1;

                extend16S_1In = imm;
                
                uaddA = extend16S_1Out;
                uaddB = rfRData1;

                dmemAAddr = uaddR;
                dmemAEn = 1'b1;

                bytePos = {3'b000, dmemAAddr[1:0] ^ {2{BigEndianCPU}}};

                extend8SIn = dmemAOut[8 * bytePos +: 8];

                rfWData = extend8SOut;
            end else if (iLh) begin
                rfRAddr1 = base;
                rfWAddr = rt;
                rfWe = 1'b1;

                extend16S_1In = imm;
                
                uaddA = extend16S_1Out;
                uaddB = rfRData1;

                dmemAAddr = uaddR;
                dmemAEn = 1'b1;

                //bytePos = {3'b000, dmemAAddr[1:0] ^ {BigEndianCPU, 1'b0}};
                bytePos = {3'b000, dmemAAddr[1] ^ BigEndianCPU, 1'b0};

                extend16S_2In = dmemAOut[8 * bytePos +: 16];

                rfWData = extend16S_2Out;
            end else if (iSb) begin
                rfRAddr1 = base;
                rfRAddr2 = rt;

                extend16S_1In = imm;
                
                uaddA = extend16S_1Out;
                uaddB = rfRData1;

                dmemAEn = 1'b1;
                dmemAAddr = uaddR;

                bytePos = {3'b000, dmemAAddr[1:0] ^ {2{BigEndianCPU}} };

                dmemAWe[0] = (bytePos[1:0] == 2'h0);
                dmemAWe[1] = (bytePos[1:0] == 2'h1);
                dmemAWe[2] = (bytePos[1:0] == 2'h2);
                dmemAWe[3] = (bytePos[1:0] == 2'h3);

                aluA = rfRData2;
                aluB = bytePos[1:0] << 3;
                aluModeSel = ALU_SL;
                
                dmemAIn = aluR;
            end else if (iSh) begin
                rfRAddr1 = base;
                rfRAddr2 = rt;

                extend16S_1In = imm;
                
                uaddA = extend16S_1Out;
                uaddB = rfRData1;

                dmemAAddr = uaddR;

                //bytePos = {3'b000, dmemAAddr[1:0] ^ {BigEndianCPU, 1'b0}};
                bytePos = {3'b000, dmemAAddr[1] ^ BigEndianCPU, 1'b0};

                dmemAEn = 1'b1;
                dmemAWe[0] = (bytePos[1] == 2'h0);
                dmemAWe[1] = (bytePos[1] == 2'h0);
                dmemAWe[2] = (bytePos[1] == 2'h1);
                dmemAWe[3] = (bytePos[1] == 2'h1);

                aluA = rfRData2;
                aluB = bytePos[1] ? 16 : 0;
                aluModeSel = ALU_SL;
                
                dmemAIn = aluR;
            end else if (iBreak) begin
                exec_addr = pcPlus4;
                // Do nothing
            end else if (iSyscall) begin
                exec_addr = pcPlus4;
            end else if (iEret) begin
                rfWe = `DISABLE; //Do nothing
            end else if (iMfhi) begin
                rfWAddr = rd;
                rfWe = 1'b1;
                rfWData = hi;
            end else if (iMflo) begin
                rfWAddr = rd;
                rfWe = 1'b1;
                rfWData = lo;
            end else if (iMthi) begin
                rfRAddr1 = rs;
                nextHi = rfRData1;
            end else if (iMtlo) begin
                rfRAddr1 = rs;
                nextLo = rfRData1;
            end else if (iMfc0) begin
                rfWe = `DISABLE; //Do nothing
            end else if (iMtc0) begin
                rfWe = `DISABLE; //Do nothing
            end else if (iClz) begin
                rfRAddr1 = rs;
                aluA = rfRData1;
                aluB = 0;
                aluModeSel = ALU_CLZ;

                rfWe = 1;
                rfWAddr = rd;
                rfWData = aluR;
            end else if (iTeq) begin
                rfRAddr1 = rs;
                rfRAddr2 = rt;

                aluA = rfRData1;
                aluB = rfRData2;
                aluModeSel = ALU_EQU;

                if(aluR[0])
                    exec_addr = pcPlus4;

                trap = aluR[0];
            end
        end
    end
endmodule
