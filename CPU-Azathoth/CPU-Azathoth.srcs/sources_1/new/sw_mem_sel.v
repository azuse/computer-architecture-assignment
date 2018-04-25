module sw_mem_sel(
    input switch_cs,
    input [15:0] sw,
    input [31:0] originalData,
    output [31:0] selectedData
);

    assign selectedData = (switch_cs) ? {16'b0, sw[15:0]} : originalData;
endmodule