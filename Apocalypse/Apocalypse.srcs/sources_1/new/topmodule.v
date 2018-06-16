`timescale 1ns / 1ps
`include "sdHeader.vh"

module topmodule(
    input CLK100MHZ,

    input [15:0] SW,
    output reg [15:0] LED,
    output [7:0] AN,
    output [7:0] C,

    output SD_SCK,
    output SD_CMD,
    input SD_DAT0,
    output SD_DAT3,
    output SD_RESET,

    input BTNU,
    input BTNC,
    input BTNL,
    input BTND,
    input BTNR,

    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,

    output VGA_HS,
    output wire VGA_VS
);

    wire clk_cpu;
    wire reset_deJittered;
    wire cpuStart_deJittered;

    reg [2:0] reset_deJitter;
    reg [2:0] cpuStart_deJitter;

    wire [31:0] instruction;
    wire [31:0] pc;
    wire [31:0] addr;
    wire [7:0] blState;
    wire [7:0] sdState;
    wire [31:0] debugInfo;
    wire debugInfoAvailable;

    wire [15:0] LED_debug;
    wire [15:0] LED_main;

    wire cpuRunning;
    wire blError,
    wire sdError,
    wire [31:0] debugDMEMData;
    wire [31:0] debugIMEMData;
    wire [31:0] debugRFData;
    wire [31:0] sevenSegOut_main;
    wire [31:0] sevenSegOut_debug;


    always @(posedge CLK100MHZ)
    begin
        reset_deJitter <= {reset_deJitter[1:0], BTNU};
        cpuStart_deJitter <= {cpuStart_deJitter[1:0], BTNC};
    end

    assign reset_deJittered = (reset_deJitter == 3'b111);
    assign cpuStart_deJittered = (cpuStart_deJitter == 3'b111);

    assign LED_main[0] = cpuRunning;
    assign LED_main[1] = reset_deJittered;
    assign LED_main[2] = cpuStart_deJittered;
    assign LED_main[15] = blError;
    assign LED_main[14] = sdError;

    reg [31:0] sevenSegOut;

    always @(posedge CLK100MHZ)
    begin
        if(SW[0]) begin
            sevenSegOut = sevenSegOut_debug;
            LED = LED_debug;
        end else begin
            sevenSegOut = sevenSegOut_main;
            LED = LED_main;
        end
    end

    wire [12:0] debugDMEMAddr;
    wire [12:0] debugIMEMAddr;
    wire [4:0] debugRFAddr;

    debugInfo debugInfo_inst(
        .CLK100MHZ(CLK100MHZ),
        .clk_cpu(clk_cpu),
        .reset(reset_deJittered),
        .SW(SW),
        

        .pc(pc),
        .instruction(instruction),
        .blState(blState),
        .sdState(sdState),
        .debugInfo(debugInfo),
        .debugInfoAvailable(debugInfoAvailable),

        .debugDMEMData(debugDMEMData),
        .debugIMEMData(debugIMEMData),
        .debugRFData(debugRFData),

        .debugDMEMAddr(debugDMEMAddr),
        .debugIMEMAddr(debugIMEMAddr),
        .debugRFAddr(debugRFAddr),

        .LED(LED_debug),
        .sevenSegOut(sevenSegOut_debug)
    );


    computer computer_uut(
        .clk_in(CLK100MHZ),
        .reset(reset_deJittered),
        .cpuStart(cpuStart_deJittered),

        .debugDMEMAddr(debugDMEMAddr),
        .debugIMEMAddr(debugDMEMAddr),
        .debugRFAddr(debugRFAddr),

        .clk_cpu(clk_cpu),
        .inst(instruction),
        .pc(pc),
        .addr(addr),
        .blState(blState),
        .sdState(sdState),
        .debugInfo(debugInfo),
        .debugInfoAvailable(debugInfoAvailable),

        .cpuRunning(cpuRunning),
        .sdError(sdError),
        .blError(blError),

        .debugDMEMData(debugDMEMData),
        .debugIMEMData(debugIMEMData),
        .debugRFData(debugRFData),

        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B),
        .VGA_VS(VGA_VS),
        .VGA_HS(VGA_HS),
        .sevenSegOut(sevenSegOut_main)
    );

    
    
    display_7seg disp7seg(
        .clk_100MHz(CLK100MHZ),
        .digit_ena(`Enabled),
        .digit7(
            sevenSegOut[31:28]
        ),
        .digit6(
            sevenSegOut[27:24]
        ),
        .digit5(
            sevenSegOut[23:20]
        ),
        .digit4(
            sevenSegOut[19:16]
        ),
        .digit3(
            sevenSegOut[15:12]
        ),
        .digit2(
            sevenSegOut[11:8]
        ),
        .digit1(
            sevenSegOut[7:4]
        ),
        .digit0(
            sevenSegOut[3:0]
        ),
        .dot(8'b00000001),
        .led_control({64{1'b0}}),
        .AN(AN),
        .C_wire(C)
    );

endmodule

