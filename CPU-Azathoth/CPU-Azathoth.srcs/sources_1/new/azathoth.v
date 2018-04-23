`timescale 1ns / 1ns
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
    
    output reg dmemAEn,
    output reg [3:0] dmemAWe,
    output reg [31:0] dmemAAddr,
    output reg [31:0] dmemAIn,
    input [31:0] dmemAOut,

    output reg dmemBEn,
    output reg [3:0] dmemBWe,
    output reg [31:0] dmemBAddr,
    output reg [31:0] dmemBIn,
    input [31:0] dmemBOut,

    output reg [31:0] pc,   //imemAddr
    input [31:0] inst   //imemOut
    );
    
    ////////////////////
    /// Parts Instantiating
    /// Register File
    reg rfWe;
    reg [31:0] rfRAddr1;
    reg [31:0] rfRAddr2;
    reg [31:0] rfWAddr;
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
    reg [31:0] extend1In;
    reg [5:0] extend1NOB;
    reg extend1Signed;
    wire [31:0] extend1Out;

    reg [31:0] extend2In;
    reg [5:0] extend2NOB;
    reg extend2Signed;
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
    /// Special structures
    /// Instruction Decoder
    wire [5:0] op = inst[31:26];
    wire [5:0] func = inst[5:0];
    wire [4:0] rs = inst[25:21];
    wire [4:0] rt = inst[20:16];
    wire [4:0] rd = inst[15:11];
    wire [4:0] shamt = inst[10:6];
    wire [15:0] imm = inst[15:0];
    wire [25:0] index = inst[25:0];

    reg iAdd, iAddu, iSub, iSubu, iAnd, iOr, iXor, iNor, iSlt, iSltu, iSll, iSrl, iSra, iSllv, iSrlv, iSrav, iJr, iAddi, iAddiu, iAndi, iOri, iXori, iLw, iSw, iBeq, iBne, iSlti, iSltiu, iLui, iJ, iJal, iDiv, iDivu, iMult, iMultu, iBgez, iJalr, iLbu, iLhu, iLb, iLh, iSb, iSh, iBreak, iSyscall, iEret, iMfhi, iMflo, iMthi, iMtlo, iMfc0, iMtc0, iClz, iTeq;

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
    wire [31:0] pcNextInst = pc + 4;
    reg [31:0] nextPC;

    ///////////////////////
    /// PC, HI, LO
    /// PC is defined at I/O ports.
    reg [31:0] hi;
    reg [31:0] lo;

    /////////////////////////
    /// Main Block

    // On rising edge:
    //  - CPU will start after 10 clock pulses initially
    //  - DMEM and Regfiles will refresh
    reg allowStart = 0;
    reg [5:0] startCounter = 0;
    localparam startNo = 10;

    localparam initInstAddr = 32'h00400000;
    localparam initDataAddr = 32'h10010000;

    always @(posedge clk or posedge reset) begin
        if(reset == 1'b1) begin
            allowStart <= 0;
            startCounter <= 0;
            hi <= 0;
            lo <= 0;
            nextPC <= initInstAddr;

            dmemAEn <= 0;
            dmemAWe <= 4'h0;
            dmemAAddr <= initDataAddr;
            dmemAIn <= 32'hffffffff;

            dmemBEn <= 0;
            dmemBWe <= 4'h0;
            dmemBAddr <= initDataAddr;
            dmemBIn <= 32'hEEEEEEEE;
            
            rfWe <= 0;
            rfRAddr1 <= 0;
            rfRAddr2 <= 0;
            rfWAddr <= 0;
            rfWData <= 0;

        end
        else
        begin
            if(allowStart == 0) begin
                if(startCounter < startNo - 1) begin
                    startCounter <= startCounter + 1;
                else if (startCounter >= startNo - 1) begin
                    startCounter <= startNo - 1;
                    allowStart <= 1'b1;

                end
            end else begin
                allowStart <= 1'b1;
                if(iAdd) begin
                    
            end
        end


    end



    always @(negedge clk or posedge reset) begin
        if(reset == 1'b1) begin
            pc <= initInstAddr;
        end
        else
        begin
            if(allowStart == 0) begin
                pc <= initInstAddr;
            end else begin
                pc <= nextPC;
            end
        end


    end

    /// Deciding nextPC
    reg [31:0] epc;
    always @(*) begin
        if(iJr)
            nextPC = rfRData1;  //GPR[rs]
        else if (iBeq)
            nextPC = aluR[0] ? uaddR : pcNextInst;
        else if (iBne)
            nextPC = aluR[0] ? pcNextInst : uaddR;
        else if (iJ)
            nextPC = {pc[31:28], inst[25:0], 2'b0};
        else if (iJal)
            nextPC = {pc[31:28], inst[25:0], 2'b0};
        else if (iBgez)
            nextPC = rfRData1[31] ? pcNextInst : uaddR;     //GPR[rs]
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
            nextPC = pcNextInst;
    end

    // Instruction-specific datapath
    always @(*) begin
        extend1In = 0;
        extend1NOB = 32;
        extend1Signed = 1'b1;
        extend2In = 0;
        extend2NOB = 32;
        extend2Signed = 1'b1;
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

            rfWe = 1'b0;
            rfWAddr = 0;
            rfWData = 0;
        end else if (iAddi) begin
            rfRAddr1 = rs;
            rfRAddr2 = 0;
            extend1In = imm;
            extend1NOB = 16;
            extend1Signed = 1'b1;
            aluA = rfRData1;
            aluB = extend1Out;
            aluModeSel = ALU_SADD;

            rfWe = 1'b1;
            rfWAddr = rt;
            rfWData = aluR;
        end else if (iAddiu) begin
            rfRAddr1 = rs;
            rfRAddr2 = 0;
            extend1In = imm;
            extend1NOB = 16;
            extend1Signed = 1'b1;
            aluA = rfRData1;
            aluB = extend1Out;
            aluModeSel = ALU_UADD;

            rfWe = 1'b1;
            rfWAddr = rt;
            rfWData = aluR;
        end else if (iAndi) begin
            rfRAddr1 = rs;
            rfRAddr2 = 0;
            extend1In = imm;
            extend1NOB = 16;
            extend1Signed = 1'b0;
            aluA = rfRData1;
            aluB = extend1Out;
            aluModeSel = ALU_AND;

            rfWe = 1'b1;
            rfWAddr = rt;
            rfWData = aluR;
endmodule
