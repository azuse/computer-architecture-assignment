module ID(
    input [5:0] op,
    input [5:0] func,
    output reg iMul,
    output reg iAdd,
    output reg iAddu,
    output reg iSub,
    output reg iSubu,
    output reg iAnd,
    output reg iOr,
    output reg iXor,
    output reg iNor,
    output reg iSlt,
    output reg iSltu,
    output reg iSll,
    output reg iSrl,
    output reg iSra,
    output reg iSllv,
    output reg iSrlv,
    output reg iSrav,
    output reg iJr,
    output reg iAddi,
    output reg iAddiu,
    output reg iAndi,
    output reg iOri,
    output reg iXori,
    output reg iLw,
    output reg iSw,
    output reg iBeq,
    output reg iBne,
    output reg iSlti,
    output reg iSltiu,
    output reg iLui,
    output reg iJ,
    output reg iJal,
    output reg iDiv,
    output reg iDivu,
    output reg iMult,
    output reg iMultu,
    output reg iBgez,
    output reg iJalr,
    output reg iLbu,
    output reg iLhu,
    output reg iLb,
    output reg iLh,
    output reg iSb,
    output reg iSh,
    output reg iBreak,
    output reg iSyscall,
    output reg iEret,
    output reg iMfhi,
    output reg iMflo,
    output reg iMthi,
    output reg iMtlo,
    output reg iMfc0,
    output reg iMtc0,
    output reg iClz,
    output reg iTeq
);

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
endmodule