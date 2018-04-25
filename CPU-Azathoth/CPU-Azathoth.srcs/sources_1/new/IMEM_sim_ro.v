module IMEM_sim_ro (
    input clka,
    input wea,
    input [9:0] addra,
    input [31:0] dina,
    output reg [31:0] douta
);
    reg [31:0] array_reg [0:1023];
    always @(posedge clka) begin
        douta <= array_reg[addra];
    end
endmodule