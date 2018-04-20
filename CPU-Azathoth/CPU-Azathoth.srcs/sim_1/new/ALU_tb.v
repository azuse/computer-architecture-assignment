`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/19 18:59:44
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb(

    );
    reg signed [31:0] A;
    reg [31:0] B;
    reg [4:0] modeSel;

    wire [31:0] R;
    wire [31:0] RX;
    wire isRZero;
    wire isCarry;
    wire isRNegative;
    wire isOverflow;

    `include "aluHeader.vh"

    ALU uut(
        .A(A),
        .B(B),
        .modeSel(modeSel),
        .R(R),
        .RX(RX),
        .isRZero(isRZero),
        .isCarry(isCarry),
        .isRNegative(isRNegative),
        .isOverflow(isOverflow)
    );

    integer i, f, tmp;
    integer seed;
    time signed li;    //Long Int
    time unsigned liu;

    initial begin
        seed = 32'had0897;
        $urandom(seed);

        f = $fopen("ALU_tb_output.txt", "w");

        #5
        modeSel = ALU_AND;
        $fwrite(f, "Test: AND\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #1 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s\n", A, B, R, A&B, ((R==(A&B))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_XOR;
        $fwrite(f, "Test: XOR\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #1 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s\n", A, B, R, A^B, ((R==(A^B))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_OR;
        $fwrite(f, "Test: OR\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #1 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s\n", A, B, R, A|B, ((R==(A|B))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_NOR;
        $fwrite(f, "Test: NOR\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #1 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s\n", A, B, R, ~(A|B), ((R==(~(A|B)))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_SL;
        $fwrite(f, "Test: Shift Left\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom_range(31,0);
            #1 $fwrite(f, "A: %b, B: %b, R: %b, RX: %b, Correct: %b, %s\n", A, B, R, RX, A<<B, ((R==(A<<B))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_SRL;
        $fwrite(f, "Test: Shift Right Logically\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom_range(31,0);
            #1 $fwrite(f, "A: %b, B: %b, R: %b, RX: %b, Correct: %b, %s\n", A, B, R, RX, A>>B, ((R==(A>>B))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_SRA;
        $fwrite(f, "Test: Shift Right Arithmetically\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom_range(31,0);
            #1 $fwrite(f, "A: %b, B: %b, R: %b, RX: %b, Correct: %b, %s\n", A, B, R, RX, A>>>B, (($signed(R)==(A>>>B))?"RIGHT":"WRONG"));
        end

        #5
        modeSel = ALU_EQU;
        $fwrite(f, "Test: Equal\n");
        for(i = 0; i < 15; i = i+1)begin
            tmp = $urandom_range(1,0);
            A = $urandom;
            B = (tmp) ? A : $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, A==B, ((R==(A==B))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        A = 32'h0000000;
        modeSel = ALU_CLZ;
        $fwrite(f, "Test: CLZ\n");
        #20
        #10
        for (i = 0; i <= 32; i = i+1) begin
            $fwrite(f, "A: %b, Leading Zeros: %d, ZCNO: %1b%1b%1b%1b\n", A, R, isRZero, isCarry, isRNegative, isOverflow);
            if(A == 0)
                A = 32'h1;
            else
                A = A << 1;
            #10
            ;
        end

        #5
        modeSel = ALU_SMUL;
        $fwrite(f, "Test: Signed Multiply\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            li = $signed(A);
            li = li * $signed(B);
            #5 $fwrite(f, "A: %h, B: %h, RX R: %h %h, Correct: %h %h, %s, ZCNO: %1b%1b%1b%1b\n", A, B, RX, R, li[63:32], li[31:0], (({RX,R}==$unsigned(li))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_SDIV;
        $fwrite(f, "Test: Signed Division\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            tmp = $urandom_range(15,0);
            B = $signed(B) >>> tmp;
            #5 $fwrite(f, "A: %h, B: %h, R: %h, RX: %h, Correct: %h %h, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, RX, $signed(A) / $signed(B), $signed(A) % $signed(B), (($signed(R)==($signed(A) / $signed(B)) && ($signed(RX)==($signed(A) % $signed(B))))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_SADD;
        $fwrite(f, "Test: Signed Addition\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, $signed(A) + $signed(B), (($signed(R)==($signed(A) + $signed(B)))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_SSUB;
        $fwrite(f, "Test: Signed Substraction\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, $signed(A) - $signed(B), (($signed(R)==($signed(A) - $signed(B)))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_SLES;
        $fwrite(f, "Test: Signed Less than\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %32b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, $signed(A) < $signed(B), ((R==($signed(A) < $signed(B)))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        //////
        #5
        modeSel = ALU_UMUL;
        $fwrite(f, "Test: Unsigned Multiply\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            liu = $unsigned(A);
            liu = liu * $unsigned(B);
            #5 $fwrite(f, "A: %h, B: %h, RX R: %h %h, Correct: %h %h, %s, ZCNO: %1b%1b%1b%1b\n", A, B, RX, R, liu[63:32], liu[31:0], (({RX,R}==$unsigned(liu))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_UDIV;
        $fwrite(f, "Test: Unsigned Division\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            tmp = $urandom_range(15,0);
            B = $signed(B) >>> tmp;
            #5 $fwrite(f, "A: %h, B: %h, R: %h, RX: %h, Correct: %h %h, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, RX, $unsigned(A) / $unsigned(B), $unsigned(A) % $unsigned(B), (($unsigned(R)==($unsigned(A) / $unsigned(B)) && ($unsigned(RX)==($unsigned(A) % $unsigned(B))))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_UADD;
        $fwrite(f, "Test: Unsigned Addition\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, $unsigned(A) + $unsigned(B), (($unsigned(R)==($unsigned(A) + $unsigned(B)))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_USUB;
        $fwrite(f, "Test: Unsigned Substraction\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, $unsigned(A) - $unsigned(B), (($unsigned(R)==($unsigned(A) - $unsigned(B)))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        #5
        modeSel = ALU_ULES;
        $fwrite(f, "Test: Unsigned Less than\n");
        for(i = 0; i < 15; i = i+1)begin
            A = $urandom;
            B = $urandom;
            #5 $fwrite(f, "A: %b, B: %b, R: %b, Correct: %32b, %s, ZCNO: %1b%1b%1b%1b\n", A, B, R, $unsigned(A) < $unsigned(B), ((R==($unsigned(A) < $unsigned(B)))?"RIGHT":"WRONG"), isRZero, isCarry, isRNegative, isOverflow);
        end

        $fclose(f);
        $finish;
    end

endmodule
