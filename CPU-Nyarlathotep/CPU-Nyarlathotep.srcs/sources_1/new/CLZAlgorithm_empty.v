module CLZAlgorithm_empty(
    input [31:0] A,
    output [5:0] R,  //Max: 32, 6 bits
    output busy
);
    assign busy = 1'b0;
    
    assign R = 0;
endmodule