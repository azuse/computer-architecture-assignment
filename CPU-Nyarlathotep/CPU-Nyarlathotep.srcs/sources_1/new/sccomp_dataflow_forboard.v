module sccomp_dataflow(
    input clk_in,
    input reset,
    input [15:0] sw,
    output [7:0] o_seg,
    output [7:0] o_sel
);

    wire clk;
    wire cpuEna = 1'b1;
    wire cpuRunning = 1'b1;
    
    //////////////////
    /// Frequency divider
    cpu_div #(4) cpu_clk(clk_in, clk);
    wire clk_afterDiv = clk;

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

    // DMEM
    wire addr = dmemAEn ? dmemAAddr : 32'hFFFFFFFF;

    DMEM_block dmem (
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

    wire ioSelector_Ena = 1'b1;

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

    //wire [15:0] sw;
    sw_mem_sel ioselector_dmemaout(
        .switch_cs(switch_cs),
        .sw(sw),
        .originalData(dmemAOut),
        .selectedData(dmemAOut_Selected)
    );

    ////////////////////
    /// Output device - seg7x16
    /// when seg7_cs is on, latches i_data and encodes it to seven-segment display signals to o_seg and o_sel.
    //wire [7:0] o_seg;
    //wire [7:0] o_sel;

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
    wire [31:0] imemRAddr;
    wire [31:0] imemIn = 0;
    wire [31:0] imemOut;

    wire pc = imemRAddr;
    wire inst = imemOut;

    ///////////////
    /// IMEM Address Mapper
    wire [31:0] imemRealAddr = imemSelectedAddr - 32'h00400000;

    //////////////////
    /// IMEM
    wire [31:0] imemWAddr = 0;
    wire [31:0] imemSelectedAddr = imemWe ? imemWAddr : imemRAddr;
    wire [31:0] imemWData = 32'hffffffff;
    IMEM_dist imem (
        .a(imemRealAddr[13:2]),
        .d(imemWData),
        .clk(clk_afterDiv),
        .we(imemWe),
        .spo(imemOut)
    );

    //////////////
    /// CPU Instantiation
    nyarlathotep sccpu(
        .clk(clk),
        .reset(reset),
        .ena(cpuEna),
        .dmemAEn(dmemAEn),
        .dmemAWe(dmemAWe),
        .dmemAAddr(dmemAAddr),
        .dmemAIn(dmemAIn),
        .dmemAOut(dmemAOut_Selected),
        .cpuRunning(cpuRunning),
        .pc(imemRAddr),
        .inst(imemOut),
        .imemWAddr(imemWAddr),
        .imemWData(imemWData),
        .imemWe(imemWe)
    );

endmodule