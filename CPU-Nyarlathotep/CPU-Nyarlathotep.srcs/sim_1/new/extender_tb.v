`timescale 1ns / 1ns

module extender_tb(

    );
    reg [31:0] in;
    reg [5:0] numOfBits;
    reg isSigned;
    wire [31:0] out;

    extender uut(
        .in(in),
        .numOfBits(numOfBits),
        .isSigned(isSigned),
        .out(out)
    );


    integer seed;
    integer f;
    integer i;

    initial begin
        seed = 32'had0897;
        $urandom(seed);

        f = $fopen("extender_tb_output.txt", "w");

        #5
        in = 32'b0110_1110_1011_0110_1110_0001_1001_1010;
        isSigned = 1;
        for (i = 0; i <= 32; i = i+1) begin
            numOfBits = i;
            #5 ;
        end

        isSigned = 0;
        for (i = 0; i <= 32; i = i+1) begin
            numOfBits = i;
            #5 ;
        end

        $fclose(f);
    end

endmodule
