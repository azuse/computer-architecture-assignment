
`define Enabled 1'b1
`define Disabled 1'b0

module computer(
    input clk_in,
    input reset,
    input cpuEna,
    input ioSelEna,
    input [12:0] debugDMEMAddr,
    input [12:0] debugIMEMAddr,
    input [4:0] debugRFAddr,
    input [15:0] SW_stored_input,

    output clk_cpu,
    output [31:0] inst,
    output [31:0] pc,
    output [31:0] addr,
    output cpuRunning,
    output [31:0] debugDMEMData,
    output [31:0] debugIMEMData,
    output [31:0] debugRFData,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS,
    output [31:0] sevenSegOut
);

    wire clk_vga;

    //////////////////
    /// VGA

    wire [10:0] x;
    wire [9:0] y;

    wire [10:0] xNext;
    wire [9:0] yNext;

    wire [17:0] vgaMemXYAddr = {yNext[9:1], xNext[9:1]};

    wire inplace;

    reg [3:0] VGA_R_r;
    reg [3:0] VGA_G_r;
    reg [3:0] VGA_B_r;

    wire [15:0] vgaMemWord;
    
    vga vga_inst
    (
        .clk(clk_vga),
        .rst(reset),
        .hsync(VGA_HS),
        .vsync(VGA_VS),
        .x(x),
        .y(y),
        .xNext(xNext),
        .yNext(yNext),
        .inplace(inplace)
    );

    vga_mem vga_mem_inst (
        .clka(clk_vga),    // input wire clka
        .wea(`Disabled),      // input wire [0 : 0] wea
        .addra(vgaMemXYAddr),  // input wire [17 : 0] addra
        .dina(15'h0),    // input wire [15 : 0] dina
        .clkb(clk_vga),    // input wire clkb
        .enb(`Enabled),      // input wire enb
        .addrb(vgaMemXYAddr),  // input wire [17 : 0] addrb
        .doutb(vgaMemWord)  // output wire [15 : 0] doutb
    );

    always @(*)
    begin
        VGA_R_r = vgaMemWord[15:12];
        VGA_G_r = vgaMemWord[10:7];
        VGA_B_r = vgaMemWord[4:1];
    end
    
    assign VGA_R = inplace ? VGA_R_r : 4'hz;
    assign VGA_G = inplace ? VGA_G_r : 4'hz;
    assign VGA_B = inplace ? VGA_B_r : 4'hz;

    
    //////////////////
    /// Clock generator
    
    clk_generator clkgen_inst(
        .clk_100MHz(clk_in),
        .clk_vga(clk_vga),
        .clk_cpu(clk_cpu)
    );

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
    wire clk_cpu_n = ~clk_cpu;

    DMEM dmem (
        .clka(clk_cpu_n),    // input wire clka
        .ena(dmemAEn),      // input wire ena
        .wea(dmemAWe),      // input wire [3 : 0] wea
        .addra(dmemARealAddr[14:2]),
        .dina(dmemAIn),    // input wire [31 : 0] dina
        .douta(dmemAOut),   // output wire [31 : 0] douta
        .clkb(clk_in),
        .web(0),
        .addrb(debugDMEMAddr),
        .dinb('hx),
        .doutb(debugDMEMData)
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
    IMEM imem (
        .a(imemSelectedAddr[14:2]),
        .d(32'hFFFFFFFF),
        .dpra(debugIMEMAddr),
        .clk(clk_cpu),
        .we(imemWe),
        .spo(imemOut),
        .dpo(debugIMEMData)
    );

    //////////////
    /// I/O Selector
    /// When DMEM read address becomes some certain values, enables seg7_ChipSelect(to make dmemAIn displayed on LED) or switch_ChipSelect signals(to select dmemAOut_Selected as the input of 15 switches rather than default DMEM output).

    wire ioSelector_Ena = ioSelEna;

    wire seg7_cs;
    wire switch_cs;
    
    

    io_sel ioselector_signalgen(
        .addr(dmemAAddr),
        .cs(ioSelector_Ena),
        .sig_w(dmemAWe[3] & dmemAWe[2] & dmemAWe[1] & dmemAWe[0]),
        .sig_r(dmemAEn & ~(dmemAWe[3] & dmemAWe[2] & dmemAWe[1] & dmemAWe[0])),
        .seg7_cs(seg7_cs),
        .switch_cs(switch_cs)
    );

    ////////////////////
    /// Output device - seg7x16
    /// when seg7_cs is on, latches i_data and encodes it to seven-segment display signals to o_seg and o_sel.

    sevenSegSelector sevenSeg_inst(
        .clk(clk_cpu),
        .reset(reset),
        .cs(seg7_cs),
        .i_data(dmemAIn),
        .o_data(sevenSegOut)
    );

    //////////////
    /// CPU Instantiation
    nyarlathotep sccpu(
        .clk(clk_cpu),
        .reset(reset),
        .ena(cpuEna),
        .dmemAEn(dmemAEn),
        .dmemAWe(dmemAWe),
        .dmemAAddr(dmemAAddr),
        .dmemAIn(dmemAIn),
        .dmemAOut((dmemAAddr == 32'h10010010 && ioSelector_Ena && dmemAEn) ? (SW_stored_input) : dmemAOut),
        //.dmemAOut(dmemAOut),
        .cpuRunning(cpuRunning),
        .pc(imemRAddr),
        .inst(imemOut),
        .imemWAddr(imemWAddr),
        .imemWData(imemWData),
        .imemWe(imemWe),
        .debugRFAddr(debugRFAddr),
        .debugRFData(debugRFData)
    );
endmodule

module io_sel(
    input [31:0] addr,
    input cs,
    input sig_w,
    input sig_r,
    output seg7_cs,
    output switch_cs
);
    assign seg7_cs = (addr == 32'h10010000 && cs == 1 && sig_w == 1) ? 1 : 0;
    assign switch_cs = (addr == 32'h10010010 && cs == 1 && sig_r == 1) ? 1 : 0;
endmodule

module sevenSegSelector(
    input clk,
    input reset,
    input cs,
    input [31:0] i_data,
    output [31:0] o_data
);

    reg [31:0] i_data_store;

    always @ (posedge clk)
    if(reset)
        i_data_store <= 0;
    else if(cs)
        i_data_store <= i_data;
        
    assign o_data = i_data_store;

endmodule
