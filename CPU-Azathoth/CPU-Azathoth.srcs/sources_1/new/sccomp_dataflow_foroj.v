module sccomp_dataflow(
    input clk_in,
    input clk_afterDiv,
    input reset,
    input cpuEna_n,
    output [31:0] inst,
    output [31:0] pc,
    output [31:0] addr,
    output cpuRunning
);

    wire clk;
    
    //////////////////
    /// Frequency divider
    cpu_div #(1) cpu_clk(clk_in, reset, clk);
    assign clk_afterDiv = clk;

    ////////////////
    /// DMEM
    /// Port A: Work at falling edge of clk.
    /// Port B: Work at rising edge of clk.
    wire dmemAEn;
    wire [3:0] dmemAWe;
    wire [31:0] dmemAAddr;
    wire [31:0] dmemAIn;
    wire [31:0] dmemAOut;
    wire [31:0] dmemAOut_Selected;

    /////////
    /// DMEM Address Mapper
    wire [31:0] dmemARealAddr = dmemAAddr - 32'h10010000;

    // DMEM Port A has priority
    // Oh, I don't think we will need DMEM port B anymore...
    assign addr = dmemAEn ? dmemAAddr : 32'hFFFFFFFF;

    DMEM dmem (
        .clka(~clk),    // input wire clka
        .ena(dmemAEn),      // input wire ena
        .wea(dmemAWe),      // input wire [3 : 0] wea
        .addra(dmemARealAddr[11:2]),  // input wire [9 : 0] addra
        .dina(dmemAIn),    // input wire [31 : 0] dina
        .douta(dmemAOut)   // output wire [31 : 0] douta
    );

    //////////////
    /// I/O Selector
    /// When DMEM read address becomes some certain values, enables seg7_ChipSelect(to make dmemAIn displayed on LED) or switch_ChipSelect signals(to select dmemAOut_Selected as the input of 15 switches rather than default DMEM output).

    // this sccomp_dataflow is for OJ, so we don't enable ioSelector
    wire ioSelector_Ena = 0;

    wire seg7_cs;
    wire switch_cs;
    io_sel ioselector_signalgen(
        .addr(dmemAAddr),
        .cs(ioSelector_Ena),
        .sig_w(dmemAWe[3] & dmemAWe[2] & dmemAWe[1] & dmemAWe[0]),
        .sig_r(dmemAEn),
        .seg7_cs(seg7_cs),
        .switch_cs(switch_cs)
    );

    wire [15:0] sw;
    sw_mem_sel ioselector_dmemaout(
        .switch_cs(switch_cs),
        .sw(sw),
        .originalData(dmemAOut),
        .selectedData(dmemAOut_Selected)
    );

    ////////////////////
    /// Output device - seg7x16
    /// when seg7_cs is on, latches i_data and encodes it to seven-segment display signals to o_seg and o_sel.
    wire [7:0] o_seg;
    wire [7:0] o_sel;

    seg7x16 seg7disp(
        .clk(clk),
        .reset(reset),
        .cs(seg7_cs),
        .i_data(dmemAIn),
        .o_seg(o_seg),
        .o_sel(o_sel)
    );

    //////////////
    /// IMEM
    ///
    wire imemWe = 0;
    wire [31:0] imemAddr;
    wire [31:0] imemIn = 0;
    wire [31:0] imemOut;

    assign pc = imemAddr;
    assign inst = imemOut;

    ///////////////
    /// IMEM Address Mapper
    wire [31:0] imemRealAddr = imemAddr - 32'h00400000;
    IMEM_dist imem (
        .a(imemRealAddr[13:2]),
        .spo(imemOut)
    );

    //////////////
    /// CPU Instantiation
    /// Oh, I don't think we will need DMEM port B anymore...
    azathoth sccpu(
        .clk(clk),
        .reset(reset),
        .ena(1'b1),
        .dmemAEn(dmemAEn),
        .dmemAWe(dmemAWe),
        .dmemAAddr(dmemAAddr),
        .dmemAIn(dmemAIn),
        .dmemAOut(dmemAOut_Selected),
        .cpuRunning(cpuRunning),
        .pc(imemAddr),
        .inst(imemOut)
    );
endmodule