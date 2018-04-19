`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/28 10:43:59
// Design Name: 
// Module Name: test_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_tb(

    );
    reg clk = 0;
    reg [3:0] wea = 0;
    reg [31:0] addra;
    wire [31:0] douta;
    wire [31:0] doutb;
    reg [31:0] dina;
    always #6 clk = ~clk;
    
    
    blk_mem_gen_0 your_instance_name (
      .clka(clk),    // input wire clka
      .ena(1),      // input wire ena
      .wea(wea),      // input wire [3 : 0] wea
      .addra(addra[9:0]),  // input wire [9 : 0] addra
      .dina(dina),    // input wire [31 : 0] dina
      .douta(douta),  // output wire [31 : 0] douta
      .clkb(clk),    // input wire clkb
      .enb(0),      // input wire enb
      .web(0),      // input wire [0 : 0] web
      .addrb(0),  // input wire [11 : 0] addrb
      .dinb(0),    // input wire [7 : 0] dinb
      .doutb(doutb)  // output wire [7 : 0] doutb
    );
    
    initial begin
        #3 wea = 4'b1111;
        addra = 1;
        dina = 32'h12345678;
        #12 wea = 4'b0000;
        addra = 3;
        #108
        addra = 1;
        
    
    end
endmodule
