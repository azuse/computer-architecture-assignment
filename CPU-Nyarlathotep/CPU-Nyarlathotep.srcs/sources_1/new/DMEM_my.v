module DMEM_my(
    input clka,
    input ena,
    input [3:0] wea,
    input [9:0] addra,
    input [31:0] dina,
    output [31:0] douta
);
    reg [31:0] array_reg [0:1023];
    wire [31:0] newDina = {wea[3] ? dina[31:24] : array_reg[addra][31:24], wea[2] ? dina[23:16] : array_reg[addra][23:16], wea[1] ? dina[15:8] : array_reg[addra][15:8], wea[0] ? dina[7:0] : array_reg[addra][7:0]};
    assign douta = ena ? array_reg[addra] : 32'hcfcfcfcf;
    always @(posedge clka)
    begin
        if (ena)
        begin
            if (wea != 4'h0)
                array_reg[addra] <= newDina;
        end
    end
endmodule