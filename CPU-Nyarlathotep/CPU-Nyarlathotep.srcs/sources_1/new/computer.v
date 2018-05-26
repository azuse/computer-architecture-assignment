module computer(
    input clk_in,
    output clk_afterDiv,
    input reset,
    input cpuEna,
    output [31:0] inst,
    output [31:0] pc,
    output [31:0] addr,
    output cpuRunning
);

    wire clk;
    
    //////////////////
    /// Frequency divider
    cpu_div #(4) cpu_clk(clk_in, clk);
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

    /////////
    /// DMEM Address Mapper
    wire [31:0] dmemARealAddr = dmemAAddr - 32'h10010000;

    // DMEM
    assign addr = dmemAEn ? dmemAAddr : 32'hFFFFFFFF;

    DMEM_block dmem (
        .clka(~clk),    // input wire clka
        .ena(dmemAEn),      // input wire ena
        .wea(dmemAWe),      // input wire [3 : 0] wea
        .addra(dmemARealAddr[11:2]),  // input wire [9 : 0] addra
        .dina(dmemAIn),    // input wire [31 : 0] dina
        .douta(dmemAOut)   // output wire [31 : 0] douta
    );

    //////////////
    /// IMEM
    ///
    wire imemWe;
    wire [31:0] imemRAddr;
    wire [31:0] imemOut;

    assign pc = imemRAddr;
    assign inst = imemOut;

    ///////////////
    /// IMEM Address Mapper

    //////////////////
    /// IMEM
    wire [31:0] imemWAddr = 0;
    wire [31:0] imemSelectedAddr = imemWe ? imemWAddr : imemRAddr;
    wire [31:0] imemRealAddr = imemSelectedAddr - 32'h00400000;
    wire [31:0] imemWData = 32'hffffffff;
    IMEM_dist imem (
        .a(imemSelectedAddr[13:2]),
        .d(32'hFFFFFFFF),
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
        .dmemAOut(dmemAOut),
        .cpuRunning(cpuRunning),
        .pc(imemRAddr),
        .inst(imemOut),
        .imemWAddr(imemWAddr),
        .imemWData(imemWData),
        .imemWe(imemWe)
    );
endmodule