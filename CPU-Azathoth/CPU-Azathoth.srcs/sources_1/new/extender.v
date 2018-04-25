module extender (
    input [31:0] in,
    input [5:0] numOfBits,   // lowest [numOfBits] bits are extended to 32 bits
    input isSigned, 
    output reg [31:0] out
);
    wire paddingBit = numOfBits == 0 ? 1'b0 : isSigned ? in[numOfBits-1] : 1'b0;

    integer i;
    always @(in or numOfBits or paddingBit) begin
        case(numOfBits)
            0: out = {{(32-0){paddingBit}}};
            1: out = {{(32-1){paddingBit}}, in[1-1:0]};
            2: out = {{(32-2){paddingBit}}, in[2-1:0]};
            3: out = {{(32-3){paddingBit}}, in[3-1:0]};
            4: out = {{(32-4){paddingBit}}, in[4-1:0]};
            5: out = {{(32-5){paddingBit}}, in[5-1:0]};
            6: out = {{(32-6){paddingBit}}, in[6-1:0]};
            7: out = {{(32-7){paddingBit}}, in[7-1:0]};
            8: out = {{(32-8){paddingBit}}, in[8-1:0]};
            9: out = {{(32-9){paddingBit}}, in[9-1:0]};
            10: out = {{(32-10){paddingBit}}, in[10-1:0]};
            11: out = {{(32-11){paddingBit}}, in[11-1:0]};
            12: out = {{(32-12){paddingBit}}, in[12-1:0]};
            13: out = {{(32-13){paddingBit}}, in[13-1:0]};
            14: out = {{(32-14){paddingBit}}, in[14-1:0]};
            15: out = {{(32-15){paddingBit}}, in[15-1:0]};
            16: out = {{(32-16){paddingBit}}, in[16-1:0]};
            17: out = {{(32-17){paddingBit}}, in[17-1:0]};
            18: out = {{(32-18){paddingBit}}, in[18-1:0]};
            19: out = {{(32-19){paddingBit}}, in[19-1:0]};
            20: out = {{(32-20){paddingBit}}, in[20-1:0]};
            21: out = {{(32-21){paddingBit}}, in[21-1:0]};
            22: out = {{(32-22){paddingBit}}, in[22-1:0]};
            23: out = {{(32-23){paddingBit}}, in[23-1:0]};
            24: out = {{(32-24){paddingBit}}, in[24-1:0]};
            25: out = {{(32-25){paddingBit}}, in[25-1:0]};
            26: out = {{(32-26){paddingBit}}, in[26-1:0]};
            27: out = {{(32-27){paddingBit}}, in[27-1:0]};
            28: out = {{(32-28){paddingBit}}, in[28-1:0]};
            29: out = {{(32-29){paddingBit}}, in[29-1:0]};
            30: out = {{(32-30){paddingBit}}, in[30-1:0]};
            31: out = {{(32-31){paddingBit}}, in[31-1:0]};
            32: out = in[32-1:0];
            default:
                out = 32'hFFFFFFFF;
        endcase
    end
endmodule

