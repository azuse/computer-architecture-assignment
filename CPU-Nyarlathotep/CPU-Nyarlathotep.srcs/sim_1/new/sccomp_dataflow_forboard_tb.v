module sccomp_dataflow_forboard_tb(
    );
    reg clk_in;
    reg reset;
    reg [15:0] sw = 16'hffff;
    wire [7:0] o_seg;
    wire [7:0] o_sel;

    sccomp_dataflow uut(
        .clk_in(clk_in),
        .reset(reset),
        .sw(sw),
        .o_seg(o_seg),
        .o_sel(o_sel)
    );

    wire [31:0] pc = uut.imemRAddr;
    wire [31:0] inst = uut.imemOut;
    wire seg7_cs = uut.seg7_cs;
    wire switch_cs = uut.switch_cs;
    wire [31:0] dmemAOut_Selected = uut.dmemAOut_Selected;
    wire [31:0] i_data_store = uut.seg7disp.i_data_store;
    
    initial begin
        clk_in = 0;
        reset = 1;
        //file_output = $fopen("results.txt");
        #26
        //$readmemh("../../../Test/54_div.hex.txt", uut.imem.array_reg);
        reset = 0;
    end
    
    
    
    always #5 clk_in = ~clk_in;
endmodule