// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Apr 26 15:19:09 2018
// Host        : SHUN-LAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Projects/CompArch/CPU-Azathoth/CPU-Azathoth.srcs/sources_1/ip/IMEM_dist/IMEM_dist_sim_netlist.v
// Design      : IMEM_dist
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IMEM_dist,dist_mem_gen_v8_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_10,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module IMEM_dist
   (a,
    spo);
  input [11:0]a;
  output [31:0]spo;

  wire [11:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* c_addr_width = "12" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4096" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "IMEM_dist.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  IMEM_dist_dist_mem_gen_v8_0_10 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "12" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "4096" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "IMEM_dist.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_10" *) 
module IMEM_dist_dist_mem_gen_v8_0_10
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [11:0]a;
  input [31:0]d;
  input [11:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [11:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:25] = \^spo [29:25];
  assign spo[24] = \^spo [25];
  assign spo[23:0] = \^spo [23:0];
  GND GND
       (.G(\<const0> ));
  IMEM_dist_dist_mem_gen_v8_0_10_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31],\^spo [29:25],\^spo [23:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_10_synth" *) 
module IMEM_dist_dist_mem_gen_v8_0_10_synth
   (spo,
    a);
  output [29:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [29:0]spo;

  IMEM_dist_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module IMEM_dist_rom
   (spo,
    a);
  output [29:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [29:0]spo;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_38_n_0 ;
  wire \spo[0]_INST_0_i_39_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_40_n_0 ;
  wire \spo[0]_INST_0_i_41_n_0 ;
  wire \spo[0]_INST_0_i_42_n_0 ;
  wire \spo[0]_INST_0_i_43_n_0 ;
  wire \spo[0]_INST_0_i_44_n_0 ;
  wire \spo[0]_INST_0_i_45_n_0 ;
  wire \spo[0]_INST_0_i_46_n_0 ;
  wire \spo[0]_INST_0_i_47_n_0 ;
  wire \spo[0]_INST_0_i_48_n_0 ;
  wire \spo[0]_INST_0_i_49_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[10]_INST_0_i_10_n_0 ;
  wire \spo[10]_INST_0_i_11_n_0 ;
  wire \spo[10]_INST_0_i_12_n_0 ;
  wire \spo[10]_INST_0_i_13_n_0 ;
  wire \spo[10]_INST_0_i_14_n_0 ;
  wire \spo[10]_INST_0_i_15_n_0 ;
  wire \spo[10]_INST_0_i_16_n_0 ;
  wire \spo[10]_INST_0_i_17_n_0 ;
  wire \spo[10]_INST_0_i_18_n_0 ;
  wire \spo[10]_INST_0_i_19_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_20_n_0 ;
  wire \spo[10]_INST_0_i_21_n_0 ;
  wire \spo[10]_INST_0_i_22_n_0 ;
  wire \spo[10]_INST_0_i_23_n_0 ;
  wire \spo[10]_INST_0_i_24_n_0 ;
  wire \spo[10]_INST_0_i_25_n_0 ;
  wire \spo[10]_INST_0_i_26_n_0 ;
  wire \spo[10]_INST_0_i_27_n_0 ;
  wire \spo[10]_INST_0_i_28_n_0 ;
  wire \spo[10]_INST_0_i_29_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_30_n_0 ;
  wire \spo[10]_INST_0_i_31_n_0 ;
  wire \spo[10]_INST_0_i_32_n_0 ;
  wire \spo[10]_INST_0_i_33_n_0 ;
  wire \spo[10]_INST_0_i_34_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_7_n_0 ;
  wire \spo[10]_INST_0_i_8_n_0 ;
  wire \spo[10]_INST_0_i_9_n_0 ;
  wire \spo[11]_INST_0_i_10_n_0 ;
  wire \spo[11]_INST_0_i_11_n_0 ;
  wire \spo[11]_INST_0_i_12_n_0 ;
  wire \spo[11]_INST_0_i_13_n_0 ;
  wire \spo[11]_INST_0_i_14_n_0 ;
  wire \spo[11]_INST_0_i_15_n_0 ;
  wire \spo[11]_INST_0_i_16_n_0 ;
  wire \spo[11]_INST_0_i_17_n_0 ;
  wire \spo[11]_INST_0_i_18_n_0 ;
  wire \spo[11]_INST_0_i_19_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_20_n_0 ;
  wire \spo[11]_INST_0_i_21_n_0 ;
  wire \spo[11]_INST_0_i_22_n_0 ;
  wire \spo[11]_INST_0_i_23_n_0 ;
  wire \spo[11]_INST_0_i_24_n_0 ;
  wire \spo[11]_INST_0_i_25_n_0 ;
  wire \spo[11]_INST_0_i_26_n_0 ;
  wire \spo[11]_INST_0_i_27_n_0 ;
  wire \spo[11]_INST_0_i_28_n_0 ;
  wire \spo[11]_INST_0_i_29_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_30_n_0 ;
  wire \spo[11]_INST_0_i_31_n_0 ;
  wire \spo[11]_INST_0_i_32_n_0 ;
  wire \spo[11]_INST_0_i_33_n_0 ;
  wire \spo[11]_INST_0_i_34_n_0 ;
  wire \spo[11]_INST_0_i_35_n_0 ;
  wire \spo[11]_INST_0_i_36_n_0 ;
  wire \spo[11]_INST_0_i_37_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_7_n_0 ;
  wire \spo[11]_INST_0_i_8_n_0 ;
  wire \spo[11]_INST_0_i_9_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_10_n_0 ;
  wire \spo[13]_INST_0_i_11_n_0 ;
  wire \spo[13]_INST_0_i_12_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_7_n_0 ;
  wire \spo[13]_INST_0_i_8_n_0 ;
  wire \spo[13]_INST_0_i_9_n_0 ;
  wire \spo[14]_INST_0_i_10_n_0 ;
  wire \spo[14]_INST_0_i_11_n_0 ;
  wire \spo[14]_INST_0_i_12_n_0 ;
  wire \spo[14]_INST_0_i_13_n_0 ;
  wire \spo[14]_INST_0_i_14_n_0 ;
  wire \spo[14]_INST_0_i_15_n_0 ;
  wire \spo[14]_INST_0_i_16_n_0 ;
  wire \spo[14]_INST_0_i_17_n_0 ;
  wire \spo[14]_INST_0_i_18_n_0 ;
  wire \spo[14]_INST_0_i_19_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_20_n_0 ;
  wire \spo[14]_INST_0_i_21_n_0 ;
  wire \spo[14]_INST_0_i_22_n_0 ;
  wire \spo[14]_INST_0_i_23_n_0 ;
  wire \spo[14]_INST_0_i_24_n_0 ;
  wire \spo[14]_INST_0_i_25_n_0 ;
  wire \spo[14]_INST_0_i_26_n_0 ;
  wire \spo[14]_INST_0_i_27_n_0 ;
  wire \spo[14]_INST_0_i_28_n_0 ;
  wire \spo[14]_INST_0_i_29_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_30_n_0 ;
  wire \spo[14]_INST_0_i_31_n_0 ;
  wire \spo[14]_INST_0_i_32_n_0 ;
  wire \spo[14]_INST_0_i_33_n_0 ;
  wire \spo[14]_INST_0_i_34_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_7_n_0 ;
  wire \spo[14]_INST_0_i_8_n_0 ;
  wire \spo[14]_INST_0_i_9_n_0 ;
  wire \spo[15]_INST_0_i_10_n_0 ;
  wire \spo[15]_INST_0_i_11_n_0 ;
  wire \spo[15]_INST_0_i_12_n_0 ;
  wire \spo[15]_INST_0_i_13_n_0 ;
  wire \spo[15]_INST_0_i_14_n_0 ;
  wire \spo[15]_INST_0_i_15_n_0 ;
  wire \spo[15]_INST_0_i_16_n_0 ;
  wire \spo[15]_INST_0_i_17_n_0 ;
  wire \spo[15]_INST_0_i_18_n_0 ;
  wire \spo[15]_INST_0_i_19_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_20_n_0 ;
  wire \spo[15]_INST_0_i_21_n_0 ;
  wire \spo[15]_INST_0_i_22_n_0 ;
  wire \spo[15]_INST_0_i_23_n_0 ;
  wire \spo[15]_INST_0_i_24_n_0 ;
  wire \spo[15]_INST_0_i_25_n_0 ;
  wire \spo[15]_INST_0_i_26_n_0 ;
  wire \spo[15]_INST_0_i_27_n_0 ;
  wire \spo[15]_INST_0_i_28_n_0 ;
  wire \spo[15]_INST_0_i_29_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_30_n_0 ;
  wire \spo[15]_INST_0_i_31_n_0 ;
  wire \spo[15]_INST_0_i_32_n_0 ;
  wire \spo[15]_INST_0_i_33_n_0 ;
  wire \spo[15]_INST_0_i_34_n_0 ;
  wire \spo[15]_INST_0_i_35_n_0 ;
  wire \spo[15]_INST_0_i_36_n_0 ;
  wire \spo[15]_INST_0_i_37_n_0 ;
  wire \spo[15]_INST_0_i_38_n_0 ;
  wire \spo[15]_INST_0_i_39_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_7_n_0 ;
  wire \spo[15]_INST_0_i_8_n_0 ;
  wire \spo[15]_INST_0_i_9_n_0 ;
  wire \spo[16]_INST_0_i_10_n_0 ;
  wire \spo[16]_INST_0_i_11_n_0 ;
  wire \spo[16]_INST_0_i_12_n_0 ;
  wire \spo[16]_INST_0_i_13_n_0 ;
  wire \spo[16]_INST_0_i_14_n_0 ;
  wire \spo[16]_INST_0_i_15_n_0 ;
  wire \spo[16]_INST_0_i_16_n_0 ;
  wire \spo[16]_INST_0_i_17_n_0 ;
  wire \spo[16]_INST_0_i_18_n_0 ;
  wire \spo[16]_INST_0_i_19_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_20_n_0 ;
  wire \spo[16]_INST_0_i_21_n_0 ;
  wire \spo[16]_INST_0_i_22_n_0 ;
  wire \spo[16]_INST_0_i_23_n_0 ;
  wire \spo[16]_INST_0_i_24_n_0 ;
  wire \spo[16]_INST_0_i_25_n_0 ;
  wire \spo[16]_INST_0_i_26_n_0 ;
  wire \spo[16]_INST_0_i_27_n_0 ;
  wire \spo[16]_INST_0_i_28_n_0 ;
  wire \spo[16]_INST_0_i_29_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_30_n_0 ;
  wire \spo[16]_INST_0_i_31_n_0 ;
  wire \spo[16]_INST_0_i_32_n_0 ;
  wire \spo[16]_INST_0_i_33_n_0 ;
  wire \spo[16]_INST_0_i_34_n_0 ;
  wire \spo[16]_INST_0_i_35_n_0 ;
  wire \spo[16]_INST_0_i_36_n_0 ;
  wire \spo[16]_INST_0_i_37_n_0 ;
  wire \spo[16]_INST_0_i_38_n_0 ;
  wire \spo[16]_INST_0_i_39_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_40_n_0 ;
  wire \spo[16]_INST_0_i_41_n_0 ;
  wire \spo[16]_INST_0_i_42_n_0 ;
  wire \spo[16]_INST_0_i_43_n_0 ;
  wire \spo[16]_INST_0_i_44_n_0 ;
  wire \spo[16]_INST_0_i_45_n_0 ;
  wire \spo[16]_INST_0_i_46_n_0 ;
  wire \spo[16]_INST_0_i_47_n_0 ;
  wire \spo[16]_INST_0_i_48_n_0 ;
  wire \spo[16]_INST_0_i_49_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_50_n_0 ;
  wire \spo[16]_INST_0_i_51_n_0 ;
  wire \spo[16]_INST_0_i_52_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_7_n_0 ;
  wire \spo[16]_INST_0_i_8_n_0 ;
  wire \spo[16]_INST_0_i_9_n_0 ;
  wire \spo[17]_INST_0_i_10_n_0 ;
  wire \spo[17]_INST_0_i_11_n_0 ;
  wire \spo[17]_INST_0_i_12_n_0 ;
  wire \spo[17]_INST_0_i_13_n_0 ;
  wire \spo[17]_INST_0_i_14_n_0 ;
  wire \spo[17]_INST_0_i_15_n_0 ;
  wire \spo[17]_INST_0_i_16_n_0 ;
  wire \spo[17]_INST_0_i_17_n_0 ;
  wire \spo[17]_INST_0_i_18_n_0 ;
  wire \spo[17]_INST_0_i_19_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_20_n_0 ;
  wire \spo[17]_INST_0_i_21_n_0 ;
  wire \spo[17]_INST_0_i_22_n_0 ;
  wire \spo[17]_INST_0_i_23_n_0 ;
  wire \spo[17]_INST_0_i_24_n_0 ;
  wire \spo[17]_INST_0_i_25_n_0 ;
  wire \spo[17]_INST_0_i_26_n_0 ;
  wire \spo[17]_INST_0_i_27_n_0 ;
  wire \spo[17]_INST_0_i_28_n_0 ;
  wire \spo[17]_INST_0_i_29_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_30_n_0 ;
  wire \spo[17]_INST_0_i_31_n_0 ;
  wire \spo[17]_INST_0_i_32_n_0 ;
  wire \spo[17]_INST_0_i_33_n_0 ;
  wire \spo[17]_INST_0_i_34_n_0 ;
  wire \spo[17]_INST_0_i_35_n_0 ;
  wire \spo[17]_INST_0_i_36_n_0 ;
  wire \spo[17]_INST_0_i_37_n_0 ;
  wire \spo[17]_INST_0_i_38_n_0 ;
  wire \spo[17]_INST_0_i_39_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_40_n_0 ;
  wire \spo[17]_INST_0_i_41_n_0 ;
  wire \spo[17]_INST_0_i_42_n_0 ;
  wire \spo[17]_INST_0_i_43_n_0 ;
  wire \spo[17]_INST_0_i_44_n_0 ;
  wire \spo[17]_INST_0_i_45_n_0 ;
  wire \spo[17]_INST_0_i_46_n_0 ;
  wire \spo[17]_INST_0_i_47_n_0 ;
  wire \spo[17]_INST_0_i_48_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_7_n_0 ;
  wire \spo[17]_INST_0_i_8_n_0 ;
  wire \spo[17]_INST_0_i_9_n_0 ;
  wire \spo[18]_INST_0_i_10_n_0 ;
  wire \spo[18]_INST_0_i_11_n_0 ;
  wire \spo[18]_INST_0_i_12_n_0 ;
  wire \spo[18]_INST_0_i_13_n_0 ;
  wire \spo[18]_INST_0_i_14_n_0 ;
  wire \spo[18]_INST_0_i_15_n_0 ;
  wire \spo[18]_INST_0_i_16_n_0 ;
  wire \spo[18]_INST_0_i_17_n_0 ;
  wire \spo[18]_INST_0_i_18_n_0 ;
  wire \spo[18]_INST_0_i_19_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_20_n_0 ;
  wire \spo[18]_INST_0_i_21_n_0 ;
  wire \spo[18]_INST_0_i_22_n_0 ;
  wire \spo[18]_INST_0_i_23_n_0 ;
  wire \spo[18]_INST_0_i_24_n_0 ;
  wire \spo[18]_INST_0_i_25_n_0 ;
  wire \spo[18]_INST_0_i_26_n_0 ;
  wire \spo[18]_INST_0_i_27_n_0 ;
  wire \spo[18]_INST_0_i_28_n_0 ;
  wire \spo[18]_INST_0_i_29_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_30_n_0 ;
  wire \spo[18]_INST_0_i_31_n_0 ;
  wire \spo[18]_INST_0_i_32_n_0 ;
  wire \spo[18]_INST_0_i_33_n_0 ;
  wire \spo[18]_INST_0_i_34_n_0 ;
  wire \spo[18]_INST_0_i_35_n_0 ;
  wire \spo[18]_INST_0_i_36_n_0 ;
  wire \spo[18]_INST_0_i_37_n_0 ;
  wire \spo[18]_INST_0_i_38_n_0 ;
  wire \spo[18]_INST_0_i_39_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_40_n_0 ;
  wire \spo[18]_INST_0_i_41_n_0 ;
  wire \spo[18]_INST_0_i_42_n_0 ;
  wire \spo[18]_INST_0_i_43_n_0 ;
  wire \spo[18]_INST_0_i_44_n_0 ;
  wire \spo[18]_INST_0_i_45_n_0 ;
  wire \spo[18]_INST_0_i_46_n_0 ;
  wire \spo[18]_INST_0_i_47_n_0 ;
  wire \spo[18]_INST_0_i_48_n_0 ;
  wire \spo[18]_INST_0_i_49_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_50_n_0 ;
  wire \spo[18]_INST_0_i_51_n_0 ;
  wire \spo[18]_INST_0_i_52_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_7_n_0 ;
  wire \spo[18]_INST_0_i_8_n_0 ;
  wire \spo[18]_INST_0_i_9_n_0 ;
  wire \spo[19]_INST_0_i_10_n_0 ;
  wire \spo[19]_INST_0_i_11_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_7_n_0 ;
  wire \spo[19]_INST_0_i_8_n_0 ;
  wire \spo[19]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_36_n_0 ;
  wire \spo[1]_INST_0_i_37_n_0 ;
  wire \spo[1]_INST_0_i_38_n_0 ;
  wire \spo[1]_INST_0_i_39_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_40_n_0 ;
  wire \spo[1]_INST_0_i_41_n_0 ;
  wire \spo[1]_INST_0_i_42_n_0 ;
  wire \spo[1]_INST_0_i_43_n_0 ;
  wire \spo[1]_INST_0_i_44_n_0 ;
  wire \spo[1]_INST_0_i_45_n_0 ;
  wire \spo[1]_INST_0_i_46_n_0 ;
  wire \spo[1]_INST_0_i_47_n_0 ;
  wire \spo[1]_INST_0_i_48_n_0 ;
  wire \spo[1]_INST_0_i_49_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_50_n_0 ;
  wire \spo[1]_INST_0_i_51_n_0 ;
  wire \spo[1]_INST_0_i_52_n_0 ;
  wire \spo[1]_INST_0_i_53_n_0 ;
  wire \spo[1]_INST_0_i_54_n_0 ;
  wire \spo[1]_INST_0_i_55_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[20]_INST_0_i_10_n_0 ;
  wire \spo[20]_INST_0_i_11_n_0 ;
  wire \spo[20]_INST_0_i_12_n_0 ;
  wire \spo[20]_INST_0_i_13_n_0 ;
  wire \spo[20]_INST_0_i_14_n_0 ;
  wire \spo[20]_INST_0_i_15_n_0 ;
  wire \spo[20]_INST_0_i_16_n_0 ;
  wire \spo[20]_INST_0_i_17_n_0 ;
  wire \spo[20]_INST_0_i_18_n_0 ;
  wire \spo[20]_INST_0_i_19_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_20_n_0 ;
  wire \spo[20]_INST_0_i_21_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_7_n_0 ;
  wire \spo[20]_INST_0_i_8_n_0 ;
  wire \spo[20]_INST_0_i_9_n_0 ;
  wire \spo[21]_INST_0_i_10_n_0 ;
  wire \spo[21]_INST_0_i_11_n_0 ;
  wire \spo[21]_INST_0_i_12_n_0 ;
  wire \spo[21]_INST_0_i_13_n_0 ;
  wire \spo[21]_INST_0_i_14_n_0 ;
  wire \spo[21]_INST_0_i_15_n_0 ;
  wire \spo[21]_INST_0_i_16_n_0 ;
  wire \spo[21]_INST_0_i_17_n_0 ;
  wire \spo[21]_INST_0_i_18_n_0 ;
  wire \spo[21]_INST_0_i_19_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_20_n_0 ;
  wire \spo[21]_INST_0_i_21_n_0 ;
  wire \spo[21]_INST_0_i_22_n_0 ;
  wire \spo[21]_INST_0_i_23_n_0 ;
  wire \spo[21]_INST_0_i_24_n_0 ;
  wire \spo[21]_INST_0_i_25_n_0 ;
  wire \spo[21]_INST_0_i_26_n_0 ;
  wire \spo[21]_INST_0_i_27_n_0 ;
  wire \spo[21]_INST_0_i_28_n_0 ;
  wire \spo[21]_INST_0_i_29_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_30_n_0 ;
  wire \spo[21]_INST_0_i_31_n_0 ;
  wire \spo[21]_INST_0_i_32_n_0 ;
  wire \spo[21]_INST_0_i_33_n_0 ;
  wire \spo[21]_INST_0_i_34_n_0 ;
  wire \spo[21]_INST_0_i_35_n_0 ;
  wire \spo[21]_INST_0_i_36_n_0 ;
  wire \spo[21]_INST_0_i_37_n_0 ;
  wire \spo[21]_INST_0_i_38_n_0 ;
  wire \spo[21]_INST_0_i_39_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_40_n_0 ;
  wire \spo[21]_INST_0_i_41_n_0 ;
  wire \spo[21]_INST_0_i_42_n_0 ;
  wire \spo[21]_INST_0_i_43_n_0 ;
  wire \spo[21]_INST_0_i_44_n_0 ;
  wire \spo[21]_INST_0_i_45_n_0 ;
  wire \spo[21]_INST_0_i_46_n_0 ;
  wire \spo[21]_INST_0_i_47_n_0 ;
  wire \spo[21]_INST_0_i_48_n_0 ;
  wire \spo[21]_INST_0_i_49_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_50_n_0 ;
  wire \spo[21]_INST_0_i_51_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_7_n_0 ;
  wire \spo[21]_INST_0_i_8_n_0 ;
  wire \spo[21]_INST_0_i_9_n_0 ;
  wire \spo[22]_INST_0_i_10_n_0 ;
  wire \spo[22]_INST_0_i_11_n_0 ;
  wire \spo[22]_INST_0_i_12_n_0 ;
  wire \spo[22]_INST_0_i_13_n_0 ;
  wire \spo[22]_INST_0_i_14_n_0 ;
  wire \spo[22]_INST_0_i_15_n_0 ;
  wire \spo[22]_INST_0_i_16_n_0 ;
  wire \spo[22]_INST_0_i_17_n_0 ;
  wire \spo[22]_INST_0_i_18_n_0 ;
  wire \spo[22]_INST_0_i_19_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_20_n_0 ;
  wire \spo[22]_INST_0_i_21_n_0 ;
  wire \spo[22]_INST_0_i_22_n_0 ;
  wire \spo[22]_INST_0_i_23_n_0 ;
  wire \spo[22]_INST_0_i_24_n_0 ;
  wire \spo[22]_INST_0_i_25_n_0 ;
  wire \spo[22]_INST_0_i_26_n_0 ;
  wire \spo[22]_INST_0_i_27_n_0 ;
  wire \spo[22]_INST_0_i_28_n_0 ;
  wire \spo[22]_INST_0_i_29_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_30_n_0 ;
  wire \spo[22]_INST_0_i_31_n_0 ;
  wire \spo[22]_INST_0_i_32_n_0 ;
  wire \spo[22]_INST_0_i_33_n_0 ;
  wire \spo[22]_INST_0_i_34_n_0 ;
  wire \spo[22]_INST_0_i_35_n_0 ;
  wire \spo[22]_INST_0_i_36_n_0 ;
  wire \spo[22]_INST_0_i_37_n_0 ;
  wire \spo[22]_INST_0_i_38_n_0 ;
  wire \spo[22]_INST_0_i_39_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_40_n_0 ;
  wire \spo[22]_INST_0_i_41_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_7_n_0 ;
  wire \spo[22]_INST_0_i_8_n_0 ;
  wire \spo[22]_INST_0_i_9_n_0 ;
  wire \spo[23]_INST_0_i_10_n_0 ;
  wire \spo[23]_INST_0_i_11_n_0 ;
  wire \spo[23]_INST_0_i_12_n_0 ;
  wire \spo[23]_INST_0_i_13_n_0 ;
  wire \spo[23]_INST_0_i_14_n_0 ;
  wire \spo[23]_INST_0_i_15_n_0 ;
  wire \spo[23]_INST_0_i_16_n_0 ;
  wire \spo[23]_INST_0_i_17_n_0 ;
  wire \spo[23]_INST_0_i_18_n_0 ;
  wire \spo[23]_INST_0_i_19_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_7_n_0 ;
  wire \spo[23]_INST_0_i_8_n_0 ;
  wire \spo[23]_INST_0_i_9_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_7_n_0 ;
  wire \spo[24]_INST_0_i_8_n_0 ;
  wire \spo[26]_INST_0_i_10_n_0 ;
  wire \spo[26]_INST_0_i_11_n_0 ;
  wire \spo[26]_INST_0_i_12_n_0 ;
  wire \spo[26]_INST_0_i_13_n_0 ;
  wire \spo[26]_INST_0_i_14_n_0 ;
  wire \spo[26]_INST_0_i_15_n_0 ;
  wire \spo[26]_INST_0_i_16_n_0 ;
  wire \spo[26]_INST_0_i_17_n_0 ;
  wire \spo[26]_INST_0_i_18_n_0 ;
  wire \spo[26]_INST_0_i_19_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_20_n_0 ;
  wire \spo[26]_INST_0_i_21_n_0 ;
  wire \spo[26]_INST_0_i_22_n_0 ;
  wire \spo[26]_INST_0_i_23_n_0 ;
  wire \spo[26]_INST_0_i_24_n_0 ;
  wire \spo[26]_INST_0_i_25_n_0 ;
  wire \spo[26]_INST_0_i_26_n_0 ;
  wire \spo[26]_INST_0_i_27_n_0 ;
  wire \spo[26]_INST_0_i_28_n_0 ;
  wire \spo[26]_INST_0_i_29_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_30_n_0 ;
  wire \spo[26]_INST_0_i_31_n_0 ;
  wire \spo[26]_INST_0_i_32_n_0 ;
  wire \spo[26]_INST_0_i_33_n_0 ;
  wire \spo[26]_INST_0_i_34_n_0 ;
  wire \spo[26]_INST_0_i_35_n_0 ;
  wire \spo[26]_INST_0_i_36_n_0 ;
  wire \spo[26]_INST_0_i_37_n_0 ;
  wire \spo[26]_INST_0_i_38_n_0 ;
  wire \spo[26]_INST_0_i_39_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_40_n_0 ;
  wire \spo[26]_INST_0_i_41_n_0 ;
  wire \spo[26]_INST_0_i_42_n_0 ;
  wire \spo[26]_INST_0_i_43_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_7_n_0 ;
  wire \spo[26]_INST_0_i_8_n_0 ;
  wire \spo[26]_INST_0_i_9_n_0 ;
  wire \spo[27]_INST_0_i_10_n_0 ;
  wire \spo[27]_INST_0_i_11_n_0 ;
  wire \spo[27]_INST_0_i_12_n_0 ;
  wire \spo[27]_INST_0_i_13_n_0 ;
  wire \spo[27]_INST_0_i_14_n_0 ;
  wire \spo[27]_INST_0_i_15_n_0 ;
  wire \spo[27]_INST_0_i_16_n_0 ;
  wire \spo[27]_INST_0_i_17_n_0 ;
  wire \spo[27]_INST_0_i_18_n_0 ;
  wire \spo[27]_INST_0_i_19_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_20_n_0 ;
  wire \spo[27]_INST_0_i_21_n_0 ;
  wire \spo[27]_INST_0_i_22_n_0 ;
  wire \spo[27]_INST_0_i_23_n_0 ;
  wire \spo[27]_INST_0_i_24_n_0 ;
  wire \spo[27]_INST_0_i_25_n_0 ;
  wire \spo[27]_INST_0_i_26_n_0 ;
  wire \spo[27]_INST_0_i_27_n_0 ;
  wire \spo[27]_INST_0_i_28_n_0 ;
  wire \spo[27]_INST_0_i_29_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_30_n_0 ;
  wire \spo[27]_INST_0_i_31_n_0 ;
  wire \spo[27]_INST_0_i_32_n_0 ;
  wire \spo[27]_INST_0_i_33_n_0 ;
  wire \spo[27]_INST_0_i_34_n_0 ;
  wire \spo[27]_INST_0_i_35_n_0 ;
  wire \spo[27]_INST_0_i_36_n_0 ;
  wire \spo[27]_INST_0_i_37_n_0 ;
  wire \spo[27]_INST_0_i_38_n_0 ;
  wire \spo[27]_INST_0_i_39_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_40_n_0 ;
  wire \spo[27]_INST_0_i_41_n_0 ;
  wire \spo[27]_INST_0_i_42_n_0 ;
  wire \spo[27]_INST_0_i_43_n_0 ;
  wire \spo[27]_INST_0_i_44_n_0 ;
  wire \spo[27]_INST_0_i_45_n_0 ;
  wire \spo[27]_INST_0_i_46_n_0 ;
  wire \spo[27]_INST_0_i_47_n_0 ;
  wire \spo[27]_INST_0_i_48_n_0 ;
  wire \spo[27]_INST_0_i_49_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_50_n_0 ;
  wire \spo[27]_INST_0_i_51_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_7_n_0 ;
  wire \spo[27]_INST_0_i_8_n_0 ;
  wire \spo[27]_INST_0_i_9_n_0 ;
  wire \spo[28]_INST_0_i_10_n_0 ;
  wire \spo[28]_INST_0_i_11_n_0 ;
  wire \spo[28]_INST_0_i_12_n_0 ;
  wire \spo[28]_INST_0_i_13_n_0 ;
  wire \spo[28]_INST_0_i_14_n_0 ;
  wire \spo[28]_INST_0_i_15_n_0 ;
  wire \spo[28]_INST_0_i_16_n_0 ;
  wire \spo[28]_INST_0_i_17_n_0 ;
  wire \spo[28]_INST_0_i_18_n_0 ;
  wire \spo[28]_INST_0_i_19_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_20_n_0 ;
  wire \spo[28]_INST_0_i_21_n_0 ;
  wire \spo[28]_INST_0_i_22_n_0 ;
  wire \spo[28]_INST_0_i_23_n_0 ;
  wire \spo[28]_INST_0_i_24_n_0 ;
  wire \spo[28]_INST_0_i_25_n_0 ;
  wire \spo[28]_INST_0_i_26_n_0 ;
  wire \spo[28]_INST_0_i_27_n_0 ;
  wire \spo[28]_INST_0_i_28_n_0 ;
  wire \spo[28]_INST_0_i_29_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_30_n_0 ;
  wire \spo[28]_INST_0_i_31_n_0 ;
  wire \spo[28]_INST_0_i_32_n_0 ;
  wire \spo[28]_INST_0_i_33_n_0 ;
  wire \spo[28]_INST_0_i_34_n_0 ;
  wire \spo[28]_INST_0_i_35_n_0 ;
  wire \spo[28]_INST_0_i_36_n_0 ;
  wire \spo[28]_INST_0_i_37_n_0 ;
  wire \spo[28]_INST_0_i_38_n_0 ;
  wire \spo[28]_INST_0_i_39_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_40_n_0 ;
  wire \spo[28]_INST_0_i_41_n_0 ;
  wire \spo[28]_INST_0_i_42_n_0 ;
  wire \spo[28]_INST_0_i_43_n_0 ;
  wire \spo[28]_INST_0_i_44_n_0 ;
  wire \spo[28]_INST_0_i_45_n_0 ;
  wire \spo[28]_INST_0_i_46_n_0 ;
  wire \spo[28]_INST_0_i_47_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[28]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_9_n_0 ;
  wire \spo[29]_INST_0_i_10_n_0 ;
  wire \spo[29]_INST_0_i_11_n_0 ;
  wire \spo[29]_INST_0_i_12_n_0 ;
  wire \spo[29]_INST_0_i_13_n_0 ;
  wire \spo[29]_INST_0_i_14_n_0 ;
  wire \spo[29]_INST_0_i_15_n_0 ;
  wire \spo[29]_INST_0_i_16_n_0 ;
  wire \spo[29]_INST_0_i_17_n_0 ;
  wire \spo[29]_INST_0_i_18_n_0 ;
  wire \spo[29]_INST_0_i_19_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_20_n_0 ;
  wire \spo[29]_INST_0_i_21_n_0 ;
  wire \spo[29]_INST_0_i_22_n_0 ;
  wire \spo[29]_INST_0_i_23_n_0 ;
  wire \spo[29]_INST_0_i_24_n_0 ;
  wire \spo[29]_INST_0_i_25_n_0 ;
  wire \spo[29]_INST_0_i_26_n_0 ;
  wire \spo[29]_INST_0_i_27_n_0 ;
  wire \spo[29]_INST_0_i_28_n_0 ;
  wire \spo[29]_INST_0_i_29_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_30_n_0 ;
  wire \spo[29]_INST_0_i_31_n_0 ;
  wire \spo[29]_INST_0_i_32_n_0 ;
  wire \spo[29]_INST_0_i_33_n_0 ;
  wire \spo[29]_INST_0_i_34_n_0 ;
  wire \spo[29]_INST_0_i_35_n_0 ;
  wire \spo[29]_INST_0_i_36_n_0 ;
  wire \spo[29]_INST_0_i_37_n_0 ;
  wire \spo[29]_INST_0_i_38_n_0 ;
  wire \spo[29]_INST_0_i_39_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_40_n_0 ;
  wire \spo[29]_INST_0_i_41_n_0 ;
  wire \spo[29]_INST_0_i_42_n_0 ;
  wire \spo[29]_INST_0_i_43_n_0 ;
  wire \spo[29]_INST_0_i_44_n_0 ;
  wire \spo[29]_INST_0_i_45_n_0 ;
  wire \spo[29]_INST_0_i_46_n_0 ;
  wire \spo[29]_INST_0_i_47_n_0 ;
  wire \spo[29]_INST_0_i_48_n_0 ;
  wire \spo[29]_INST_0_i_49_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_50_n_0 ;
  wire \spo[29]_INST_0_i_51_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_38_n_0 ;
  wire \spo[2]_INST_0_i_39_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_40_n_0 ;
  wire \spo[2]_INST_0_i_41_n_0 ;
  wire \spo[2]_INST_0_i_42_n_0 ;
  wire \spo[2]_INST_0_i_43_n_0 ;
  wire \spo[2]_INST_0_i_44_n_0 ;
  wire \spo[2]_INST_0_i_45_n_0 ;
  wire \spo[2]_INST_0_i_46_n_0 ;
  wire \spo[2]_INST_0_i_47_n_0 ;
  wire \spo[2]_INST_0_i_48_n_0 ;
  wire \spo[2]_INST_0_i_49_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_50_n_0 ;
  wire \spo[2]_INST_0_i_51_n_0 ;
  wire \spo[2]_INST_0_i_52_n_0 ;
  wire \spo[2]_INST_0_i_53_n_0 ;
  wire \spo[2]_INST_0_i_54_n_0 ;
  wire \spo[2]_INST_0_i_55_n_0 ;
  wire \spo[2]_INST_0_i_56_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_10_n_0 ;
  wire \spo[31]_INST_0_i_11_n_0 ;
  wire \spo[31]_INST_0_i_12_n_0 ;
  wire \spo[31]_INST_0_i_13_n_0 ;
  wire \spo[31]_INST_0_i_14_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_17_n_0 ;
  wire \spo[7]_INST_0_i_18_n_0 ;
  wire \spo[7]_INST_0_i_19_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_20_n_0 ;
  wire \spo[7]_INST_0_i_21_n_0 ;
  wire \spo[7]_INST_0_i_22_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
  wire \spo[8]_INST_0_i_17_n_0 ;
  wire \spo[8]_INST_0_i_18_n_0 ;
  wire \spo[8]_INST_0_i_19_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_20_n_0 ;
  wire \spo[8]_INST_0_i_21_n_0 ;
  wire \spo[8]_INST_0_i_22_n_0 ;
  wire \spo[8]_INST_0_i_23_n_0 ;
  wire \spo[8]_INST_0_i_24_n_0 ;
  wire \spo[8]_INST_0_i_25_n_0 ;
  wire \spo[8]_INST_0_i_26_n_0 ;
  wire \spo[8]_INST_0_i_27_n_0 ;
  wire \spo[8]_INST_0_i_28_n_0 ;
  wire \spo[8]_INST_0_i_29_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_30_n_0 ;
  wire \spo[8]_INST_0_i_31_n_0 ;
  wire \spo[8]_INST_0_i_32_n_0 ;
  wire \spo[8]_INST_0_i_33_n_0 ;
  wire \spo[8]_INST_0_i_34_n_0 ;
  wire \spo[8]_INST_0_i_35_n_0 ;
  wire \spo[8]_INST_0_i_36_n_0 ;
  wire \spo[8]_INST_0_i_37_n_0 ;
  wire \spo[8]_INST_0_i_38_n_0 ;
  wire \spo[8]_INST_0_i_39_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_40_n_0 ;
  wire \spo[8]_INST_0_i_41_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;
  wire \spo[9]_INST_0_i_10_n_0 ;
  wire \spo[9]_INST_0_i_11_n_0 ;
  wire \spo[9]_INST_0_i_12_n_0 ;
  wire \spo[9]_INST_0_i_13_n_0 ;
  wire \spo[9]_INST_0_i_14_n_0 ;
  wire \spo[9]_INST_0_i_15_n_0 ;
  wire \spo[9]_INST_0_i_16_n_0 ;
  wire \spo[9]_INST_0_i_17_n_0 ;
  wire \spo[9]_INST_0_i_18_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_7_n_0 ;
  wire \spo[9]_INST_0_i_8_n_0 ;
  wire \spo[9]_INST_0_i_9_n_0 ;

  MUXF8 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(\spo[0]_INST_0_i_4_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[0]_INST_0_i_10 
       (.I0(\spo[14]_INST_0_i_33_n_0 ),
        .I1(a[5]),
        .I2(\spo[0]_INST_0_i_27_n_0 ),
        .I3(a[4]),
        .I4(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(\spo[0]_INST_0_i_30_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_39_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_32_n_0 ),
        .I1(\spo[0]_INST_0_i_33_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_34_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_35_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[27]_INST_0_i_36_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_37_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_38_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_39_n_0 ),
        .I1(\spo[15]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_40_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_41_n_0 ),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_15 
       (.I0(\spo[0]_INST_0_i_42_n_0 ),
        .I1(\spo[0]_INST_0_i_43_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_44_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_45_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_46_n_0 ),
        .I1(\spo[0]_INST_0_i_47_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_48_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_49_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C00000058)) 
    \spo[0]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000D0001000A000A)) 
    \spo[0]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000900000094)) 
    \spo[0]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  MUXF7 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000006B00000088)) 
    \spo[0]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000039000000DC)) 
    \spo[0]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000006C0000004F)) 
    \spo[0]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003EB5)) 
    \spo[0]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000009C00000047)) 
    \spo[0]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000900000046)) 
    \spo[0]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0004000F)) 
    \spo[0]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000000130013F)) 
    \spo[0]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0004003000A4002F)) 
    \spo[0]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0002000C00080002)) 
    \spo[0]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_10_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000860000003A)) 
    \spo[0]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000021000000BC)) 
    \spo[0]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000B8000000C7)) 
    \spo[0]_INST_0_i_32 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800070006)) 
    \spo[0]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000001200000027)) 
    \spo[0]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000200040002000A)) 
    \spo[0]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700000074)) 
    \spo[0]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000004A000000B7)) 
    \spo[0]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000000BC0000004B)) 
    \spo[0]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00000028000000DE)) 
    \spo[0]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_11_n_0 ),
        .I1(\spo[0]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_14_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008C000000CB)) 
    \spo[0]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h000A000E000A0008)) 
    \spo[0]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020102)) 
    \spo[0]_INST_0_i_42 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000000120000000E)) 
    \spo[0]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000048000000E1)) 
    \spo[0]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000008300000034)) 
    \spo[0]_INST_0_i_45 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000260000005A)) 
    \spo[0]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h00000030000000C9)) 
    \spo[0]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[0]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00000063)) 
    \spo[0]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h000000320000006C)) 
    \spo[0]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \spo[0]_INST_0_i_5 
       (.I0(\spo[24]_INST_0_i_6_n_0 ),
        .I1(a[2]),
        .I2(a[7]),
        .I3(\spo[0]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_15_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_18_n_0 ),
        .I1(\spo[0]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_21_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_22_n_0 ),
        .I1(\spo[0]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[0]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[0]_INST_0_i_25_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \spo[0]_INST_0_i_9 
       (.I0(\spo[12]_INST_0_i_6_n_0 ),
        .I1(a[4]),
        .I2(\spo[0]_INST_0_i_26_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[14]_INST_0_i_33_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[10]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .I5(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_4_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(\spo[10]_INST_0_i_6_n_0 ),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_10 
       (.I0(\spo[10]_INST_0_i_23_n_0 ),
        .I1(\spo[15]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_28_n_0 ),
        .O(\spo[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_11 
       (.I0(\spo[10]_INST_0_i_25_n_0 ),
        .I1(\spo[10]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_12 
       (.I0(\spo[10]_INST_0_i_28_n_0 ),
        .I1(\spo[10]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_31_n_0 ),
        .O(\spo[10]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF8A8580800000000)) 
    \spo[10]_INST_0_i_13 
       (.I0(a[3]),
        .I1(\spo[27]_INST_0_i_36_n_0 ),
        .I2(a[4]),
        .I3(\spo[11]_INST_0_i_37_n_0 ),
        .I4(\spo[10]_INST_0_i_32_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \spo[10]_INST_0_i_14 
       (.I0(\spo[10]_INST_0_i_33_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[10]_INST_0_i_34_n_0 ),
        .I4(a[5]),
        .O(\spo[10]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0001030100000000)) 
    \spo[10]_INST_0_i_15 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[10]_INST_0_i_16 
       (.I0(a[2]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[10]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0302020000000000)) 
    \spo[10]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0008000200030002)) 
    \spo[10]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0004000800080000)) 
    \spo[10]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(\spo[10]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_10_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100011100000000)) 
    \spo[10]_INST_0_i_20 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000006B00000022)) 
    \spo[10]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000BC000000C8)) 
    \spo[10]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000028000000DC)) 
    \spo[10]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[10]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0303000100000000)) 
    \spo[10]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000B0000000CC)) 
    \spo[10]_INST_0_i_25 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0002000900000000)) 
    \spo[10]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0004000200080000)) 
    \spo[10]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000002F00000000)) 
    \spo[10]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000009)) 
    \spo[10]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[2]),
        .O(\spo[10]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_11_n_0 ),
        .I1(\spo[10]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[10]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_14_n_0 ),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001C00000045)) 
    \spo[10]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \spo[10]_INST_0_i_31 
       (.I0(a[2]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[10]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000102)) 
    \spo[10]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[10]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000109100000000)) 
    \spo[10]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[10]_INST_0_i_34 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .O(\spo[10]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_4 
       (.I0(\spo[10]_INST_0_i_15_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_16_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_18_n_0 ),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00002000B0401000)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_12_n_0 ),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030002800)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_7 
       (.I0(\spo[10]_INST_0_i_17_n_0 ),
        .I1(\spo[10]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_19_n_0 ),
        .O(\spo[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_8 
       (.I0(\spo[27]_INST_0_i_22_n_0 ),
        .I1(\spo[27]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_20_n_0 ),
        .O(\spo[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0_i_9 
       (.I0(\spo[14]_INST_0_i_23_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_21_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_22_n_0 ),
        .O(\spo[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[11]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .I5(\spo[11]_INST_0_i_3_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_4_n_0 ),
        .I1(a[5]),
        .I2(\spo[11]_INST_0_i_5_n_0 ),
        .I3(a[6]),
        .I4(\spo[11]_INST_0_i_6_n_0 ),
        .I5(a[7]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_10 
       (.I0(\spo[11]_INST_0_i_26_n_0 ),
        .I1(\spo[11]_INST_0_i_27_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_29_n_0 ),
        .O(\spo[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_11 
       (.I0(\spo[11]_INST_0_i_30_n_0 ),
        .I1(\spo[11]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_33_n_0 ),
        .O(\spo[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_12 
       (.I0(\spo[11]_INST_0_i_34_n_0 ),
        .I1(\spo[11]_INST_0_i_35_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_36_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_38_n_0 ),
        .O(\spo[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080000000000)) 
    \spo[11]_INST_0_i_13 
       (.I0(a[4]),
        .I1(\spo[19]_INST_0_i_5_n_0 ),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[11]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000000004C404)) 
    \spo[11]_INST_0_i_14 
       (.I0(a[1]),
        .I1(\spo[15]_INST_0_i_39_n_0 ),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000004E00000001)) 
    \spo[11]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000043000000A0)) 
    \spo[11]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000C500000058)) 
    \spo[11]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000089000000C2)) 
    \spo[11]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200030002)) 
    \spo[11]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_7_n_0 ),
        .I1(\spo[11]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_10_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800090000)) 
    \spo[11]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000002800000014)) 
    \spo[11]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000A900000042)) 
    \spo[11]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h000000C900000014)) 
    \spo[11]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000001800000087)) 
    \spo[11]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC000000C9)) 
    \spo[11]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000084)) 
    \spo[11]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000014000000C7)) 
    \spo[11]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0009000800080008)) 
    \spo[11]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000008F000000F4)) 
    \spo[11]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_3 
       (.I0(\spo[11]_INST_0_i_11_n_0 ),
        .I1(\spo[11]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[11]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[11]_INST_0_i_14_n_0 ),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003433)) 
    \spo[11]_INST_0_i_30 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000CA00000092)) 
    \spo[11]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000280000001C)) 
    \spo[11]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000002D000000E2)) 
    \spo[11]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000006400000047)) 
    \spo[11]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003691)) 
    \spo[11]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[11]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000005600000044)) 
    \spo[11]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    \spo[11]_INST_0_i_37 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[10]),
        .I4(a[11]),
        .O(\spo[11]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h45BC00001E190000)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h048A0000B0850000)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[11]_INST_0_i_6 
       (.I0(\spo[11]_INST_0_i_15_n_0 ),
        .I1(a[5]),
        .I2(\spo[11]_INST_0_i_16_n_0 ),
        .I3(a[4]),
        .I4(\spo[11]_INST_0_i_17_n_0 ),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_7 
       (.I0(\spo[11]_INST_0_i_18_n_0 ),
        .I1(\spo[11]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_21_n_0 ),
        .O(\spo[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_8 
       (.I0(\spo[11]_INST_0_i_22_n_0 ),
        .I1(\spo[11]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_22_n_0 ),
        .O(\spo[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0_i_9 
       (.I0(\spo[15]_INST_0_i_23_n_0 ),
        .I1(\spo[15]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_25_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_25_n_0 ),
        .O(\spo[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[12]_INST_0_i_1_n_0 ),
        .I4(a[8]),
        .I5(\spo[12]_INST_0_i_2_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_9_n_0 ),
        .I1(\spo[14]_INST_0_i_9_n_0 ),
        .I2(a[7]),
        .I3(\spo[12]_INST_0_i_3_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_11_n_0 ),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[12]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_12_n_0 ),
        .I1(a[6]),
        .I2(\spo[14]_INST_0_i_13_n_0 ),
        .I3(a[7]),
        .I4(\spo[12]_INST_0_i_4_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0_i_3 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_25_n_0 ),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \spo[12]_INST_0_i_4 
       (.I0(\spo[12]_INST_0_i_6_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_7_n_0 ),
        .I3(a[4]),
        .I4(\spo[13]_INST_0_i_12_n_0 ),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000170000005C)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000005200000035)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000840001)) 
    \spo[12]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[13]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .I5(\spo[13]_INST_0_i_3_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[13]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_6_n_0 ),
        .I1(a[6]),
        .I2(\spo[14]_INST_0_i_7_n_0 ),
        .I3(a[5]),
        .I4(\spo[13]_INST_0_i_4_n_0 ),
        .I5(a[7]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001200000035)) 
    \spo[13]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000090000000000)) 
    \spo[13]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[13]_INST_0_i_12 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_9_n_0 ),
        .I1(\spo[13]_INST_0_i_5_n_0 ),
        .I2(a[7]),
        .I3(\spo[13]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_12_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[13]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_13_n_0 ),
        .I1(a[6]),
        .I2(\spo[13]_INST_0_i_7_n_0 ),
        .I3(a[7]),
        .I4(\spo[13]_INST_0_i_8_n_0 ),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \spo[13]_INST_0_i_4 
       (.I0(a[3]),
        .I1(\spo[31]_INST_0_i_7_n_0 ),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_5 
       (.I0(\spo[14]_INST_0_i_19_n_0 ),
        .I1(\spo[14]_INST_0_i_20_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_21_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_22_n_0 ),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0_i_6 
       (.I0(\spo[15]_INST_0_i_23_n_0 ),
        .I1(\spo[15]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_25_n_0 ),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88BB8888B888B888)) 
    \spo[13]_INST_0_i_7 
       (.I0(\spo[14]_INST_0_i_31_n_0 ),
        .I1(a[5]),
        .I2(\spo[14]_INST_0_i_32_n_0 ),
        .I3(a[4]),
        .I4(\spo[13]_INST_0_i_9_n_0 ),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8800880033300030)) 
    \spo[13]_INST_0_i_8 
       (.I0(\spo[13]_INST_0_i_10_n_0 ),
        .I1(a[6]),
        .I2(\spo[13]_INST_0_i_11_n_0 ),
        .I3(a[4]),
        .I4(\spo[13]_INST_0_i_12_n_0 ),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \spo[13]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .O(\spo[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[14]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[14]_INST_0_i_4_n_0 ),
        .O(spo[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[14]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_10 
       (.I0(\spo[14]_INST_0_i_23_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_25_n_0 ),
        .O(\spo[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_11 
       (.I0(\spo[14]_INST_0_i_26_n_0 ),
        .I1(\spo[15]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_28_n_0 ),
        .O(\spo[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_12 
       (.I0(\spo[14]_INST_0_i_29_n_0 ),
        .I1(\spo[14]_INST_0_i_30_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_33_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \spo[14]_INST_0_i_13 
       (.I0(\spo[14]_INST_0_i_31_n_0 ),
        .I1(a[5]),
        .I2(\spo[14]_INST_0_i_32_n_0 ),
        .I3(a[4]),
        .I4(\spo[24]_INST_0_i_7_n_0 ),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080000000000)) 
    \spo[14]_INST_0_i_14 
       (.I0(a[4]),
        .I1(\spo[19]_INST_0_i_5_n_0 ),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[14]_INST_0_i_33_n_0 ),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \spo[14]_INST_0_i_15 
       (.I0(\spo[14]_INST_0_i_34_n_0 ),
        .I1(a[4]),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_10_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0001000A)) 
    \spo[14]_INST_0_i_16 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[14]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[14]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .O(\spo[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000001200000064)) 
    \spo[14]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \spo[14]_INST_0_i_19 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_6_n_0 ),
        .I1(a[6]),
        .I2(\spo[14]_INST_0_i_7_n_0 ),
        .I3(a[5]),
        .I4(\spo[14]_INST_0_i_8_n_0 ),
        .I5(a[7]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000010000)) 
    \spo[14]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[14]_INST_0_i_21 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000001500000000)) 
    \spo[14]_INST_0_i_22 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700000054)) 
    \spo[14]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000000008000E)) 
    \spo[14]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000B000600000000)) 
    \spo[14]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F00000080)) 
    \spo[14]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[14]_INST_0_i_27 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[3]),
        .O(\spo[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0103030200000000)) 
    \spo[14]_INST_0_i_28 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0004000A)) 
    \spo[14]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[2]),
        .O(\spo[14]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_9_n_0 ),
        .I1(\spo[14]_INST_0_i_9_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_10_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_11_n_0 ),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000800000000)) 
    \spo[14]_INST_0_i_30 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000002200000041)) 
    \spo[14]_INST_0_i_31 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0006000A)) 
    \spo[14]_INST_0_i_32 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[14]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00040007)) 
    \spo[14]_INST_0_i_33 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[14]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000090008000000)) 
    \spo[14]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_4 
       (.I0(\spo[14]_INST_0_i_12_n_0 ),
        .I1(\spo[14]_INST_0_i_13_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_14_n_0 ),
        .I4(a[6]),
        .I5(\spo[14]_INST_0_i_15_n_0 ),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0009000600080000)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8003333B8000000)) 
    \spo[14]_INST_0_i_6 
       (.I0(\spo[14]_INST_0_i_16_n_0 ),
        .I1(a[5]),
        .I2(\spo[14]_INST_0_i_17_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_18_n_0 ),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000200090401000)) 
    \spo[14]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(\spo[31]_INST_0_i_12_n_0 ),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030000800)) 
    \spo[14]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0_i_9 
       (.I0(\spo[14]_INST_0_i_19_n_0 ),
        .I1(\spo[14]_INST_0_i_20_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_21_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_22_n_0 ),
        .O(\spo[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[15]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[15]_INST_0_i_4_n_0 ),
        .O(spo[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[15]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_10 
       (.I0(\spo[15]_INST_0_i_19_n_0 ),
        .I1(\spo[15]_INST_0_i_20_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_21_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_22_n_0 ),
        .O(\spo[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_11 
       (.I0(\spo[15]_INST_0_i_23_n_0 ),
        .I1(\spo[15]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_25_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_26_n_0 ),
        .O(\spo[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_12 
       (.I0(\spo[15]_INST_0_i_27_n_0 ),
        .I1(\spo[15]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_29_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_30_n_0 ),
        .O(\spo[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_13 
       (.I0(\spo[15]_INST_0_i_31_n_0 ),
        .I1(\spo[15]_INST_0_i_32_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_33_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_14 
       (.I0(\spo[15]_INST_0_i_35_n_0 ),
        .I1(\spo[15]_INST_0_i_36_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_37_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_38_n_0 ),
        .O(\spo[15]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \spo[15]_INST_0_i_15 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(\spo[19]_INST_0_i_5_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .O(\spo[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000048008)) 
    \spo[15]_INST_0_i_16 
       (.I0(a[2]),
        .I1(\spo[15]_INST_0_i_39_n_0 ),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000020000)) 
    \spo[15]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00020004)) 
    \spo[15]_INST_0_i_18 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[15]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0009000000000000)) 
    \spo[15]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_6_n_0 ),
        .I1(a[5]),
        .I2(\spo[15]_INST_0_i_7_n_0 ),
        .I3(a[6]),
        .I4(\spo[15]_INST_0_i_8_n_0 ),
        .I5(a[7]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \spo[15]_INST_0_i_20 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \spo[15]_INST_0_i_21 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000001300000036)) 
    \spo[15]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000040)) 
    \spo[15]_INST_0_i_23 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000389D)) 
    \spo[15]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000006300000022)) 
    \spo[15]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000B000E00080000)) 
    \spo[15]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000080)) 
    \spo[15]_INST_0_i_27 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001030200)) 
    \spo[15]_INST_0_i_28 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[15]_INST_0_i_29 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[3]),
        .O(\spo[15]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_9_n_0 ),
        .I1(\spo[15]_INST_0_i_10_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_12_n_0 ),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F000000B4)) 
    \spo[15]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010100111)) 
    \spo[15]_INST_0_i_31 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000E000800000002)) 
    \spo[15]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0001020000000000)) 
    \spo[15]_INST_0_i_33 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000004C000000B0)) 
    \spo[15]_INST_0_i_34 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003010200)) 
    \spo[15]_INST_0_i_35 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200090004)) 
    \spo[15]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001030002)) 
    \spo[15]_INST_0_i_37 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \spo[15]_INST_0_i_38 
       (.I0(a[2]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[15]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[15]_INST_0_i_39 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[0]),
        .O(\spo[15]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0_i_4 
       (.I0(\spo[15]_INST_0_i_13_n_0 ),
        .I1(\spo[15]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_16_n_0 ),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000600080000)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h010400001C080000)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0200880000000000)) 
    \spo[15]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \spo[15]_INST_0_i_8 
       (.I0(\spo[27]_INST_0_i_36_n_0 ),
        .I1(a[5]),
        .I2(\spo[15]_INST_0_i_17_n_0 ),
        .I3(a[4]),
        .I4(\spo[15]_INST_0_i_18_n_0 ),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8080030000000000)) 
    \spo[15]_INST_0_i_9 
       (.I0(\spo[20]_INST_0_i_8_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[24]_INST_0_i_6_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[16]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[16]_INST_0_i_4_n_0 ),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[16]_INST_0_i_5_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[7]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  MUXF8 \spo[16]_INST_0_i_10 
       (.I0(\spo[16]_INST_0_i_16_n_0 ),
        .I1(\spo[16]_INST_0_i_17_n_0 ),
        .O(\spo[16]_INST_0_i_10_n_0 ),
        .S(a[5]));
  MUXF8 \spo[16]_INST_0_i_11 
       (.I0(\spo[16]_INST_0_i_18_n_0 ),
        .I1(\spo[16]_INST_0_i_19_n_0 ),
        .O(\spo[16]_INST_0_i_11_n_0 ),
        .S(a[5]));
  MUXF8 \spo[16]_INST_0_i_12 
       (.I0(\spo[16]_INST_0_i_20_n_0 ),
        .I1(\spo[16]_INST_0_i_21_n_0 ),
        .O(\spo[16]_INST_0_i_12_n_0 ),
        .S(a[5]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[16]_INST_0_i_13 
       (.I0(\spo[16]_INST_0_i_22_n_0 ),
        .I1(a[6]),
        .I2(\spo[16]_INST_0_i_23_n_0 ),
        .I3(a[5]),
        .I4(\spo[16]_INST_0_i_24_n_0 ),
        .O(\spo[16]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_14 
       (.I0(\spo[16]_INST_0_i_25_n_0 ),
        .I1(\spo[16]_INST_0_i_26_n_0 ),
        .I2(a[6]),
        .I3(\spo[16]_INST_0_i_27_n_0 ),
        .I4(a[5]),
        .I5(\spo[16]_INST_0_i_28_n_0 ),
        .O(\spo[16]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000068)) 
    \spo[16]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_15_n_0 ));
  MUXF7 \spo[16]_INST_0_i_16 
       (.I0(\spo[16]_INST_0_i_29_n_0 ),
        .I1(\spo[16]_INST_0_i_30_n_0 ),
        .O(\spo[16]_INST_0_i_16_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_17 
       (.I0(\spo[16]_INST_0_i_31_n_0 ),
        .I1(\spo[16]_INST_0_i_32_n_0 ),
        .O(\spo[16]_INST_0_i_17_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_18 
       (.I0(\spo[16]_INST_0_i_33_n_0 ),
        .I1(\spo[16]_INST_0_i_34_n_0 ),
        .O(\spo[16]_INST_0_i_18_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_19 
       (.I0(\spo[16]_INST_0_i_35_n_0 ),
        .I1(\spo[16]_INST_0_i_36_n_0 ),
        .O(\spo[16]_INST_0_i_19_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_6_n_0 ),
        .I1(a[6]),
        .I2(\spo[16]_INST_0_i_7_n_0 ),
        .I3(a[5]),
        .I4(\spo[16]_INST_0_i_8_n_0 ),
        .I5(a[7]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  MUXF7 \spo[16]_INST_0_i_20 
       (.I0(\spo[16]_INST_0_i_37_n_0 ),
        .I1(\spo[16]_INST_0_i_38_n_0 ),
        .O(\spo[16]_INST_0_i_20_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_21 
       (.I0(\spo[16]_INST_0_i_39_n_0 ),
        .I1(\spo[16]_INST_0_i_40_n_0 ),
        .O(\spo[16]_INST_0_i_21_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_22 
       (.I0(\spo[16]_INST_0_i_41_n_0 ),
        .I1(\spo[16]_INST_0_i_42_n_0 ),
        .O(\spo[16]_INST_0_i_22_n_0 ),
        .S(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00070004)) 
    \spo[16]_INST_0_i_23 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[1]),
        .O(\spo[16]_INST_0_i_23_n_0 ));
  MUXF7 \spo[16]_INST_0_i_24 
       (.I0(\spo[16]_INST_0_i_43_n_0 ),
        .I1(\spo[16]_INST_0_i_44_n_0 ),
        .O(\spo[16]_INST_0_i_24_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_25 
       (.I0(\spo[16]_INST_0_i_45_n_0 ),
        .I1(\spo[16]_INST_0_i_46_n_0 ),
        .O(\spo[16]_INST_0_i_25_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_26 
       (.I0(\spo[16]_INST_0_i_47_n_0 ),
        .I1(\spo[16]_INST_0_i_48_n_0 ),
        .O(\spo[16]_INST_0_i_26_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_27 
       (.I0(\spo[16]_INST_0_i_49_n_0 ),
        .I1(\spo[16]_INST_0_i_50_n_0 ),
        .O(\spo[16]_INST_0_i_27_n_0 ),
        .S(a[4]));
  MUXF7 \spo[16]_INST_0_i_28 
       (.I0(\spo[16]_INST_0_i_51_n_0 ),
        .I1(\spo[16]_INST_0_i_52_n_0 ),
        .O(\spo[16]_INST_0_i_28_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0001000000000008)) 
    \spo[16]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[16]_INST_0_i_3 
       (.I0(\spo[16]_INST_0_i_9_n_0 ),
        .I1(\spo[16]_INST_0_i_10_n_0 ),
        .I2(a[7]),
        .I3(\spo[16]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[16]_INST_0_i_12_n_0 ),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000009)) 
    \spo[16]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[2]),
        .O(\spo[16]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000008100000084)) 
    \spo[16]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0008000400000002)) 
    \spo[16]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000003)) 
    \spo[16]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100080000)) 
    \spo[16]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000001800000066)) 
    \spo[16]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0007000400000008)) 
    \spo[16]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000000B400000008)) 
    \spo[16]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000010000000C8)) 
    \spo[16]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C0000004B)) 
    \spo[16]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_39_n_0 ));
  MUXF7 \spo[16]_INST_0_i_4 
       (.I0(\spo[16]_INST_0_i_13_n_0 ),
        .I1(\spo[16]_INST_0_i_14_n_0 ),
        .O(\spo[16]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000004B00000004)) 
    \spo[16]_INST_0_i_40 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000001F00000030)) 
    \spo[16]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000419B)) 
    \spo[16]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[16]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020312DE9)) 
    \spo[16]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[11]),
        .O(\spo[16]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000030000100FC)) 
    \spo[16]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000C300000002)) 
    \spo[16]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000020004000B)) 
    \spo[16]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h00000008000000F4)) 
    \spo[16]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000022000000C5)) 
    \spo[16]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0002000003010201)) 
    \spo[16]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000004)) 
    \spo[16]_INST_0_i_50 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000004900000092)) 
    \spo[16]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002010200)) 
    \spo[16]_INST_0_i_52 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0000820000000000)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1000020000000000)) 
    \spo[16]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008C00)) 
    \spo[16]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3B083B0B3B083808)) 
    \spo[16]_INST_0_i_9 
       (.I0(\spo[16]_INST_0_i_15_n_0 ),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_20_n_0 ),
        .I4(a[3]),
        .I5(\spo[23]_INST_0_i_15_n_0 ),
        .O(\spo[16]_INST_0_i_9_n_0 ));
  MUXF8 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[9]));
  MUXF7 \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_3_n_0 ),
        .I1(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hFF00CDCDFF000000)) 
    \spo[17]_INST_0_i_10 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(\spo[21]_INST_0_i_41_n_0 ),
        .I4(a[3]),
        .I5(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_25_n_0 ),
        .I1(\spo[17]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[23]_INST_0_i_15_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_29_n_0 ),
        .O(\spo[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_12 
       (.I0(\spo[17]_INST_0_i_30_n_0 ),
        .I1(\spo[17]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_33_n_0 ),
        .O(\spo[17]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_13 
       (.I0(\spo[17]_INST_0_i_17_n_0 ),
        .I1(\spo[17]_INST_0_i_34_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_35_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_36_n_0 ),
        .O(\spo[17]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_14 
       (.I0(\spo[17]_INST_0_i_37_n_0 ),
        .I1(\spo[17]_INST_0_i_38_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_39_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_40_n_0 ),
        .O(\spo[17]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_15 
       (.I0(\spo[17]_INST_0_i_41_n_0 ),
        .I1(\spo[17]_INST_0_i_42_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_43_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_44_n_0 ),
        .O(\spo[17]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_16 
       (.I0(\spo[17]_INST_0_i_45_n_0 ),
        .I1(\spo[17]_INST_0_i_46_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_47_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_48_n_0 ),
        .O(\spo[17]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010004)) 
    \spo[17]_INST_0_i_17 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000520000004B)) 
    \spo[17]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000CE00000092)) 
    \spo[17]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_19_n_0 ));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h0000000A00000034)) 
    \spo[17]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000028000000E7)) 
    \spo[17]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000007)) 
    \spo[17]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000036B1)) 
    \spo[17]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[17]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000C700000010)) 
    \spo[17]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000F0006)) 
    \spo[17]_INST_0_i_25 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[17]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0004000A)) 
    \spo[17]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[17]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0004000200080002)) 
    \spo[17]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010002)) 
    \spo[17]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000034)) 
    \spo[17]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_3 
       (.I0(\spo[17]_INST_0_i_7_n_0 ),
        .I1(\spo[17]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_10_n_0 ),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000AD00000042)) 
    \spo[17]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000C90000001C)) 
    \spo[17]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000001A00000087)) 
    \spo[17]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000010006)) 
    \spo[17]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000083)) 
    \spo[17]_INST_0_i_34 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000004100000002)) 
    \spo[17]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000002400000049)) 
    \spo[17]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000038000000CE)) 
    \spo[17]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000034000000CF)) 
    \spo[17]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F000000E0)) 
    \spo[17]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_4 
       (.I0(\spo[17]_INST_0_i_11_n_0 ),
        .I1(\spo[17]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[17]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[17]_INST_0_i_14_n_0 ),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000B300000078)) 
    \spo[17]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000001A000000E4)) 
    \spo[17]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040009)) 
    \spo[17]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[17]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000004300000082)) 
    \spo[17]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000000E300000008)) 
    \spo[17]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002B51)) 
    \spo[17]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[17]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000003)) 
    \spo[17]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h00000003000000C2)) 
    \spo[17]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h000000B2000000C1)) 
    \spo[17]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[17]_INST_0_i_5 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[17]_INST_0_i_15_n_0 ),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_16_n_0 ),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[17]_INST_0_i_6 
       (.I0(\spo[17]_INST_0_i_17_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_5_n_0 ),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_7 
       (.I0(\spo[17]_INST_0_i_18_n_0 ),
        .I1(\spo[17]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[17]_INST_0_i_21_n_0 ),
        .O(\spo[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[17]_INST_0_i_8 
       (.I0(\spo[17]_INST_0_i_22_n_0 ),
        .I1(\spo[17]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_23_n_0 ),
        .O(\spo[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \spo[17]_INST_0_i_9 
       (.I0(\spo[17]_INST_0_i_25_n_0 ),
        .I1(a[3]),
        .I2(\spo[17]_INST_0_i_26_n_0 ),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[17]_INST_0_i_27_n_0 ),
        .O(\spo[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[18]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .I5(\spo[18]_INST_0_i_3_n_0 ),
        .O(spo[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[18]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[18]_INST_0_i_4_n_0 ),
        .I3(a[6]),
        .I4(\spo[18]_INST_0_i_5_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  MUXF8 \spo[18]_INST_0_i_10 
       (.I0(\spo[18]_INST_0_i_28_n_0 ),
        .I1(\spo[18]_INST_0_i_29_n_0 ),
        .O(\spo[18]_INST_0_i_10_n_0 ),
        .S(a[5]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \spo[18]_INST_0_i_11 
       (.I0(\spo[18]_INST_0_i_30_n_0 ),
        .I1(\spo[18]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[18]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .O(\spo[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30BB308830003000)) 
    \spo[18]_INST_0_i_12 
       (.I0(\spo[18]_INST_0_i_33_n_0 ),
        .I1(a[5]),
        .I2(\spo[19]_INST_0_i_8_n_0 ),
        .I3(a[4]),
        .I4(\spo[27]_INST_0_i_21_n_0 ),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_13 
       (.I0(\spo[19]_INST_0_i_8_n_0 ),
        .I1(\spo[18]_INST_0_i_34_n_0 ),
        .I2(a[5]),
        .I3(\spo[18]_INST_0_i_35_n_0 ),
        .I4(a[4]),
        .I5(\spo[18]_INST_0_i_36_n_0 ),
        .O(\spo[18]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h01020000)) 
    \spo[18]_INST_0_i_14 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[18]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0102000200000000)) 
    \spo[18]_INST_0_i_15 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000001500000042)) 
    \spo[18]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000008A00000000)) 
    \spo[18]_INST_0_i_17 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000030100)) 
    \spo[18]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000420000005C)) 
    \spo[18]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_6_n_0 ),
        .I1(\spo[18]_INST_0_i_7_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_8_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_9_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000830000000C)) 
    \spo[18]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000840000000B)) 
    \spo[18]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_21_n_0 ));
  MUXF7 \spo[18]_INST_0_i_22 
       (.I0(\spo[18]_INST_0_i_37_n_0 ),
        .I1(\spo[18]_INST_0_i_38_n_0 ),
        .O(\spo[18]_INST_0_i_22_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_23 
       (.I0(\spo[18]_INST_0_i_39_n_0 ),
        .I1(\spo[18]_INST_0_i_40_n_0 ),
        .O(\spo[18]_INST_0_i_23_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_24 
       (.I0(\spo[18]_INST_0_i_41_n_0 ),
        .I1(\spo[18]_INST_0_i_42_n_0 ),
        .O(\spo[18]_INST_0_i_24_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_25 
       (.I0(\spo[18]_INST_0_i_43_n_0 ),
        .I1(\spo[18]_INST_0_i_44_n_0 ),
        .O(\spo[18]_INST_0_i_25_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_26 
       (.I0(\spo[18]_INST_0_i_45_n_0 ),
        .I1(\spo[18]_INST_0_i_46_n_0 ),
        .O(\spo[18]_INST_0_i_26_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_27 
       (.I0(\spo[18]_INST_0_i_47_n_0 ),
        .I1(\spo[18]_INST_0_i_48_n_0 ),
        .O(\spo[18]_INST_0_i_27_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_28 
       (.I0(\spo[18]_INST_0_i_49_n_0 ),
        .I1(\spo[18]_INST_0_i_50_n_0 ),
        .O(\spo[18]_INST_0_i_28_n_0 ),
        .S(a[4]));
  MUXF7 \spo[18]_INST_0_i_29 
       (.I0(\spo[18]_INST_0_i_51_n_0 ),
        .I1(\spo[18]_INST_0_i_52_n_0 ),
        .O(\spo[18]_INST_0_i_29_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_3 
       (.I0(\spo[18]_INST_0_i_10_n_0 ),
        .I1(\spo[18]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[18]_INST_0_i_12_n_0 ),
        .I4(a[6]),
        .I5(\spo[18]_INST_0_i_13_n_0 ),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000038)) 
    \spo[18]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000490000000C)) 
    \spo[18]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0001000400080002)) 
    \spo[18]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00040002)) 
    \spo[18]_INST_0_i_33 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[18]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \spo[18]_INST_0_i_34 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000700004000F)) 
    \spo[18]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000210121)) 
    \spo[18]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000024)) 
    \spo[18]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000038)) 
    \spo[18]_INST_0_i_38 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800040002)) 
    \spo[18]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_4 
       (.I0(\spo[18]_INST_0_i_14_n_0 ),
        .I1(\spo[28]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[18]_INST_0_i_15_n_0 ),
        .I4(a[4]),
        .I5(\spo[18]_INST_0_i_16_n_0 ),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000009)) 
    \spo[18]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h00000048000000B0)) 
    \spo[18]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000001600000029)) 
    \spo[18]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000009500000098)) 
    \spo[18]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000000D2000000C4)) 
    \spo[18]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0103020100000000)) 
    \spo[18]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000008C00000005)) 
    \spo[18]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h000000C0000000B0)) 
    \spo[18]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000000008)) 
    \spo[18]_INST_0_i_48 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000009500000018)) 
    \spo[18]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0_i_5 
       (.I0(\spo[18]_INST_0_i_17_n_0 ),
        .I1(\spo[18]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(\spo[18]_INST_0_i_15_n_0 ),
        .I4(a[4]),
        .I5(\spo[18]_INST_0_i_19_n_0 ),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000B800000025)) 
    \spo[18]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A0004)) 
    \spo[18]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000002900000034)) 
    \spo[18]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[3]),
        .I1(\spo[16]_INST_0_i_5_n_0 ),
        .I2(a[5]),
        .I3(\spo[18]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[18]_INST_0_i_21_n_0 ),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  MUXF8 \spo[18]_INST_0_i_7 
       (.I0(\spo[18]_INST_0_i_22_n_0 ),
        .I1(\spo[18]_INST_0_i_23_n_0 ),
        .O(\spo[18]_INST_0_i_7_n_0 ),
        .S(a[5]));
  MUXF8 \spo[18]_INST_0_i_8 
       (.I0(\spo[18]_INST_0_i_24_n_0 ),
        .I1(\spo[18]_INST_0_i_25_n_0 ),
        .O(\spo[18]_INST_0_i_8_n_0 ),
        .S(a[5]));
  MUXF8 \spo[18]_INST_0_i_9 
       (.I0(\spo[18]_INST_0_i_26_n_0 ),
        .I1(\spo[18]_INST_0_i_27_n_0 ),
        .O(\spo[18]_INST_0_i_9_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(a[7]),
        .I4(\spo[19]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_4_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_5_n_0 ),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008010000000000)) 
    \spo[19]_INST_0_i_10 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[19]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000403)) 
    \spo[19]_INST_0_i_11 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[2]),
        .O(\spo[19]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEA00AA00AA00AA00)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[19]_INST_0_i_5_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  MUXF7 \spo[19]_INST_0_i_3 
       (.I0(\spo[19]_INST_0_i_6_n_0 ),
        .I1(\spo[19]_INST_0_i_7_n_0 ),
        .O(\spo[19]_INST_0_i_3_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0000006D00000058)) 
    \spo[19]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \spo[19]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0_i_6 
       (.I0(\spo[19]_INST_0_i_8_n_0 ),
        .I1(\spo[19]_INST_0_i_9_n_0 ),
        .I2(a[5]),
        .I3(\spo[19]_INST_0_i_10_n_0 ),
        .I4(a[4]),
        .I5(\spo[19]_INST_0_i_11_n_0 ),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000000C0A0C0A0)) 
    \spo[19]_INST_0_i_7 
       (.I0(\spo[19]_INST_0_i_9_n_0 ),
        .I1(\spo[21]_INST_0_i_41_n_0 ),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[27]_INST_0_i_21_n_0 ),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000700000000F)) 
    \spo[19]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[19]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0201)) 
    \spo[19]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .O(\spo[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[1]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_7_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  MUXF7 \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_18_n_0 ),
        .I1(\spo[1]_INST_0_i_19_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_20_n_0 ),
        .I1(\spo[1]_INST_0_i_21_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_22_n_0 ),
        .I1(\spo[1]_INST_0_i_23_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_24_n_0 ),
        .I1(\spo[1]_INST_0_i_25_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_26_n_0 ),
        .I1(\spo[1]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_15 
       (.I0(\spo[1]_INST_0_i_28_n_0 ),
        .I1(\spo[1]_INST_0_i_29_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_16 
       (.I0(\spo[1]_INST_0_i_30_n_0 ),
        .I1(\spo[1]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_16_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_17 
       (.I0(\spo[1]_INST_0_i_32_n_0 ),
        .I1(\spo[1]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_17_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_18 
       (.I0(\spo[1]_INST_0_i_34_n_0 ),
        .I1(\spo[1]_INST_0_i_35_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_36_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_30_n_0 ),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_19 
       (.I0(\spo[15]_INST_0_i_23_n_0 ),
        .I1(\spo[1]_INST_0_i_37_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_38_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_39_n_0 ),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_20 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(\spo[1]_INST_0_i_40_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_41_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_42_n_0 ),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_21 
       (.I0(\spo[1]_INST_0_i_43_n_0 ),
        .I1(\spo[1]_INST_0_i_44_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_45_n_0 ),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[1]_INST_0_i_22 
       (.I0(\spo[1]_INST_0_i_46_n_0 ),
        .I1(a[5]),
        .I2(\spo[1]_INST_0_i_47_n_0 ),
        .I3(a[4]),
        .I4(\spo[1]_INST_0_i_48_n_0 ),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[1]_INST_0_i_23 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(a[4]),
        .I2(\spo[1]_INST_0_i_49_n_0 ),
        .I3(a[5]),
        .I4(\spo[1]_INST_0_i_46_n_0 ),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_24 
       (.I0(\spo[1]_INST_0_i_50_n_0 ),
        .I1(\spo[1]_INST_0_i_51_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_52_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_34_n_0 ),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_25 
       (.I0(\spo[1]_INST_0_i_53_n_0 ),
        .I1(\spo[1]_INST_0_i_54_n_0 ),
        .I2(a[5]),
        .I3(\spo[1]_INST_0_i_45_n_0 ),
        .I4(a[4]),
        .I5(\spo[1]_INST_0_i_55_n_0 ),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000CD00000052)) 
    \spo[1]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000007400000003)) 
    \spo[1]_INST_0_i_27 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000002A00000067)) 
    \spo[1]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000030)) 
    \spo[1]_INST_0_i_29 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  MUXF8 \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(\spo[1]_INST_0_i_11_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000001F00000078)) 
    \spo[1]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000003200000007)) 
    \spo[1]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000440000008F)) 
    \spo[1]_INST_0_i_32 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00000003000000CA)) 
    \spo[1]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h000000640000003A)) 
    \spo[1]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001C77)) 
    \spo[1]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h000800080008000B)) 
    \spo[1]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000038BD)) 
    \spo[1]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0006000B)) 
    \spo[1]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[1]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BCF9)) 
    \spo[1]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[1]_INST_0_i_39_n_0 ));
  MUXF8 \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_12_n_0 ),
        .I1(\spo[1]_INST_0_i_13_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h000000CD00000036)) 
    \spo[1]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h00000018000000A7)) 
    \spo[1]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000001B00000036)) 
    \spo[1]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000B0008000A0002)) 
    \spo[1]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000A000200030002)) 
    \spo[1]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000680000005C)) 
    \spo[1]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000660000000F)) 
    \spo[1]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000121200000037)) 
    \spo[1]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[10]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0201050302000A02)) 
    \spo[1]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000006E0000000F)) 
    \spo[1]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h5FA0000034800000)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000004C0000007C)) 
    \spo[1]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A00000015)) 
    \spo[1]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000001C00000047)) 
    \spo[1]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[1]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C595)) 
    \spo[1]_INST_0_i_53 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[1]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h000000C800000096)) 
    \spo[1]_INST_0_i_54 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000002D000000EA)) 
    \spo[1]_INST_0_i_55 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00008FF00000)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000000060)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  MUXF8 \spo[1]_INST_0_i_8 
       (.I0(\spo[1]_INST_0_i_14_n_0 ),
        .I1(\spo[1]_INST_0_i_15_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ),
        .S(a[5]));
  MUXF8 \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_16_n_0 ),
        .I1(\spo[1]_INST_0_i_17_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ),
        .S(a[5]));
  MUXF7 \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .O(spo[20]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(\spo[20]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[20]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030008080)) 
    \spo[20]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_7_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[24]_INST_0_i_6_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00809000)) 
    \spo[20]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[8]_INST_0_i_6_n_0 ),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000380800000000)) 
    \spo[20]_INST_0_i_12 
       (.I0(\spo[24]_INST_0_i_6_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_11_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0040004)) 
    \spo[20]_INST_0_i_13 
       (.I0(a[3]),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .I2(a[2]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_7_n_0 ),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBB30883000000000)) 
    \spo[20]_INST_0_i_14 
       (.I0(\spo[27]_INST_0_i_36_n_0 ),
        .I1(a[5]),
        .I2(\spo[27]_INST_0_i_24_n_0 ),
        .I3(a[3]),
        .I4(\spo[31]_INST_0_i_13_n_0 ),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC300000008080000)) 
    \spo[20]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_11_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_6_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[20]_INST_0_i_16 
       (.I0(a[3]),
        .I1(\spo[27]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_39_n_0 ),
        .I4(a[4]),
        .I5(\spo[20]_INST_0_i_21_n_0 ),
        .O(\spo[20]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00F7FFFF00800000)) 
    \spo[20]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(\spo[27]_INST_0_i_18_n_0 ),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_9_n_0 ),
        .O(\spo[20]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00060003)) 
    \spo[20]_INST_0_i_18 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[20]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0020800000000000)) 
    \spo[20]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(\spo[27]_INST_0_i_18_n_0 ),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_7_n_0 ),
        .I1(a[8]),
        .I2(\spo[20]_INST_0_i_8_n_0 ),
        .I3(a[7]),
        .I4(\spo[20]_INST_0_i_9_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0AFC0A000000000)) 
    \spo[20]_INST_0_i_20 
       (.I0(\spo[27]_INST_0_i_17_n_0 ),
        .I1(\spo[20]_INST_0_i_8_n_0 ),
        .I2(a[5]),
        .I3(a[3]),
        .I4(\spo[31]_INST_0_i_13_n_0 ),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000040A0155)) 
    \spo[20]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[20]_INST_0_i_21_n_0 ));
  MUXF7 \spo[20]_INST_0_i_3 
       (.I0(\spo[20]_INST_0_i_10_n_0 ),
        .I1(\spo[20]_INST_0_i_11_n_0 ),
        .O(\spo[20]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[20]_INST_0_i_4 
       (.I0(\spo[20]_INST_0_i_12_n_0 ),
        .I1(\spo[20]_INST_0_i_13_n_0 ),
        .O(\spo[20]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[20]_INST_0_i_5 
       (.I0(\spo[20]_INST_0_i_14_n_0 ),
        .I1(\spo[20]_INST_0_i_15_n_0 ),
        .O(\spo[20]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[20]_INST_0_i_6 
       (.I0(\spo[20]_INST_0_i_16_n_0 ),
        .I1(\spo[20]_INST_0_i_17_n_0 ),
        .O(\spo[20]_INST_0_i_6_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[20]_INST_0_i_7 
       (.I0(\spo[20]_INST_0_i_18_n_0 ),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_8_n_0 ),
        .O(\spo[20]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0302)) 
    \spo[20]_INST_0_i_8 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .O(\spo[20]_INST_0_i_8_n_0 ));
  MUXF7 \spo[20]_INST_0_i_9 
       (.I0(\spo[20]_INST_0_i_19_n_0 ),
        .I1(\spo[20]_INST_0_i_20_n_0 ),
        .O(\spo[20]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[21]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[21]_INST_0_i_4_n_0 ),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_7_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_10 
       (.I0(\spo[21]_INST_0_i_30_n_0 ),
        .I1(\spo[21]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[23]_INST_0_i_15_n_0 ),
        .O(\spo[21]_INST_0_i_10_n_0 ));
  MUXF8 \spo[21]_INST_0_i_11 
       (.I0(\spo[21]_INST_0_i_33_n_0 ),
        .I1(\spo[21]_INST_0_i_34_n_0 ),
        .O(\spo[21]_INST_0_i_11_n_0 ),
        .S(a[5]));
  MUXF8 \spo[21]_INST_0_i_12 
       (.I0(\spo[21]_INST_0_i_35_n_0 ),
        .I1(\spo[21]_INST_0_i_36_n_0 ),
        .O(\spo[21]_INST_0_i_12_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_13 
       (.I0(\spo[21]_INST_0_i_37_n_0 ),
        .I1(\spo[21]_INST_0_i_38_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_39_n_0 ),
        .I4(a[4]),
        .I5(\spo[21]_INST_0_i_40_n_0 ),
        .O(\spo[21]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \spo[21]_INST_0_i_14 
       (.I0(\spo[21]_INST_0_i_41_n_0 ),
        .I1(a[3]),
        .I2(\spo[22]_INST_0_i_17_n_0 ),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_11_n_0 ),
        .O(\spo[21]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[21]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_11_n_0 ),
        .I1(a[5]),
        .I2(\spo[21]_INST_0_i_42_n_0 ),
        .I3(a[4]),
        .I4(\spo[21]_INST_0_i_43_n_0 ),
        .O(\spo[21]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \spo[21]_INST_0_i_16 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[21]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000027)) 
    \spo[21]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00020008000F0001)) 
    \spo[21]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000C5000000A2)) 
    \spo[21]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[21]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_7_n_0 ),
        .I1(a[7]),
        .I2(\spo[21]_INST_0_i_6_n_0 ),
        .I3(a[6]),
        .I4(\spo[21]_INST_0_i_7_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000B500000040)) 
    \spo[21]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000038)) 
    \spo[21]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000030000000C1)) 
    \spo[21]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000018)) 
    \spo[21]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000001400000020)) 
    \spo[21]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000810000004C)) 
    \spo[21]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00000002000D0009)) 
    \spo[21]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000003000000004)) 
    \spo[21]_INST_0_i_27 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000009C00000048)) 
    \spo[21]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400080000)) 
    \spo[21]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_3 
       (.I0(\spo[21]_INST_0_i_8_n_0 ),
        .I1(\spo[21]_INST_0_i_9_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_10_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_11_n_0 ),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C000000000008)) 
    \spo[21]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000008300000040)) 
    \spo[21]_INST_0_i_31 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000049)) 
    \spo[21]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_32_n_0 ));
  MUXF7 \spo[21]_INST_0_i_33 
       (.I0(\spo[21]_INST_0_i_44_n_0 ),
        .I1(\spo[21]_INST_0_i_45_n_0 ),
        .O(\spo[21]_INST_0_i_33_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_34 
       (.I0(\spo[21]_INST_0_i_46_n_0 ),
        .I1(\spo[21]_INST_0_i_47_n_0 ),
        .O(\spo[21]_INST_0_i_34_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_35 
       (.I0(\spo[21]_INST_0_i_48_n_0 ),
        .I1(\spo[21]_INST_0_i_49_n_0 ),
        .O(\spo[21]_INST_0_i_35_n_0 ),
        .S(a[4]));
  MUXF7 \spo[21]_INST_0_i_36 
       (.I0(\spo[21]_INST_0_i_50_n_0 ),
        .I1(\spo[21]_INST_0_i_51_n_0 ),
        .O(\spo[21]_INST_0_i_36_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h000000080000006D)) 
    \spo[21]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000006C00000014)) 
    \spo[21]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h000000010008000A)) 
    \spo[21]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_4 
       (.I0(\spo[21]_INST_0_i_12_n_0 ),
        .I1(\spo[21]_INST_0_i_13_n_0 ),
        .I2(a[7]),
        .I3(\spo[21]_INST_0_i_14_n_0 ),
        .I4(a[6]),
        .I5(\spo[21]_INST_0_i_15_n_0 ),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00040009)) 
    \spo[21]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[1]),
        .O(\spo[21]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00040003)) 
    \spo[21]_INST_0_i_41 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[21]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004077)) 
    \spo[21]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[10]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h002200010094000A)) 
    \spo[21]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0004000200000000)) 
    \spo[21]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000081)) 
    \spo[21]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000008400000030)) 
    \spo[21]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0001000800020000)) 
    \spo[21]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00020002)) 
    \spo[21]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000008100000044)) 
    \spo[21]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h000000C100000080)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000090006)) 
    \spo[21]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h00000009)) 
    \spo[21]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[21]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_6 
       (.I0(\spo[21]_INST_0_i_16_n_0 ),
        .I1(\spo[21]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_18_n_0 ),
        .I4(a[4]),
        .I5(\spo[21]_INST_0_i_19_n_0 ),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_7 
       (.I0(\spo[21]_INST_0_i_20_n_0 ),
        .I1(\spo[21]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[21]_INST_0_i_23_n_0 ),
        .O(\spo[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_8 
       (.I0(\spo[21]_INST_0_i_24_n_0 ),
        .I1(\spo[28]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[21]_INST_0_i_25_n_0 ),
        .O(\spo[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0_i_9 
       (.I0(\spo[21]_INST_0_i_26_n_0 ),
        .I1(\spo[21]_INST_0_i_27_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[21]_INST_0_i_29_n_0 ),
        .O(\spo[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[22]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[22]_INST_0_i_4_n_0 ),
        .O(spo[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[22]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  MUXF8 \spo[22]_INST_0_i_10 
       (.I0(\spo[22]_INST_0_i_19_n_0 ),
        .I1(\spo[22]_INST_0_i_20_n_0 ),
        .O(\spo[22]_INST_0_i_10_n_0 ),
        .S(a[5]));
  MUXF8 \spo[22]_INST_0_i_11 
       (.I0(\spo[22]_INST_0_i_21_n_0 ),
        .I1(\spo[22]_INST_0_i_22_n_0 ),
        .O(\spo[22]_INST_0_i_11_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_12 
       (.I0(\spo[22]_INST_0_i_23_n_0 ),
        .I1(\spo[22]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(\spo[22]_INST_0_i_25_n_0 ),
        .I4(a[4]),
        .I5(\spo[22]_INST_0_i_26_n_0 ),
        .O(\spo[22]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_13 
       (.I0(\spo[22]_INST_0_i_27_n_0 ),
        .I1(\spo[22]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[22]_INST_0_i_29_n_0 ),
        .I4(a[4]),
        .I5(\spo[22]_INST_0_i_23_n_0 ),
        .O(\spo[22]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_14 
       (.I0(\spo[22]_INST_0_i_30_n_0 ),
        .I1(\spo[22]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[22]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[22]_INST_0_i_33_n_0 ),
        .O(\spo[22]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8A80808000000000)) 
    \spo[22]_INST_0_i_15 
       (.I0(a[4]),
        .I1(\spo[22]_INST_0_i_17_n_0 ),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_11_n_0 ),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050080008)) 
    \spo[22]_INST_0_i_16 
       (.I0(a[3]),
        .I1(\spo[31]_INST_0_i_9_n_0 ),
        .I2(a[2]),
        .I3(a[4]),
        .I4(\spo[24]_INST_0_i_5_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00010008)) 
    \spo[22]_INST_0_i_17 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[22]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000006)) 
    \spo[22]_INST_0_i_18 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[22]_INST_0_i_18_n_0 ));
  MUXF7 \spo[22]_INST_0_i_19 
       (.I0(\spo[22]_INST_0_i_34_n_0 ),
        .I1(\spo[22]_INST_0_i_35_n_0 ),
        .O(\spo[22]_INST_0_i_19_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h00000000F8A85808)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[5]),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .I2(a[6]),
        .I3(\spo[22]_INST_0_i_7_n_0 ),
        .I4(\spo[22]_INST_0_i_8_n_0 ),
        .I5(a[7]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  MUXF7 \spo[22]_INST_0_i_20 
       (.I0(\spo[22]_INST_0_i_36_n_0 ),
        .I1(\spo[22]_INST_0_i_37_n_0 ),
        .O(\spo[22]_INST_0_i_20_n_0 ),
        .S(a[4]));
  MUXF7 \spo[22]_INST_0_i_21 
       (.I0(\spo[22]_INST_0_i_38_n_0 ),
        .I1(\spo[22]_INST_0_i_39_n_0 ),
        .O(\spo[22]_INST_0_i_21_n_0 ),
        .S(a[4]));
  MUXF7 \spo[22]_INST_0_i_22 
       (.I0(\spo[22]_INST_0_i_40_n_0 ),
        .I1(\spo[22]_INST_0_i_41_n_0 ),
        .O(\spo[22]_INST_0_i_22_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0001000A00000002)) 
    \spo[22]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00000007)) 
    \spo[22]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000080000)) 
    \spo[22]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000008700000008)) 
    \spo[22]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000005200000009)) 
    \spo[22]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000080001000A)) 
    \spo[22]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000014)) 
    \spo[22]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_3 
       (.I0(\spo[22]_INST_0_i_9_n_0 ),
        .I1(\spo[22]_INST_0_i_10_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_12_n_0 ),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000043)) 
    \spo[22]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000002D00000040)) 
    \spo[22]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0004000100020000)) 
    \spo[22]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000002900000042)) 
    \spo[22]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000040)) 
    \spo[22]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000002900000040)) 
    \spo[22]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h000C000100000000)) 
    \spo[22]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080006)) 
    \spo[22]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000000840000000B)) 
    \spo[22]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100080002)) 
    \spo[22]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0_i_4 
       (.I0(\spo[22]_INST_0_i_13_n_0 ),
        .I1(\spo[22]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(\spo[22]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[22]_INST_0_i_16_n_0 ),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000080000003C)) 
    \spo[22]_INST_0_i_40 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000040)) 
    \spo[22]_INST_0_i_41 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0006000000000000)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800400800000000)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[1]),
        .I1(\spo[31]_INST_0_i_12_n_0 ),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h500B000080400000)) 
    \spo[22]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1044000020010000)) 
    \spo[22]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3F0C3B0B33003808)) 
    \spo[22]_INST_0_i_9 
       (.I0(\spo[22]_INST_0_i_17_n_0 ),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_20_n_0 ),
        .I4(a[3]),
        .I5(\spo[22]_INST_0_i_18_n_0 ),
        .O(\spo[22]_INST_0_i_9_n_0 ));
  MUXF7 \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[23]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_3_n_0 ),
        .I1(\spo[23]_INST_0_i_4_n_0 ),
        .I2(a[8]),
        .I3(\spo[23]_INST_0_i_5_n_0 ),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540858545408080)) 
    \spo[23]_INST_0_i_10 
       (.I0(a[5]),
        .I1(\spo[27]_INST_0_i_21_n_0 ),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_36_n_0 ),
        .I4(a[3]),
        .I5(\spo[31]_INST_0_i_13_n_0 ),
        .O(\spo[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h140000000000A000)) 
    \spo[23]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(\spo[27]_INST_0_i_18_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0B08000000000000)) 
    \spo[23]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_6_n_0 ),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC00300088338800)) 
    \spo[23]_INST_0_i_13 
       (.I0(\spo[23]_INST_0_i_18_n_0 ),
        .I1(a[5]),
        .I2(\spo[23]_INST_0_i_9_n_0 ),
        .I3(a[4]),
        .I4(\spo[23]_INST_0_i_19_n_0 ),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \spo[23]_INST_0_i_14 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[23]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[23]_INST_0_i_15 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[23]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0800000001000000)) 
    \spo[23]_INST_0_i_16 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(\spo[6]_INST_0_i_7_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h80803000)) 
    \spo[23]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(\spo[31]_INST_0_i_7_n_0 ),
        .I3(a[2]),
        .I4(a[4]),
        .O(\spo[23]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \spo[23]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[23]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \spo[23]_INST_0_i_19 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[23]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FF0FBF80F000)) 
    \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(a[8]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[7]),
        .I5(\spo[23]_INST_0_i_8_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \spo[23]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_21_n_0 ),
        .I1(a[6]),
        .I2(a[4]),
        .I3(\spo[23]_INST_0_i_9_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  MUXF7 \spo[23]_INST_0_i_4 
       (.I0(\spo[23]_INST_0_i_10_n_0 ),
        .I1(\spo[23]_INST_0_i_11_n_0 ),
        .O(\spo[23]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[23]_INST_0_i_5 
       (.I0(\spo[23]_INST_0_i_12_n_0 ),
        .I1(\spo[23]_INST_0_i_13_n_0 ),
        .O(\spo[23]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0000000040404540)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[5]),
        .I1(\spo[23]_INST_0_i_14_n_0 ),
        .I2(a[4]),
        .I3(\spo[23]_INST_0_i_15_n_0 ),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF000080000000)) 
    \spo[23]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(\spo[27]_INST_0_i_18_n_0 ),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_7_n_0 ));
  MUXF7 \spo[23]_INST_0_i_8 
       (.I0(\spo[23]_INST_0_i_16_n_0 ),
        .I1(\spo[23]_INST_0_i_17_n_0 ),
        .O(\spo[23]_INST_0_i_8_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[23]_INST_0_i_9 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[23]_INST_0_i_9_n_0 ));
  MUXF7 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[24]),
        .S(a[9]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[24]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(a[8]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_4_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_8_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0088008830333000)) 
    \spo[24]_INST_0_i_3 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(a[4]),
        .I2(\spo[31]_INST_0_i_9_n_0 ),
        .I3(a[3]),
        .I4(\spo[24]_INST_0_i_6_n_0 ),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \spo[24]_INST_0_i_4 
       (.I0(\spo[24]_INST_0_i_7_n_0 ),
        .I1(a[3]),
        .I2(\spo[24]_INST_0_i_8_n_0 ),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_7_n_0 ),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[1]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[24]_INST_0_i_7 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .O(\spo[24]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h000B0000)) 
    \spo[24]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[24]_INST_0_i_8_n_0 ));
  MUXF8 \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[25]),
        .S(a[9]));
  MUXF7 \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_3_n_0 ),
        .I1(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ),
        .S(a[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[26]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_11_n_0 ),
        .I1(a[5]),
        .I2(\spo[26]_INST_0_i_26_n_0 ),
        .I3(a[4]),
        .I4(\spo[26]_INST_0_i_27_n_0 ),
        .O(\spo[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_11 
       (.I0(\spo[26]_INST_0_i_28_n_0 ),
        .I1(\spo[26]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_31_n_0 ),
        .O(\spo[26]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_12 
       (.I0(\spo[28]_INST_0_i_24_n_0 ),
        .I1(\spo[4]_INST_0_i_15_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_32_n_0 ),
        .O(\spo[26]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_13 
       (.I0(\spo[26]_INST_0_i_33_n_0 ),
        .I1(\spo[26]_INST_0_i_34_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_35_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_36_n_0 ),
        .O(\spo[26]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_14 
       (.I0(\spo[26]_INST_0_i_37_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_38_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_33_n_0 ),
        .O(\spo[26]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_15 
       (.I0(\spo[26]_INST_0_i_39_n_0 ),
        .I1(\spo[28]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_40_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_19_n_0 ),
        .O(\spo[26]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_16 
       (.I0(\spo[26]_INST_0_i_41_n_0 ),
        .I1(\spo[26]_INST_0_i_42_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_43_n_0 ),
        .O(\spo[26]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000ED000000C8)) 
    \spo[26]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E7B7)) 
    \spo[26]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[26]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000E900000086)) 
    \spo[26]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_19_n_0 ));
  MUXF7 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h000000E100000048)) 
    \spo[26]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000037000000F0)) 
    \spo[26]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000003C00000057)) 
    \spo[26]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006FDF)) 
    \spo[26]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[26]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000072000000EE)) 
    \spo[26]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00020003)) 
    \spo[26]_INST_0_i_25 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[26]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000040F)) 
    \spo[26]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000002220101F)) 
    \spo[26]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[26]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000BC00000020)) 
    \spo[26]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000096000000C8)) 
    \spo[26]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_3 
       (.I0(\spo[26]_INST_0_i_7_n_0 ),
        .I1(\spo[26]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[26]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[26]_INST_0_i_10_n_0 ),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h03010000)) 
    \spo[26]_INST_0_i_30 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[26]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000C900000048)) 
    \spo[26]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000003B00000054)) 
    \spo[26]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000000D7000000B4)) 
    \spo[26]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000B4BF)) 
    \spo[26]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[26]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000006A0000006F)) 
    \spo[26]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000003F000000E0)) 
    \spo[26]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000006C000000FC)) 
    \spo[26]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000000AE0000008B)) 
    \spo[26]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800010008)) 
    \spo[26]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_4 
       (.I0(\spo[26]_INST_0_i_11_n_0 ),
        .I1(\spo[26]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[26]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[26]_INST_0_i_14_n_0 ),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000081)) 
    \spo[26]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h000000940000008A)) 
    \spo[26]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00000038)) 
    \spo[26]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000000400000005C)) 
    \spo[26]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[26]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_7_n_0 ),
        .I1(a[7]),
        .I2(\spo[26]_INST_0_i_15_n_0 ),
        .I3(a[6]),
        .I4(\spo[26]_INST_0_i_16_n_0 ),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[26]_INST_0_i_6 
       (.I0(\spo[26]_INST_0_i_17_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_7_n_0 ),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_7 
       (.I0(\spo[26]_INST_0_i_18_n_0 ),
        .I1(\spo[26]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_37_n_0 ),
        .O(\spo[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0_i_8 
       (.I0(\spo[26]_INST_0_i_21_n_0 ),
        .I1(\spo[28]_INST_0_i_39_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[26]_INST_0_i_23_n_0 ),
        .O(\spo[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8880000)) 
    \spo[26]_INST_0_i_9 
       (.I0(\spo[26]_INST_0_i_24_n_0 ),
        .I1(a[4]),
        .I2(\spo[26]_INST_0_i_25_n_0 ),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_11_n_0 ),
        .O(\spo[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[27]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[27]_INST_0_i_4_n_0 ),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_5_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_10 
       (.I0(\spo[27]_INST_0_i_22_n_0 ),
        .I1(\spo[27]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[27]_INST_0_i_25_n_0 ),
        .O(\spo[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_11 
       (.I0(\spo[27]_INST_0_i_26_n_0 ),
        .I1(\spo[27]_INST_0_i_27_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[27]_INST_0_i_29_n_0 ),
        .O(\spo[27]_INST_0_i_11_n_0 ));
  MUXF8 \spo[27]_INST_0_i_12 
       (.I0(\spo[27]_INST_0_i_30_n_0 ),
        .I1(\spo[27]_INST_0_i_31_n_0 ),
        .O(\spo[27]_INST_0_i_12_n_0 ),
        .S(a[5]));
  MUXF8 \spo[27]_INST_0_i_13 
       (.I0(\spo[27]_INST_0_i_32_n_0 ),
        .I1(\spo[27]_INST_0_i_33_n_0 ),
        .O(\spo[27]_INST_0_i_13_n_0 ),
        .S(a[5]));
  MUXF8 \spo[27]_INST_0_i_14 
       (.I0(\spo[27]_INST_0_i_34_n_0 ),
        .I1(\spo[27]_INST_0_i_35_n_0 ),
        .O(\spo[27]_INST_0_i_14_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hF8A8580800000000)) 
    \spo[27]_INST_0_i_15 
       (.I0(a[3]),
        .I1(\spo[27]_INST_0_i_36_n_0 ),
        .I2(a[4]),
        .I3(\spo[8]_INST_0_i_6_n_0 ),
        .I4(\spo[27]_INST_0_i_37_n_0 ),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spo[27]_INST_0_i_16 
       (.I0(\spo[27]_INST_0_i_38_n_0 ),
        .I1(a[4]),
        .I2(\spo[27]_INST_0_i_39_n_0 ),
        .I3(a[5]),
        .O(\spo[27]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00080004)) 
    \spo[27]_INST_0_i_17 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[27]_INST_0_i_18 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[0]),
        .O(\spo[27]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000008100000068)) 
    \spo[27]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_6_n_0 ),
        .I1(a[7]),
        .I2(\spo[27]_INST_0_i_7_n_0 ),
        .I3(a[6]),
        .I4(\spo[27]_INST_0_i_8_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00060000)) 
    \spo[27]_INST_0_i_20 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \spo[27]_INST_0_i_21 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[27]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0009000800000000)) 
    \spo[27]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800030004)) 
    \spo[27]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[27]_INST_0_i_24 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[27]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000003700000008)) 
    \spo[27]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[27]_INST_0_i_26 
       (.I0(a[2]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[27]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C0001)) 
    \spo[27]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0004000800020000)) 
    \spo[27]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00040008)) 
    \spo[27]_INST_0_i_29 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[27]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_3 
       (.I0(\spo[27]_INST_0_i_9_n_0 ),
        .I1(\spo[27]_INST_0_i_10_n_0 ),
        .I2(a[7]),
        .I3(\spo[27]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[27]_INST_0_i_12_n_0 ),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  MUXF7 \spo[27]_INST_0_i_30 
       (.I0(\spo[27]_INST_0_i_40_n_0 ),
        .I1(\spo[27]_INST_0_i_41_n_0 ),
        .O(\spo[27]_INST_0_i_30_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_31 
       (.I0(\spo[27]_INST_0_i_42_n_0 ),
        .I1(\spo[27]_INST_0_i_43_n_0 ),
        .O(\spo[27]_INST_0_i_31_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_32 
       (.I0(\spo[27]_INST_0_i_44_n_0 ),
        .I1(\spo[27]_INST_0_i_45_n_0 ),
        .O(\spo[27]_INST_0_i_32_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_33 
       (.I0(\spo[27]_INST_0_i_46_n_0 ),
        .I1(\spo[27]_INST_0_i_47_n_0 ),
        .O(\spo[27]_INST_0_i_33_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_34 
       (.I0(\spo[27]_INST_0_i_48_n_0 ),
        .I1(\spo[27]_INST_0_i_49_n_0 ),
        .O(\spo[27]_INST_0_i_34_n_0 ),
        .S(a[4]));
  MUXF7 \spo[27]_INST_0_i_35 
       (.I0(\spo[27]_INST_0_i_50_n_0 ),
        .I1(\spo[27]_INST_0_i_51_n_0 ),
        .O(\spo[27]_INST_0_i_35_n_0 ),
        .S(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \spo[27]_INST_0_i_36 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[27]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00030004)) 
    \spo[27]_INST_0_i_37 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[27]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0006001000200005)) 
    \spo[27]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000101000)) 
    \spo[27]_INST_0_i_39 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[27]_INST_0_i_4 
       (.I0(\spo[27]_INST_0_i_13_n_0 ),
        .I1(\spo[27]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(\spo[27]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[27]_INST_0_i_16_n_0 ),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000020000000B4)) 
    \spo[27]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[27]_INST_0_i_41 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[3]),
        .O(\spo[27]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000200)) 
    \spo[27]_INST_0_i_42 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000002400000094)) 
    \spo[27]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000080004)) 
    \spo[27]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000080000)) 
    \spo[27]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000C000900000000)) 
    \spo[27]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000008600000012)) 
    \spo[27]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h00000052000000B5)) 
    \spo[27]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000001C00000011)) 
    \spo[27]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000006D000000C2)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000040000000B)) 
    \spo[27]_INST_0_i_50 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[27]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000001C00000004)) 
    \spo[27]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[1]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA000A000CFFFC000)) 
    \spo[27]_INST_0_i_7 
       (.I0(\spo[27]_INST_0_i_6_n_0 ),
        .I1(\spo[27]_INST_0_i_17_n_0 ),
        .I2(a[4]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_13_n_0 ),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0800080081000000)) 
    \spo[27]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(\spo[27]_INST_0_i_18_n_0 ),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFB083B0BFB083808)) 
    \spo[27]_INST_0_i_9 
       (.I0(\spo[27]_INST_0_i_19_n_0 ),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[27]_INST_0_i_20_n_0 ),
        .I4(a[3]),
        .I5(\spo[27]_INST_0_i_21_n_0 ),
        .O(\spo[27]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[28]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[28]_INST_0_i_4_n_0 ),
        .O(spo[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[28]_INST_0_i_5_n_0 ),
        .I3(a[5]),
        .I4(a[7]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_10 
       (.I0(\spo[28]_INST_0_i_24_n_0 ),
        .I1(\spo[28]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_27_n_0 ),
        .O(\spo[28]_INST_0_i_10_n_0 ));
  MUXF8 \spo[28]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(\spo[28]_INST_0_i_29_n_0 ),
        .O(\spo[28]_INST_0_i_11_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_12 
       (.I0(\spo[28]_INST_0_i_30_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_32_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_33_n_0 ),
        .O(\spo[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_13 
       (.I0(\spo[28]_INST_0_i_34_n_0 ),
        .I1(\spo[28]_INST_0_i_35_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_36_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_37_n_0 ),
        .O(\spo[28]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_14 
       (.I0(\spo[28]_INST_0_i_38_n_0 ),
        .I1(\spo[28]_INST_0_i_39_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_40_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_41_n_0 ),
        .O(\spo[28]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FF03BF80FC00)) 
    \spo[28]_INST_0_i_15 
       (.I0(\spo[28]_INST_0_i_42_n_0 ),
        .I1(a[6]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_11_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_43_n_0 ),
        .O(\spo[28]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \spo[28]_INST_0_i_16 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000A40000005A)) 
    \spo[28]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00020000000C0001)) 
    \spo[28]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000014000000C2)) 
    \spo[28]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_6_n_0 ),
        .I1(a[5]),
        .I2(\spo[28]_INST_0_i_7_n_0 ),
        .I3(a[6]),
        .I4(\spo[28]_INST_0_i_8_n_0 ),
        .I5(a[7]),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000009C00000020)) 
    \spo[28]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000001600000080)) 
    \spo[28]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h02010000)) 
    \spo[28]_INST_0_i_22 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[28]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000008100000048)) 
    \spo[28]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000009600000089)) 
    \spo[28]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000D00000012)) 
    \spo[28]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000900000004B)) 
    \spo[28]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000003700000074)) 
    \spo[28]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_27_n_0 ));
  MUXF7 \spo[28]_INST_0_i_28 
       (.I0(\spo[28]_INST_0_i_44_n_0 ),
        .I1(\spo[28]_INST_0_i_45_n_0 ),
        .O(\spo[28]_INST_0_i_28_n_0 ),
        .S(a[4]));
  MUXF7 \spo[28]_INST_0_i_29 
       (.I0(\spo[28]_INST_0_i_46_n_0 ),
        .I1(\spo[28]_INST_0_i_47_n_0 ),
        .O(\spo[28]_INST_0_i_29_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_9_n_0 ),
        .I1(\spo[28]_INST_0_i_10_n_0 ),
        .I2(a[7]),
        .I3(\spo[28]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[28]_INST_0_i_12_n_0 ),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000007F000000C0)) 
    \spo[28]_INST_0_i_30 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000009700000050)) 
    \spo[28]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000AE00000089)) 
    \spo[28]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000006F000000BC)) 
    \spo[28]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000067B7)) 
    \spo[28]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[28]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000E900000082)) 
    \spo[28]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h000000A100000048)) 
    \spo[28]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000003D000000A8)) 
    \spo[28]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000003700000070)) 
    \spo[28]_INST_0_i_38 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006B1D)) 
    \spo[28]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[28]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[28]_INST_0_i_4 
       (.I0(\spo[28]_INST_0_i_13_n_0 ),
        .I1(a[6]),
        .I2(\spo[28]_INST_0_i_14_n_0 ),
        .I3(a[7]),
        .I4(\spo[28]_INST_0_i_15_n_0 ),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D00000052)) 
    \spo[28]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000002B00000046)) 
    \spo[28]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00000052000000E6)) 
    \spo[28]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000200221013003)) 
    \spo[28]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C000000F8)) 
    \spo[28]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000420000006B)) 
    \spo[28]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BCFF)) 
    \spo[28]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[28]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h000000D7000000F4)) 
    \spo[28]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h000B000600080000)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1AA0000011520000)) 
    \spo[28]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8230000085C00000)) 
    \spo[28]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_8 
       (.I0(\spo[28]_INST_0_i_16_n_0 ),
        .I1(\spo[28]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_18_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_19_n_0 ),
        .O(\spo[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_9 
       (.I0(\spo[28]_INST_0_i_20_n_0 ),
        .I1(\spo[28]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_23_n_0 ),
        .O(\spo[28]_INST_0_i_9_n_0 ));
  MUXF8 \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .O(spo[28]),
        .S(a[9]));
  MUXF7 \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_3_n_0 ),
        .I1(\spo[29]_INST_0_i_4_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \spo[29]_INST_0_i_10 
       (.I0(a[5]),
        .I1(\spo[27]_INST_0_i_6_n_0 ),
        .I2(a[3]),
        .I3(\spo[29]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_28_n_0 ),
        .O(\spo[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_11 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[29]_INST_0_i_30_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_32_n_0 ),
        .O(\spo[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_12 
       (.I0(\spo[29]_INST_0_i_33_n_0 ),
        .I1(\spo[29]_INST_0_i_34_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_35_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_36_n_0 ),
        .O(\spo[29]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_38_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_39_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_40_n_0 ),
        .O(\spo[29]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_14 
       (.I0(\spo[29]_INST_0_i_41_n_0 ),
        .I1(\spo[29]_INST_0_i_42_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_43_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_44_n_0 ),
        .O(\spo[29]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_15 
       (.I0(\spo[29]_INST_0_i_45_n_0 ),
        .I1(\spo[29]_INST_0_i_46_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_47_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_48_n_0 ),
        .O(\spo[29]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_16 
       (.I0(\spo[29]_INST_0_i_49_n_0 ),
        .I1(\spo[29]_INST_0_i_50_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_16_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_51_n_0 ),
        .O(\spo[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000ED000000D8)) 
    \spo[29]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006733)) 
    \spo[29]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[29]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000F80000000C)) 
    \spo[29]_INST_0_i_19 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_19_n_0 ));
  MUXF7 \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_5_n_0 ),
        .I1(\spo[29]_INST_0_i_6_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'h00020002000A0009)) 
    \spo[29]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000ABD5)) 
    \spo[29]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[29]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003030200)) 
    \spo[29]_INST_0_i_22 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000202030301)) 
    \spo[29]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000009500000050)) 
    \spo[29]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000260000004D)) 
    \spo[29]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000F200000037)) 
    \spo[29]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0212)) 
    \spo[29]_INST_0_i_27 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .O(\spo[29]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001AACCDD)) 
    \spo[29]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[29]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800010000)) 
    \spo[29]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_7_n_0 ),
        .I1(\spo[29]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_10_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000070000001A)) 
    \spo[29]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0005000C)) 
    \spo[29]_INST_0_i_31 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000008000A0009)) 
    \spo[29]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000F000400000000)) 
    \spo[29]_INST_0_i_33 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0002000A00050004)) 
    \spo[29]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000004F)) 
    \spo[29]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000009700000036)) 
    \spo[29]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000001F000000D4)) 
    \spo[29]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004FB7)) 
    \spo[29]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[29]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F0000001A)) 
    \spo[29]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_4 
       (.I0(\spo[29]_INST_0_i_11_n_0 ),
        .I1(\spo[29]_INST_0_i_12_n_0 ),
        .I2(a[7]),
        .I3(\spo[29]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[29]_INST_0_i_14_n_0 ),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000F000E00080002)) 
    \spo[29]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h000E000A)) 
    \spo[29]_INST_0_i_41 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[29]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00000074000000CC)) 
    \spo[29]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000000AF000000B0)) 
    \spo[29]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000003F000000BC)) 
    \spo[29]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000001A000000A4)) 
    \spo[29]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000044)) 
    \spo[29]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000020002)) 
    \spo[29]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[29]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000002600000050)) 
    \spo[29]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00020009)) 
    \spo[29]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[2]),
        .O(\spo[29]_INST_0_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[29]_INST_0_i_5 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[29]_INST_0_i_15_n_0 ),
        .I3(a[6]),
        .I4(\spo[29]_INST_0_i_16_n_0 ),
        .O(\spo[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010200)) 
    \spo[29]_INST_0_i_50 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[29]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000001A00000064)) 
    \spo[29]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[29]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_17_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[19]_INST_0_i_5_n_0 ),
        .O(\spo[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_7 
       (.I0(\spo[29]_INST_0_i_18_n_0 ),
        .I1(\spo[29]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_21_n_0 ),
        .O(\spo[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_8 
       (.I0(\spo[29]_INST_0_i_22_n_0 ),
        .I1(\spo[29]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[29]_INST_0_i_25_n_0 ),
        .O(\spo[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBFFFF88880000)) 
    \spo[29]_INST_0_i_9 
       (.I0(\spo[29]_INST_0_i_26_n_0 ),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[2]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_15_n_0 ),
        .I1(\spo[2]_INST_0_i_22_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_24_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_25_n_0 ),
        .I1(\spo[2]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_22_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_29_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_29_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ));
  MUXF8 \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_30_n_0 ),
        .I1(\spo[2]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_13_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_32_n_0 ),
        .I1(\spo[2]_INST_0_i_33_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_34_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_15 
       (.I0(\spo[2]_INST_0_i_35_n_0 ),
        .I1(\spo[2]_INST_0_i_36_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_37_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_38_n_0 ),
        .O(\spo[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_16 
       (.I0(\spo[2]_INST_0_i_39_n_0 ),
        .I1(\spo[2]_INST_0_i_40_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_41_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_42_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_17 
       (.I0(\spo[2]_INST_0_i_41_n_0 ),
        .I1(\spo[2]_INST_0_i_42_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_43_n_0 ),
        .I4(a[4]),
        .I5(\spo[2]_INST_0_i_44_n_0 ),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  MUXF7 \spo[2]_INST_0_i_18 
       (.I0(\spo[2]_INST_0_i_45_n_0 ),
        .I1(\spo[2]_INST_0_i_46_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_19 
       (.I0(\spo[2]_INST_0_i_47_n_0 ),
        .I1(\spo[2]_INST_0_i_48_n_0 ),
        .O(\spo[2]_INST_0_i_19_n_0 ),
        .S(a[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(a[7]),
        .I2(\spo[2]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  MUXF7 \spo[2]_INST_0_i_20 
       (.I0(\spo[2]_INST_0_i_49_n_0 ),
        .I1(\spo[2]_INST_0_i_50_n_0 ),
        .O(\spo[2]_INST_0_i_20_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_21 
       (.I0(\spo[2]_INST_0_i_51_n_0 ),
        .I1(\spo[2]_INST_0_i_52_n_0 ),
        .O(\spo[2]_INST_0_i_21_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h0000000400000074)) 
    \spo[2]_INST_0_i_22 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h000000E800000010)) 
    \spo[2]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000A900000040)) 
    \spo[2]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000008800000069)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800010004)) 
    \spo[2]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000009000000043)) 
    \spo[2]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000630000002A)) 
    \spo[2]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000B8000000E5)) 
    \spo[2]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_10_n_0 ),
        .I1(\spo[2]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_12_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  MUXF7 \spo[2]_INST_0_i_30 
       (.I0(\spo[2]_INST_0_i_53_n_0 ),
        .I1(\spo[2]_INST_0_i_54_n_0 ),
        .O(\spo[2]_INST_0_i_30_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_31 
       (.I0(\spo[2]_INST_0_i_55_n_0 ),
        .I1(\spo[2]_INST_0_i_56_n_0 ),
        .O(\spo[2]_INST_0_i_31_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h000000760000002E)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0102020200000000)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[1]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000002100000048)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000001F00000020)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000004A00000005)) 
    \spo[2]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000001400000046)) 
    \spo[2]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000004300000000)) 
    \spo[2]_INST_0_i_38 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000001A00000035)) 
    \spo[2]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_14_n_0 ),
        .I1(\spo[2]_INST_0_i_15_n_0 ),
        .I2(a[7]),
        .I3(\spo[2]_INST_0_i_16_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_17_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300080008)) 
    \spo[2]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000005F00000030)) 
    \spo[2]_INST_0_i_41 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0008000B00000000)) 
    \spo[2]_INST_0_i_42 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000055F30)) 
    \spo[2]_INST_0_i_43 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[2]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000008100340088)) 
    \spo[2]_INST_0_i_44 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000CD0000005A)) 
    \spo[2]_INST_0_i_45 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000006A0000008D)) 
    \spo[2]_INST_0_i_46 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DA15)) 
    \spo[2]_INST_0_i_47 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[2]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000003000000004)) 
    \spo[2]_INST_0_i_48 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000005700000018)) 
    \spo[2]_INST_0_i_49 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h280048000800A000)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000003C00000022)) 
    \spo[2]_INST_0_i_50 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000060)) 
    \spo[2]_INST_0_i_51 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00000037000000E0)) 
    \spo[2]_INST_0_i_52 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000000FC000000C8)) 
    \spo[2]_INST_0_i_53 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000008C000000C9)) 
    \spo[2]_INST_0_i_54 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001C57)) 
    \spo[2]_INST_0_i_55 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[2]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F00000084)) 
    \spo[2]_INST_0_i_56 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0000BC000000CC00)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(\spo[6]_INST_0_i_7_n_0 ),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h006000A0)) 
    \spo[2]_INST_0_i_7 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(\spo[6]_INST_0_i_7_n_0 ),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  MUXF8 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_18_n_0 ),
        .I1(\spo[2]_INST_0_i_19_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[5]));
  MUXF8 \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_20_n_0 ),
        .I1(\spo[2]_INST_0_i_21_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ),
        .S(a[5]));
  MUXF7 \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .O(spo[29]),
        .S(a[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_3_n_0 ),
        .I1(a[6]),
        .I2(\spo[31]_INST_0_i_4_n_0 ),
        .I3(a[7]),
        .I4(\spo[31]_INST_0_i_5_n_0 ),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[31]_INST_0_i_10 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[31]_INST_0_i_11 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spo[31]_INST_0_i_12 
       (.I0(a[10]),
        .I1(a[11]),
        .O(\spo[31]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \spo[31]_INST_0_i_13 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .O(\spo[31]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00090000)) 
    \spo[31]_INST_0_i_14 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_6_n_0 ),
        .I1(a[6]),
        .I2(a[7]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[8]),
        .I5(\spo[31]_INST_0_i_8_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050080008)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[3]),
        .I1(\spo[31]_INST_0_i_9_n_0 ),
        .I2(a[2]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_10_n_0 ),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[4]),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_11_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010004100)) 
    \spo[31]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(\spo[31]_INST_0_i_12_n_0 ),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \spo[31]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(a[3]),
        .I2(\spo[31]_INST_0_i_14_n_0 ),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_7_n_0 ),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spo[31]_INST_0_i_7 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEA00AA00AA00AA00)) 
    \spo[31]_INST_0_i_8 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_7_n_0 ),
        .I4(a[4]),
        .I5(a[6]),
        .O(\spo[31]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[31]_INST_0_i_9 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .O(\spo[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_6_n_0 ),
        .I3(a[6]),
        .I4(\spo[3]_INST_0_i_7_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  MUXF7 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_18_n_0 ),
        .I1(\spo[3]_INST_0_i_19_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_20_n_0 ),
        .I1(\spo[3]_INST_0_i_21_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_22_n_0 ),
        .I1(\spo[3]_INST_0_i_23_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0000001D000000E2)) 
    \spo[3]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000000080)) 
    \spo[3]_INST_0_i_14 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080006)) 
    \spo[3]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[15]_INST_0_i_27_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_29_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_20_n_0 ),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_17 
       (.I0(\spo[7]_INST_0_i_16_n_0 ),
        .I1(\spo[15]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(\spo[3]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_18 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(\spo[11]_INST_0_i_23_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_19 
       (.I0(\spo[8]_INST_0_i_24_n_0 ),
        .I1(\spo[8]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[3]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .I4(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_20 
       (.I0(\spo[3]_INST_0_i_26_n_0 ),
        .I1(\spo[3]_INST_0_i_27_n_0 ),
        .I2(a[5]),
        .I3(\spo[3]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_29_n_0 ),
        .O(\spo[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_21 
       (.I0(\spo[3]_INST_0_i_30_n_0 ),
        .I1(\spo[3]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(\spo[3]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_32_n_0 ),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_22 
       (.I0(\spo[3]_INST_0_i_33_n_0 ),
        .I1(\spo[8]_INST_0_i_39_n_0 ),
        .I2(a[5]),
        .I3(\spo[2]_INST_0_i_37_n_0 ),
        .I4(a[4]),
        .I5(\spo[3]_INST_0_i_34_n_0 ),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_23 
       (.I0(\spo[15]_INST_0_i_31_n_0 ),
        .I1(\spo[3]_INST_0_i_35_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_33_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00060003)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000009A000000A7)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000007000000079)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0000000F9)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000080805010009)) 
    \spo[3]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[0]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000090200000800)) 
    \spo[3]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  MUXF8 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_9_n_0 ),
        .I1(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0000001600000037)) 
    \spo[3]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0008000A00000001)) 
    \spo[3]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000001)) 
    \spo[3]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003030100)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0004000500000000)) 
    \spo[3]_INST_0_i_34 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h000E000800080002)) 
    \spo[3]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  MUXF8 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hB8FFB800B8CCB800)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(a[5]),
        .I2(\spo[3]_INST_0_i_14_n_0 ),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EAAA0000)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00006AAA0000)) 
    \spo[3]_INST_0_i_7 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[18]_INST_0_i_34_n_0 ),
        .I1(\spo[3]_INST_0_i_15_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_15_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  MUXF7 \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_16_n_0 ),
        .I1(\spo[3]_INST_0_i_17_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[4]_INST_0_i_4_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(a[5]),
        .I2(a[7]),
        .I3(\spo[6]_INST_0_i_7_n_0 ),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  MUXF7 \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_18_n_0 ),
        .I1(\spo[4]_INST_0_i_19_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_20_n_0 ),
        .I1(\spo[4]_INST_0_i_21_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h000000CD00000010)) 
    \spo[4]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000006800000061)) 
    \spo[4]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000009800000040)) 
    \spo[4]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000D00000032)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00020004000A000A)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000028000000FC)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_18 
       (.I0(\spo[4]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_24_n_0 ),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_23_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_19 
       (.I0(\spo[13]_INST_0_i_10_n_0 ),
        .I1(\spo[4]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_27_n_0 ),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .I5(\spo[10]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_20 
       (.I0(\spo[10]_INST_0_i_28_n_0 ),
        .I1(\spo[10]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_41_n_0 ),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_21 
       (.I0(\spo[4]_INST_0_i_29_n_0 ),
        .I1(\spo[4]_INST_0_i_30_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_27_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_34_n_0 ),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0008000A00000000)) 
    \spo[4]_INST_0_i_22 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000100)) 
    \spo[4]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000004)) 
    \spo[4]_INST_0_i_24 
       (.I0(a[10]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000070000000F7)) 
    \spo[4]_INST_0_i_25 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF00000040)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0000000F7)) 
    \spo[4]_INST_0_i_27 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000003C00000045)) 
    \spo[4]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000D0009000A000A)) 
    \spo[4]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_3 
       (.I0(\spo[10]_INST_0_i_7_n_0 ),
        .I1(\spo[4]_INST_0_i_7_n_0 ),
        .I2(a[7]),
        .I3(\spo[4]_INST_0_i_8_n_0 ),
        .I4(a[6]),
        .I5(\spo[4]_INST_0_i_9_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000900080000)) 
    \spo[4]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  MUXF8 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_10_n_0 ),
        .I1(\spo[4]_INST_0_i_11_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h1DFF000062000000)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_12_n_0 ),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_6 
       (.I0(\spo[4]_INST_0_i_12_n_0 ),
        .I1(\spo[8]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_13_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_14_n_0 ),
        .I1(\spo[4]_INST_0_i_15_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[4]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_29_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_21_n_0 ),
        .I4(a[4]),
        .I5(\spo[10]_INST_0_i_22_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_17_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_28_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(spo[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_5_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_18_n_0 ),
        .I1(\spo[5]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_29_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ));
  MUXF7 \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_20_n_0 ),
        .I1(\spo[5]_INST_0_i_21_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_22_n_0 ),
        .I1(\spo[5]_INST_0_i_23_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h000000A40000001A)) 
    \spo[5]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[5]_INST_0_i_14 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800000000)) 
    \spo[5]_INST_0_i_15 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700000040)) 
    \spo[5]_INST_0_i_16 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000B8000000ED)) 
    \spo[5]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000340000008C)) 
    \spo[5]_INST_0_i_18 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009C77)) 
    \spo[5]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_6_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_6_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \spo[5]_INST_0_i_20 
       (.I0(a[3]),
        .I1(\spo[23]_INST_0_i_9_n_0 ),
        .I2(a[5]),
        .I3(\spo[5]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[5]_INST_0_i_25_n_0 ),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8BBB333388880000)) 
    \spo[5]_INST_0_i_21 
       (.I0(\spo[13]_INST_0_i_10_n_0 ),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[31]_INST_0_i_11_n_0 ),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_22 
       (.I0(\spo[5]_INST_0_i_26_n_0 ),
        .I1(\spo[5]_INST_0_i_27_n_0 ),
        .I2(a[5]),
        .I3(\spo[5]_INST_0_i_28_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_23 
       (.I0(\spo[11]_INST_0_i_30_n_0 ),
        .I1(\spo[5]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[5]_INST_0_i_30_n_0 ),
        .I4(a[4]),
        .I5(\spo[5]_INST_0_i_31_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000017)) 
    \spo[5]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[10]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000B0C)) 
    \spo[5]_INST_0_i_25 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000380000007F)) 
    \spo[5]_INST_0_i_26 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007E95)) 
    \spo[5]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000007600000046)) 
    \spo[5]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000C9000000B2)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_8_n_0 ),
        .I1(\spo[11]_INST_0_i_8_n_0 ),
        .I2(a[7]),
        .I3(\spo[5]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[5]_INST_0_i_10_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000A50000009C)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000003D000000EA)) 
    \spo[5]_INST_0_i_31 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  MUXF8 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_11_n_0 ),
        .I1(\spo[5]_INST_0_i_12_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_11_n_0 ),
        .I1(\spo[5]_INST_0_i_13_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_15_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[6]_INST_0_i_17_n_0 ),
        .I1(\spo[5]_INST_0_i_14_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_16_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_18_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_15_n_0 ),
        .I1(\spo[11]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[11]_INST_0_i_21_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_16_n_0 ),
        .I1(\spo[7]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[5]_INST_0_i_17_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[6]_INST_0_i_4_n_0 ),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'hB8FFB800B8CCB800)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_6_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  MUXF7 \spo[6]_INST_0_i_10 
       (.I0(\spo[6]_INST_0_i_20_n_0 ),
        .I1(\spo[6]_INST_0_i_21_n_0 ),
        .O(\spo[6]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_11 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_23_n_0 ),
        .O(\spo[6]_INST_0_i_11_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_12 
       (.I0(\spo[6]_INST_0_i_24_n_0 ),
        .I1(\spo[31]_INST_0_i_11_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_25_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_26_n_0 ),
        .O(\spo[6]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \spo[6]_INST_0_i_13 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000000024)) 
    \spo[6]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000006800000021)) 
    \spo[6]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000004000000D2)) 
    \spo[6]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0101000200000000)) 
    \spo[6]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000080002)) 
    \spo[6]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000003600000065)) 
    \spo[6]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[6]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_6_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_9_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_20 
       (.I0(\spo[14]_INST_0_i_26_n_0 ),
        .I1(\spo[15]_INST_0_i_28_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_34_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_35_n_0 ),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_21 
       (.I0(\spo[14]_INST_0_i_23_n_0 ),
        .I1(\spo[14]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_25_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_26_n_0 ),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_22 
       (.I0(\spo[27]_INST_0_i_22_n_0 ),
        .I1(\spo[2]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[14]_INST_0_i_22_n_0 ),
        .O(\spo[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_23 
       (.I0(\spo[11]_INST_0_i_18_n_0 ),
        .I1(\spo[11]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[9]_INST_0_i_17_n_0 ),
        .O(\spo[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \spo[6]_INST_0_i_24 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000037)) 
    \spo[6]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[10]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000090208000002)) 
    \spo[6]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  MUXF8 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(\spo[6]_INST_0_i_11_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_13_n_0 ),
        .I1(\spo[8]_INST_0_i_14_n_0 ),
        .I2(a[7]),
        .I3(\spo[14]_INST_0_i_14_n_0 ),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_12_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \spo[6]_INST_0_i_5 
       (.I0(\spo[19]_INST_0_i_9_n_0 ),
        .I1(a[3]),
        .I2(\spo[6]_INST_0_i_13_n_0 ),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000080000000)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spo[6]_INST_0_i_7 
       (.I0(a[11]),
        .I1(a[10]),
        .I2(a[0]),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_8 
       (.I0(\spo[6]_INST_0_i_14_n_0 ),
        .I1(\spo[8]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[6]_INST_0_i_15_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_9 
       (.I0(\spo[6]_INST_0_i_17_n_0 ),
        .I1(\spo[6]_INST_0_i_18_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_16_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_19_n_0 ),
        .O(\spo[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_1_n_0 ),
        .I2(a[9]),
        .I3(\spo[7]_INST_0_i_2_n_0 ),
        .I4(a[8]),
        .I5(\spo[7]_INST_0_i_3_n_0 ),
        .O(spo[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_6_n_0 ),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_4_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_5_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_10 
       (.I0(\spo[8]_INST_0_i_38_n_0 ),
        .I1(\spo[8]_INST_0_i_39_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_40_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000C000000080000)) 
    \spo[7]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000003000000040)) 
    \spo[7]_INST_0_i_12 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001020202)) 
    \spo[7]_INST_0_i_13 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000040000003C)) 
    \spo[7]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000003300000076)) 
    \spo[7]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000D000100020008)) 
    \spo[7]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BCBD)) 
    \spo[7]_INST_0_i_17 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000088)) 
    \spo[7]_INST_0_i_18 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000AE00000001)) 
    \spo[7]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_9_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .I2(a[7]),
        .I3(\spo[7]_INST_0_i_7_n_0 ),
        .I4(a[6]),
        .I5(\spo[7]_INST_0_i_8_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F000000B4)) 
    \spo[7]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004595)) 
    \spo[7]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[10]),
        .I5(a[11]),
        .O(\spo[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0100030100000000)) 
    \spo[7]_INST_0_i_22 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_9_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_10_n_0 ),
        .I3(a[7]),
        .I4(\spo[13]_INST_0_i_8_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_11_n_0 ),
        .I1(\spo[21]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[7]_INST_0_i_12_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_13_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_20_n_0 ),
        .I1(\spo[7]_INST_0_i_14_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_23_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[28]_INST_0_i_24_n_0 ),
        .I1(\spo[28]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_15_n_0 ),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_16_n_0 ),
        .I1(\spo[7]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_8 
       (.I0(\spo[7]_INST_0_i_18_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[7]_INST_0_i_19_n_0 ),
        .I4(a[4]),
        .I5(\spo[7]_INST_0_i_20_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_9 
       (.I0(\spo[7]_INST_0_i_21_n_0 ),
        .I1(\spo[28]_INST_0_i_35_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_36_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_37_n_0 ),
        .O(\spo[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .I2(a[9]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[8]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h888888B888888888)) 
    \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_10 
       (.I0(\spo[28]_INST_0_i_24_n_0 ),
        .I1(\spo[28]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_28_n_0 ),
        .O(\spo[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_11 
       (.I0(\spo[8]_INST_0_i_29_n_0 ),
        .I1(\spo[8]_INST_0_i_30_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_31_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_32_n_0 ),
        .O(\spo[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_33_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_34_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_35_n_0 ),
        .O(\spo[8]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_13 
       (.I0(\spo[8]_INST_0_i_36_n_0 ),
        .I1(\spo[8]_INST_0_i_37_n_0 ),
        .I2(a[5]),
        .I3(\spo[28]_INST_0_i_36_n_0 ),
        .I4(a[4]),
        .I5(\spo[28]_INST_0_i_37_n_0 ),
        .O(\spo[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_14 
       (.I0(\spo[8]_INST_0_i_38_n_0 ),
        .I1(\spo[8]_INST_0_i_39_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_40_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_41_n_0 ),
        .O(\spo[8]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000340000004A)) 
    \spo[8]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000000004)) 
    \spo[8]_INST_0_i_16 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000008400000034)) 
    \spo[8]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000007200000081)) 
    \spo[8]_INST_0_i_18 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000003500000042)) 
    \spo[8]_INST_0_i_19 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_6_n_0 ),
        .I1(a[7]),
        .I2(\spo[8]_INST_0_i_7_n_0 ),
        .I3(a[6]),
        .I4(\spo[8]_INST_0_i_8_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000009600000088)) 
    \spo[8]_INST_0_i_20 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000240000007A)) 
    \spo[8]_INST_0_i_21 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000032000000C3)) 
    \spo[8]_INST_0_i_22 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000005700000038)) 
    \spo[8]_INST_0_i_23 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000009C000000A0)) 
    \spo[8]_INST_0_i_24 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000270000006A)) 
    \spo[8]_INST_0_i_25 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000E80000001C)) 
    \spo[8]_INST_0_i_26 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000A900000048)) 
    \spo[8]_INST_0_i_27 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000004000A000A)) 
    \spo[8]_INST_0_i_28 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000D700000074)) 
    \spo[8]_INST_0_i_29 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_9_n_0 ),
        .I1(\spo[8]_INST_0_i_10_n_0 ),
        .I2(a[7]),
        .I3(\spo[8]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_12_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008000C00020000)) 
    \spo[8]_INST_0_i_30 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000003C0000004F)) 
    \spo[8]_INST_0_i_31 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC000000F8)) 
    \spo[8]_INST_0_i_32 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F00000088)) 
    \spo[8]_INST_0_i_33 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000008C00000089)) 
    \spo[8]_INST_0_i_34 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0006000A000A0008)) 
    \spo[8]_INST_0_i_35 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00050009000A000A)) 
    \spo[8]_INST_0_i_36 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0002000800080004)) 
    \spo[8]_INST_0_i_37 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000000440000007C)) 
    \spo[8]_INST_0_i_38 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000006A00000015)) 
    \spo[8]_INST_0_i_39 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_13_n_0 ),
        .I1(a[6]),
        .I2(\spo[8]_INST_0_i_14_n_0 ),
        .I3(a[7]),
        .I4(\spo[13]_INST_0_i_8_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000003400000046)) 
    \spo[8]_INST_0_i_40 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000004300000004)) 
    \spo[8]_INST_0_i_41 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \spo[8]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_15_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(a[1]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_16_n_0 ),
        .I1(\spo[8]_INST_0_i_17_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_18_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_19_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_20_n_0 ),
        .I1(\spo[8]_INST_0_i_21_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_22_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_23_n_0 ),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_9 
       (.I0(\spo[8]_INST_0_i_24_n_0 ),
        .I1(\spo[8]_INST_0_i_25_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_26_n_0 ),
        .I4(a[4]),
        .I5(\spo[8]_INST_0_i_27_n_0 ),
        .O(\spo[8]_INST_0_i_9_n_0 ));
  MUXF8 \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[9]));
  MUXF7 \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_3_n_0 ),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_15_n_0 ),
        .I1(\spo[11]_INST_0_i_19_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_20_n_0 ),
        .I4(a[4]),
        .I5(\spo[9]_INST_0_i_17_n_0 ),
        .O(\spo[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_11 
       (.I0(\spo[27]_INST_0_i_22_n_0 ),
        .I1(\spo[2]_INST_0_i_26_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_24_n_0 ),
        .I4(a[4]),
        .I5(\spo[15]_INST_0_i_22_n_0 ),
        .O(\spo[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_12 
       (.I0(\spo[7]_INST_0_i_11_n_0 ),
        .I1(\spo[21]_INST_0_i_29_n_0 ),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_17_n_0 ),
        .I4(a[4]),
        .I5(\spo[9]_INST_0_i_18_n_0 ),
        .O(\spo[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000B40000004A)) 
    \spo[9]_INST_0_i_13 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[10]),
        .I4(a[11]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000000008000C)) 
    \spo[9]_INST_0_i_14 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[11]),
        .I3(a[10]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000001E00000035)) 
    \spo[9]_INST_0_i_15 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[11]),
        .I4(a[10]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    \spo[9]_INST_0_i_16 
       (.I0(a[10]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[11]),
        .I4(a[1]),
        .O(\spo[9]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0002020000000000)) 
    \spo[9]_INST_0_i_17 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001020100)) 
    \spo[9]_INST_0_i_18 
       (.I0(a[1]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_18_n_0 ));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_3 
       (.I0(\spo[15]_INST_0_i_13_n_0 ),
        .I1(\spo[9]_INST_0_i_7_n_0 ),
        .I2(a[7]),
        .I3(\spo[9]_INST_0_i_8_n_0 ),
        .I4(a[6]),
        .I5(\spo[9]_INST_0_i_9_n_0 ),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0_i_4 
       (.I0(\spo[9]_INST_0_i_10_n_0 ),
        .I1(\spo[9]_INST_0_i_11_n_0 ),
        .I2(a[7]),
        .I3(\spo[15]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[15]_INST_0_i_12_n_0 ),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[9]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_6_n_0 ),
        .I1(a[7]),
        .I2(\spo[9]_INST_0_i_12_n_0 ),
        .I3(a[6]),
        .I4(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \spo[9]_INST_0_i_6 
       (.I0(\spo[9]_INST_0_i_13_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \spo[9]_INST_0_i_7 
       (.I0(\spo[14]_INST_0_i_31_n_0 ),
        .I1(a[5]),
        .I2(\spo[14]_INST_0_i_32_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[9]_INST_0_i_14_n_0 ),
        .O(\spo[9]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \spo[9]_INST_0_i_8 
       (.I0(\spo[9]_INST_0_i_15_n_0 ),
        .I1(a[4]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_11_n_0 ),
        .O(\spo[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \spo[9]_INST_0_i_9 
       (.I0(a[5]),
        .I1(\spo[31]_INST_0_i_11_n_0 ),
        .I2(a[3]),
        .I3(\spo[9]_INST_0_i_16_n_0 ),
        .I4(a[4]),
        .I5(\spo[6]_INST_0_i_26_n_0 ),
        .O(\spo[9]_INST_0_i_9_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
