// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Apr 26 23:26:03 2018
// Host        : SHUN-LAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Projects/CompArch/CPU-Nyarlathotep/CPU-Nyarlathotep.sim/sim_1/synth/timing/cpu_div_tb_time_synth.v
// Design      : cpu_div
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* M = "5" *) (* MULTIPLE = "10" *) 
(* NotValidForBitStream *)
module cpu_div
   (clk_in,
    rst,
    clk_out);
  input clk_in;
  input rst;
  output clk_out;

  wire clk_in;
  wire clk_in_IBUF;
  wire clk_in_IBUF_BUFG;
  wire clk_out;
  wire clk_out_OBUF;
  wire clk_out_r_i_1_n_0;
  wire clk_out_r_i_2_n_0;
  wire clk_out_r_i_3_n_0;
  wire clk_out_r_i_4_n_0;
  wire clk_out_r_i_5_n_0;
  wire clk_out_r_i_6_n_0;
  wire clk_out_r_i_7_n_0;
  wire [3:0]counter1;
  wire [32:1]counter10;
  wire \counter1[0]_i_1_n_0 ;
  wire \counter1[10]_i_1_n_0 ;
  wire \counter1[11]_i_1_n_0 ;
  wire \counter1[12]_i_1_n_0 ;
  wire \counter1[13]_i_1_n_0 ;
  wire \counter1[14]_i_1_n_0 ;
  wire \counter1[15]_i_1_n_0 ;
  wire \counter1[16]_i_1_n_0 ;
  wire \counter1[17]_i_1_n_0 ;
  wire \counter1[18]_i_1_n_0 ;
  wire \counter1[19]_i_1_n_0 ;
  wire \counter1[1]_i_1_n_0 ;
  wire \counter1[20]_i_1_n_0 ;
  wire \counter1[21]_i_1_n_0 ;
  wire \counter1[22]_i_1_n_0 ;
  wire \counter1[23]_i_1_n_0 ;
  wire \counter1[24]_i_1_n_0 ;
  wire \counter1[25]_i_1_n_0 ;
  wire \counter1[26]_i_1_n_0 ;
  wire \counter1[27]_i_1_n_0 ;
  wire \counter1[28]_i_1_n_0 ;
  wire \counter1[29]_i_1_n_0 ;
  wire \counter1[2]_i_1_n_0 ;
  wire \counter1[30]_i_1_n_0 ;
  wire \counter1[31]_i_1_n_0 ;
  wire \counter1[32]_i_10_n_0 ;
  wire \counter1[32]_i_11_n_0 ;
  wire \counter1[32]_i_12_n_0 ;
  wire \counter1[32]_i_13_n_0 ;
  wire \counter1[32]_i_1_n_0 ;
  wire \counter1[32]_i_3_n_0 ;
  wire \counter1[32]_i_8_n_0 ;
  wire \counter1[32]_i_9_n_0 ;
  wire \counter1[3]_i_1_n_0 ;
  wire \counter1[4]_i_1_n_0 ;
  wire \counter1[5]_i_1_n_0 ;
  wire \counter1[6]_i_1_n_0 ;
  wire \counter1[7]_i_1_n_0 ;
  wire \counter1[8]_i_1_n_0 ;
  wire \counter1[9]_i_1_n_0 ;
  wire \counter1_reg[12]_i_2_n_0 ;
  wire \counter1_reg[12]_i_2_n_1 ;
  wire \counter1_reg[12]_i_2_n_2 ;
  wire \counter1_reg[12]_i_2_n_3 ;
  wire \counter1_reg[16]_i_2_n_0 ;
  wire \counter1_reg[16]_i_2_n_1 ;
  wire \counter1_reg[16]_i_2_n_2 ;
  wire \counter1_reg[16]_i_2_n_3 ;
  wire \counter1_reg[20]_i_2_n_0 ;
  wire \counter1_reg[20]_i_2_n_1 ;
  wire \counter1_reg[20]_i_2_n_2 ;
  wire \counter1_reg[20]_i_2_n_3 ;
  wire \counter1_reg[24]_i_2_n_0 ;
  wire \counter1_reg[24]_i_2_n_1 ;
  wire \counter1_reg[24]_i_2_n_2 ;
  wire \counter1_reg[24]_i_2_n_3 ;
  wire \counter1_reg[28]_i_2_n_0 ;
  wire \counter1_reg[28]_i_2_n_1 ;
  wire \counter1_reg[28]_i_2_n_2 ;
  wire \counter1_reg[28]_i_2_n_3 ;
  wire \counter1_reg[32]_i_2_n_1 ;
  wire \counter1_reg[32]_i_2_n_2 ;
  wire \counter1_reg[32]_i_2_n_3 ;
  wire \counter1_reg[4]_i_2_n_0 ;
  wire \counter1_reg[4]_i_2_n_1 ;
  wire \counter1_reg[4]_i_2_n_2 ;
  wire \counter1_reg[4]_i_2_n_3 ;
  wire \counter1_reg[8]_i_2_n_0 ;
  wire \counter1_reg[8]_i_2_n_1 ;
  wire \counter1_reg[8]_i_2_n_2 ;
  wire \counter1_reg[8]_i_2_n_3 ;
  wire \counter1_reg_n_0_[10] ;
  wire \counter1_reg_n_0_[11] ;
  wire \counter1_reg_n_0_[12] ;
  wire \counter1_reg_n_0_[13] ;
  wire \counter1_reg_n_0_[14] ;
  wire \counter1_reg_n_0_[15] ;
  wire \counter1_reg_n_0_[16] ;
  wire \counter1_reg_n_0_[17] ;
  wire \counter1_reg_n_0_[18] ;
  wire \counter1_reg_n_0_[19] ;
  wire \counter1_reg_n_0_[20] ;
  wire \counter1_reg_n_0_[21] ;
  wire \counter1_reg_n_0_[22] ;
  wire \counter1_reg_n_0_[23] ;
  wire \counter1_reg_n_0_[24] ;
  wire \counter1_reg_n_0_[25] ;
  wire \counter1_reg_n_0_[26] ;
  wire \counter1_reg_n_0_[27] ;
  wire \counter1_reg_n_0_[28] ;
  wire \counter1_reg_n_0_[29] ;
  wire \counter1_reg_n_0_[30] ;
  wire \counter1_reg_n_0_[31] ;
  wire \counter1_reg_n_0_[4] ;
  wire \counter1_reg_n_0_[5] ;
  wire \counter1_reg_n_0_[6] ;
  wire \counter1_reg_n_0_[7] ;
  wire \counter1_reg_n_0_[8] ;
  wire \counter1_reg_n_0_[9] ;
  wire p_0_in0;
  wire rst;
  wire rst_IBUF;
  wire [3:3]\NLW_counter1_reg[32]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("cpu_div_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  OBUF clk_out_OBUF_inst
       (.I(clk_out_OBUF),
        .O(clk_out));
  LUT6 #(
    .INIT(64'h00000000000056AA)) 
    clk_out_r_i_1
       (.I0(clk_out_OBUF),
        .I1(clk_out_r_i_2_n_0),
        .I2(clk_out_r_i_3_n_0),
        .I3(clk_out_r_i_4_n_0),
        .I4(clk_out_r_i_5_n_0),
        .I5(rst_IBUF),
        .O(clk_out_r_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    clk_out_r_i_2
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[2]),
        .O(clk_out_r_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    clk_out_r_i_3
       (.I0(counter1[0]),
        .I1(counter1[1]),
        .I2(counter1[2]),
        .O(clk_out_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    clk_out_r_i_4
       (.I0(counter1[3]),
        .I1(\counter1[32]_i_10_n_0 ),
        .I2(clk_out_r_i_6_n_0),
        .O(clk_out_r_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    clk_out_r_i_5
       (.I0(counter1[3]),
        .I1(counter1[2]),
        .I2(counter1[1]),
        .I3(\counter1[32]_i_10_n_0 ),
        .I4(clk_out_r_i_6_n_0),
        .O(clk_out_r_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_out_r_i_6
       (.I0(\counter1[32]_i_11_n_0 ),
        .I1(clk_out_r_i_7_n_0),
        .I2(\counter1[32]_i_8_n_0 ),
        .I3(p_0_in0),
        .I4(\counter1_reg_n_0_[19] ),
        .I5(\counter1_reg_n_0_[26] ),
        .O(clk_out_r_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_r_i_7
       (.I0(\counter1_reg_n_0_[11] ),
        .I1(\counter1_reg_n_0_[14] ),
        .I2(\counter1_reg_n_0_[18] ),
        .I3(\counter1_reg_n_0_[29] ),
        .O(clk_out_r_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_r_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_r_i_1_n_0),
        .Q(clk_out_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00011111)) 
    \counter1[0]_i_1 
       (.I0(counter1[0]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[1]),
        .I3(counter1[2]),
        .I4(counter1[3]),
        .O(\counter1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[10]_i_1 
       (.I0(counter10[10]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[11]_i_1 
       (.I0(counter10[11]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[12]_i_1 
       (.I0(counter10[12]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[13]_i_1 
       (.I0(counter10[13]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[14]_i_1 
       (.I0(counter10[14]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[15]_i_1 
       (.I0(counter10[15]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[16]_i_1 
       (.I0(counter10[16]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[17]_i_1 
       (.I0(counter10[17]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[18]_i_1 
       (.I0(counter10[18]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[19]_i_1 
       (.I0(counter10[19]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001555400000400)) 
    \counter1[1]_i_1 
       (.I0(\counter1[32]_i_3_n_0 ),
        .I1(counter1[0]),
        .I2(counter1[1]),
        .I3(counter1[2]),
        .I4(counter1[3]),
        .I5(counter10[1]),
        .O(\counter1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[20]_i_1 
       (.I0(counter10[20]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[21]_i_1 
       (.I0(counter10[21]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[22]_i_1 
       (.I0(counter10[22]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[23]_i_1 
       (.I0(counter10[23]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[24]_i_1 
       (.I0(counter10[24]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[25]_i_1 
       (.I0(counter10[25]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[26]_i_1 
       (.I0(counter10[26]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[27]_i_1 
       (.I0(counter10[27]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[28]_i_1 
       (.I0(counter10[28]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[29]_i_1 
       (.I0(counter10[29]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001555400000400)) 
    \counter1[2]_i_1 
       (.I0(\counter1[32]_i_3_n_0 ),
        .I1(counter1[0]),
        .I2(counter1[1]),
        .I3(counter1[2]),
        .I4(counter1[3]),
        .I5(counter10[2]),
        .O(\counter1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[30]_i_1 
       (.I0(counter10[30]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[31]_i_1 
       (.I0(counter10[31]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[32]_i_1 
       (.I0(counter10[32]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter1[32]_i_10 
       (.I0(\counter1[32]_i_12_n_0 ),
        .I1(\counter1[32]_i_13_n_0 ),
        .I2(\counter1_reg_n_0_[13] ),
        .I3(\counter1_reg_n_0_[16] ),
        .I4(\counter1_reg_n_0_[27] ),
        .I5(\counter1_reg_n_0_[30] ),
        .O(\counter1[32]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter1[32]_i_11 
       (.I0(\counter1_reg_n_0_[17] ),
        .I1(\counter1_reg_n_0_[22] ),
        .I2(\counter1_reg_n_0_[20] ),
        .I3(\counter1_reg_n_0_[21] ),
        .O(\counter1[32]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter1[32]_i_12 
       (.I0(\counter1_reg_n_0_[25] ),
        .I1(\counter1_reg_n_0_[4] ),
        .I2(\counter1_reg_n_0_[5] ),
        .I3(\counter1_reg_n_0_[24] ),
        .I4(\counter1_reg_n_0_[8] ),
        .I5(\counter1_reg_n_0_[7] ),
        .O(\counter1[32]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter1[32]_i_13 
       (.I0(\counter1_reg_n_0_[12] ),
        .I1(\counter1_reg_n_0_[31] ),
        .I2(\counter1_reg_n_0_[15] ),
        .I3(\counter1_reg_n_0_[23] ),
        .O(\counter1[32]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter1[32]_i_3 
       (.I0(\counter1_reg_n_0_[26] ),
        .I1(\counter1_reg_n_0_[19] ),
        .I2(p_0_in0),
        .I3(\counter1[32]_i_8_n_0 ),
        .I4(\counter1[32]_i_9_n_0 ),
        .I5(\counter1[32]_i_10_n_0 ),
        .O(\counter1[32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter1[32]_i_8 
       (.I0(\counter1_reg_n_0_[9] ),
        .I1(\counter1_reg_n_0_[6] ),
        .I2(\counter1_reg_n_0_[10] ),
        .I3(\counter1_reg_n_0_[28] ),
        .O(\counter1[32]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter1[32]_i_9 
       (.I0(\counter1_reg_n_0_[29] ),
        .I1(\counter1_reg_n_0_[18] ),
        .I2(\counter1_reg_n_0_[14] ),
        .I3(\counter1_reg_n_0_[11] ),
        .I4(\counter1[32]_i_11_n_0 ),
        .O(\counter1[32]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[3]_i_1 
       (.I0(counter10[3]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[4]_i_1 
       (.I0(counter10[4]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[5]_i_1 
       (.I0(counter10[5]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[6]_i_1 
       (.I0(counter10[6]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[7]_i_1 
       (.I0(counter10[7]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[8]_i_1 
       (.I0(counter10[8]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000222022220)) 
    \counter1[9]_i_1 
       (.I0(counter10[9]),
        .I1(\counter1[32]_i_3_n_0 ),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[2]),
        .I5(counter1[3]),
        .O(\counter1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[0]_i_1_n_0 ),
        .Q(counter1[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[10]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[11]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[11] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[12]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[12] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[12]_i_2 
       (.CI(\counter1_reg[8]_i_2_n_0 ),
        .CO({\counter1_reg[12]_i_2_n_0 ,\counter1_reg[12]_i_2_n_1 ,\counter1_reg[12]_i_2_n_2 ,\counter1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[12:9]),
        .S({\counter1_reg_n_0_[12] ,\counter1_reg_n_0_[11] ,\counter1_reg_n_0_[10] ,\counter1_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[13]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[13] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[14]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[14] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[15]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[15] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[16] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[16]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[16] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[16]_i_2 
       (.CI(\counter1_reg[12]_i_2_n_0 ),
        .CO({\counter1_reg[16]_i_2_n_0 ,\counter1_reg[16]_i_2_n_1 ,\counter1_reg[16]_i_2_n_2 ,\counter1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[16:13]),
        .S({\counter1_reg_n_0_[16] ,\counter1_reg_n_0_[15] ,\counter1_reg_n_0_[14] ,\counter1_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[17] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[17]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[17] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[18] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[18]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[18] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[19] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[19]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[19] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[1]_i_1_n_0 ),
        .Q(counter1[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[20] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[20]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[20] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[20]_i_2 
       (.CI(\counter1_reg[16]_i_2_n_0 ),
        .CO({\counter1_reg[20]_i_2_n_0 ,\counter1_reg[20]_i_2_n_1 ,\counter1_reg[20]_i_2_n_2 ,\counter1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[20:17]),
        .S({\counter1_reg_n_0_[20] ,\counter1_reg_n_0_[19] ,\counter1_reg_n_0_[18] ,\counter1_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[21] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[21]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[21] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[22] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[22]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[22] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[23] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[23]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[23] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[24] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[24]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[24] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[24]_i_2 
       (.CI(\counter1_reg[20]_i_2_n_0 ),
        .CO({\counter1_reg[24]_i_2_n_0 ,\counter1_reg[24]_i_2_n_1 ,\counter1_reg[24]_i_2_n_2 ,\counter1_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[24:21]),
        .S({\counter1_reg_n_0_[24] ,\counter1_reg_n_0_[23] ,\counter1_reg_n_0_[22] ,\counter1_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[25] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[25]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[25] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[26] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[26]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[26] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[27] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[27]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[27] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[28] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[28]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[28] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[28]_i_2 
       (.CI(\counter1_reg[24]_i_2_n_0 ),
        .CO({\counter1_reg[28]_i_2_n_0 ,\counter1_reg[28]_i_2_n_1 ,\counter1_reg[28]_i_2_n_2 ,\counter1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[28:25]),
        .S({\counter1_reg_n_0_[28] ,\counter1_reg_n_0_[27] ,\counter1_reg_n_0_[26] ,\counter1_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[29] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[29]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[29] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[2]_i_1_n_0 ),
        .Q(counter1[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[30] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[30]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[30] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[31] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[31]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[31] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[32] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[32]_i_1_n_0 ),
        .Q(p_0_in0),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[32]_i_2 
       (.CI(\counter1_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter1_reg[32]_i_2_CO_UNCONNECTED [3],\counter1_reg[32]_i_2_n_1 ,\counter1_reg[32]_i_2_n_2 ,\counter1_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[32:29]),
        .S({p_0_in0,\counter1_reg_n_0_[31] ,\counter1_reg_n_0_[30] ,\counter1_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[3]_i_1_n_0 ),
        .Q(counter1[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[4]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[4] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter1_reg[4]_i_2_n_0 ,\counter1_reg[4]_i_2_n_1 ,\counter1_reg[4]_i_2_n_2 ,\counter1_reg[4]_i_2_n_3 }),
        .CYINIT(counter1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[4:1]),
        .S({\counter1_reg_n_0_[4] ,counter1[3:1]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[5]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[5] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[6]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[7]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[8]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[8] ),
        .R(rst_IBUF));
  CARRY4 \counter1_reg[8]_i_2 
       (.CI(\counter1_reg[4]_i_2_n_0 ),
        .CO({\counter1_reg[8]_i_2_n_0 ,\counter1_reg[8]_i_2_n_1 ,\counter1_reg[8]_i_2_n_2 ,\counter1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter10[8:5]),
        .S({\counter1_reg_n_0_[8] ,\counter1_reg_n_0_[7] ,\counter1_reg_n_0_[6] ,\counter1_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter1[9]_i_1_n_0 ),
        .Q(\counter1_reg_n_0_[9] ),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
