// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri May 15 19:11:03 2020
// Host        : DESKTOP-AJBN53O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_red_sim_netlist.v
// Design      : rom_red
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_red,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "13" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.217811 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom_red.mem" *) 
  (* C_INIT_FILE_NAME = "rom_red.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "40000" *) 
  (* C_READ_DEPTH_B = "40000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "40000" *) 
  (* C_WRITE_DEPTH_B = "40000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [8:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [8:0]ena_array;

  LUT4 #(
    .INIT(16'h0001)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__0
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[0]),
        .I3(addra[1]),
        .O(ena_array[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__1
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__2
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT__3
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT__4
       (.I0(addra[3]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[1]),
        .O(ena_array[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    ENOUT__5
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[6]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__6
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT__7
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [9:0]ena_array;
  wire ram_douta;
  wire ram_ena__0_n_0;
  wire ram_ena_n_0;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array({ena_array[9:4],ena_array[2:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .DOPADOP(\ramloop[14].ram.r_n_8 ),
        .addra(addra[15:12]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (\ramloop[1].ram.r_n_0 ),
        .\douta[0]_0 (ram_douta),
        .\douta[10] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[10]_0 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[10]_1 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[10]_2 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[10]_3 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[10]_4 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[10]_5 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[10]_6 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[10]_7 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[11] (\ramloop[13].ram.r_n_8 ),
        .\douta[11]_0 (\ramloop[8].ram.r_n_8 ),
        .\douta[11]_1 (\ramloop[7].ram.r_n_8 ),
        .\douta[11]_2 (\ramloop[6].ram.r_n_8 ),
        .\douta[11]_3 (\ramloop[5].ram.r_n_8 ),
        .\douta[11]_4 (\ramloop[12].ram.r_n_8 ),
        .\douta[11]_5 (\ramloop[11].ram.r_n_8 ),
        .\douta[11]_6 (\ramloop[10].ram.r_n_8 ),
        .\douta[11]_7 (\ramloop[9].ram.r_n_8 ),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\douta[2]_0 (\ramloop[4].ram.r_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[15]),
        .O(ram_ena_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    ram_ena__0
       (.I0(addra[14]),
        .I1(addra[15]),
        .O(ram_ena__0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[5]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[6]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[7]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[13].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.DOADO({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .DOPADOP(\ramloop[14].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (ram_ena__0_n_0),
        .addra(addra[13:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[4].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[4]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    DOADO,
    \douta[10] ,
    DOPADOP,
    \douta[11] ,
    addra,
    clka,
    \douta[0] ,
    \douta[0]_0 ,
    \douta[2] ,
    \douta[1] ,
    \douta[2]_0 ,
    \douta[10]_0 ,
    \douta[10]_1 ,
    \douta[10]_2 ,
    \douta[10]_3 ,
    \douta[10]_4 ,
    \douta[10]_5 ,
    \douta[10]_6 ,
    \douta[10]_7 ,
    \douta[11]_0 ,
    \douta[11]_1 ,
    \douta[11]_2 ,
    \douta[11]_3 ,
    \douta[11]_4 ,
    \douta[11]_5 ,
    \douta[11]_6 ,
    \douta[11]_7 );
  output [11:0]douta;
  input [7:0]DOADO;
  input [7:0]\douta[10] ;
  input [0:0]DOPADOP;
  input [0:0]\douta[11] ;
  input [3:0]addra;
  input clka;
  input [0:0]\douta[0] ;
  input [0:0]\douta[0]_0 ;
  input [1:0]\douta[2] ;
  input [0:0]\douta[1] ;
  input [0:0]\douta[2]_0 ;
  input [7:0]\douta[10]_0 ;
  input [7:0]\douta[10]_1 ;
  input [7:0]\douta[10]_2 ;
  input [7:0]\douta[10]_3 ;
  input [7:0]\douta[10]_4 ;
  input [7:0]\douta[10]_5 ;
  input [7:0]\douta[10]_6 ;
  input [7:0]\douta[10]_7 ;
  input [0:0]\douta[11]_0 ;
  input [0:0]\douta[11]_1 ;
  input [0:0]\douta[11]_2 ;
  input [0:0]\douta[11]_3 ;
  input [0:0]\douta[11]_4 ;
  input [0:0]\douta[11]_5 ;
  input [0:0]\douta[11]_6 ;
  input [0:0]\douta[11]_7 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [0:0]\douta[0] ;
  wire [0:0]\douta[0]_0 ;
  wire [7:0]\douta[10] ;
  wire [7:0]\douta[10]_0 ;
  wire [7:0]\douta[10]_1 ;
  wire [7:0]\douta[10]_2 ;
  wire [7:0]\douta[10]_3 ;
  wire [7:0]\douta[10]_4 ;
  wire [7:0]\douta[10]_5 ;
  wire [7:0]\douta[10]_6 ;
  wire [7:0]\douta[10]_7 ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire [0:0]\douta[11] ;
  wire [0:0]\douta[11]_0 ;
  wire [0:0]\douta[11]_1 ;
  wire [0:0]\douta[11]_2 ;
  wire [0:0]\douta[11]_3 ;
  wire [0:0]\douta[11]_4 ;
  wire [0:0]\douta[11]_5 ;
  wire [0:0]\douta[11]_6 ;
  wire [0:0]\douta[11]_7 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire [0:0]\douta[1] ;
  wire [1:0]\douta[2] ;
  wire [0:0]\douta[2]_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(\douta[0] ),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[3]),
        .I3(\douta[0]_0 ),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[10]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [7]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_2 
       (.I0(\douta[10]_4 [7]),
        .I1(\douta[10]_5 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [7]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_3 
       (.I0(\douta[10]_0 [7]),
        .I1(\douta[10]_1 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [7]),
        .O(\douta[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[11]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOPADOP),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[11] ),
        .I4(sel_pipe_d1[2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_2 
       (.I0(\douta[11]_4 ),
        .I1(\douta[11]_5 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_6 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_7 ),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_3 
       (.I0(\douta[11]_0 ),
        .I1(\douta[11]_1 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[11]_2 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_3 ),
        .O(\douta[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[2] [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[1] ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\douta[2] [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\douta[2]_0 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[3]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [0]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_2 
       (.I0(\douta[10]_4 [0]),
        .I1(\douta[10]_5 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [0]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_3 
       (.I0(\douta[10]_0 [0]),
        .I1(\douta[10]_1 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [0]),
        .O(\douta[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[4]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [1]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_2 
       (.I0(\douta[10]_4 [1]),
        .I1(\douta[10]_5 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [1]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_3 
       (.I0(\douta[10]_0 [1]),
        .I1(\douta[10]_1 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [1]),
        .O(\douta[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[5]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [2]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_2 
       (.I0(\douta[10]_4 [2]),
        .I1(\douta[10]_5 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [2]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_3 
       (.I0(\douta[10]_0 [2]),
        .I1(\douta[10]_1 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [2]),
        .O(\douta[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[6]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [3]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_2 
       (.I0(\douta[10]_4 [3]),
        .I1(\douta[10]_5 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [3]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_3 
       (.I0(\douta[10]_0 [3]),
        .I1(\douta[10]_1 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [3]),
        .O(\douta[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[7]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [4]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(\douta[10]_4 [4]),
        .I1(\douta[10]_5 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [4]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_3 
       (.I0(\douta[10]_0 [4]),
        .I1(\douta[10]_1 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [4]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[8]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [5]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_2 
       (.I0(\douta[10]_4 [5]),
        .I1(\douta[10]_5 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [5]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_3 
       (.I0(\douta[10]_0 [5]),
        .I1(\douta[10]_1 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [5]),
        .O(\douta[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[9]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[0]),
        .I3(\douta[10] [6]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_2 
       (.I0(\douta[10]_4 [6]),
        .I1(\douta[10]_5 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_6 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_7 [6]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_3 
       (.I0(\douta[10]_0 [6]),
        .I1(\douta[10]_1 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[10]_2 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_3 [6]),
        .O(\douta[9]_INST_0_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [13:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input [15:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [15:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [15:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [15:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h00000017F4000000000000000000000000000000000000000000000009F00000),
    .INIT_0C(256'h000000000000000000002BFA0000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000107C00000000000000000000000000),
    .INIT_0E(256'h2900000000000000000000000000000000000000000000004071000000000000),
    .INIT_0F(256'h000000000000003B000000000000000000000000000000000000000000000020),
    .INIT_10(256'h0000000000000000000000000000030000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000600200000000000000000000),
    .INIT_12(256'h0000300200000000000000000000000000000000000000000000001006000000),
    .INIT_13(256'h000000000000000000180C000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000008680000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000107000000000000000),
    .INIT_16(256'h00000000004FFE000000000000000000000000000000000000000000000013D6),
    .INIT_17(256'h0000000000000000000000009FFF000000000000000000000000000000000000),
    .INIT_18(256'h000000000000000000000000000000000000007FFC8000000000000000000000),
    .INIT_19(256'h03BFFF20000000000000000000000000000000000000000000003FFC00000000),
    .INIT_1A(256'h00000000000000077FFE60000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000091FFEAFC000000000000000000000000000),
    .INIT_1C(256'h88000000000000000000000000000000000000001E413FCF8340000000000000),
    .INIT_1D(256'h00003200027A1BF00000000000000000000000000000000000000022C01FB2AF),
    .INIT_1E(256'h00000000000000000033800367AE600000000000000000000000000000000000),
    .INIT_1F(256'h00000000000000000000000000000000338000BFAE1800000000000000000000),
    .INIT_20(256'hC005902800000000000000000000000000000000000000330000278210000000),
    .INIT_21(256'h00000000001B03FFD87000000000000000000000000000000000000000003B01),
    .INIT_22(256'h0000000000000000000000000003FFCCF0600000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000071E0000000000000E03FFFBF01000000000000000),
    .INIT_24(256'h000703FFFFF02000000000000000100000002601F000000000000803FFFFF0D0),
    .INIT_25(256'h7FE00000000000000603FFFFE1A0000000003FFF803F3E30003F1F8000000000),
    .INIT_26(256'hC1F8F2F9FFC602FF80FC00000000000283FFFFE14000000003303E00E7E1F401),
    .INIT_27(256'h3FC2000000000FF80018BFC00001FC000000000000000183FFFFE2400000000B),
    .INIT_28(256'h0000000001C1F01F82000000005FFF7FF56001FF87F0000080000000000303F8),
    .INIT_29(256'h000040407C01000000000000C0C00F00000000003FC0000200000042E0000000),
    .INIT_2A(256'h0001FC0000021000000001800100000000000180400621000000007F00000220),
    .INIT_2B(256'h00E000000700000002F807E00404020080000201000000000000A00000260000),
    .INIT_2C(256'h0201000000000000E000000600000003F0182008000000840202010000000000),
    .INIT_2D(256'h000000010080020201000000000000A000002200000001606000000001008402),
    .INIT_2E(256'h0000000004008000000C01008201020100000000000040000020000000040000),
    .INIT_2F(256'h00000000E000070000000004010000005F380081C02A01000000000000200000),
    .INIT_30(256'h4080404300000000000000A0C0968A0000000401000010FBE78080C06A010000),
    .INIT_31(256'h04020000008FC02080105100000000000000C0C015CB0000000402000010FCFF),
    .INIT_32(256'h7DDDDAFE00000004020000004003E08000000000000000000080C30400000000),
    .INIT_33(256'h00000000000002B41DFDD60000000402000008200000801C0000000000000000),
    .INIT_34(256'h0807000080BF8000000000000003FF9DDC6C8000000202000008000000801E00),
    .INIT_35(256'h800000008100000800FE0081FF00008000000000038188DC7E00000002000000),
    .INIT_36(256'h000005E1F8FCFF800000004100000800010081FE000080000000000601E00FFF),
    .INIT_37(256'h9FF01200000000000000E39CDB7F20000000E08000080001008BF80E00000000),
    .INIT_38(256'h200400006000005FE02000000000000004030CDF34C000000060200000000100),
    .INIT_39(256'h000301000000001035E01179E1007F804401000000000001000003C080000000),
    .INIT_3A(256'h000000000025800007C11C000000040C5013DF1F807F00840100000000000D00),
    .INIT_3B(256'h7E0F201804020100000000001B01800CE1B4000000020A9801F7FEC03C020401),
    .INIT_3C(256'h00000000404C00001FE00008010100000000006CF8000F1F1200000000825401),
    .INIT_3D(256'h00280300C7603000000000300800800800603000800000000000682F9CDD4F12),
    .INIT_3E(256'h80001C000000000011FF00067E00000000000C00084000004840002200000000),
    .INIT_3F(256'h00380807FF8100000000000000000003F7F07FCFC00000000001C00830000087),
    .INIT_40(256'h0018000000000000021000007E00000000000000000000000000100000000000),
    .INIT_41(256'h00000000003800001800000000000000E0000000000000000000000000003800),
    .INIT_42(256'h0000000000000000000000003800001800000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000038000008000000000000000000),
    .INIT_44(256'h0038000008000000000000000000000000000000000000000000380000080000),
    .INIT_45(256'h0000000000000000380000080000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000003800000800000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000038000000000000000000),
    .INIT_48(256'h0000000038000018000000000000000000000000000000000000000000380000),
    .INIT_49(256'h0000000000000000000000180000140000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000800000400000000000000000000),
    .INIT_4B(256'h2800000400000000000000000000000000000000000000000008000004000000),
    .INIT_4C(256'h0000000000000000000004000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000040000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000400000000000000),
    .INIT_4F(256'h000000100000080000000000000000000000000000000000000000000000000C),
    .INIT_50(256'h0000000000000000000070000008000000000000000000000000000000000000),
    .INIT_51(256'h00000000000000000000000000000000007000000E0000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000005000000200000000),
    .INIT_53(256'h0000000000000000000200000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000006000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000E00000040000000000000000),
    .INIT_56(256'h000020000000000000000000000000000000000000000000000000E000000600),
    .INIT_57(256'h00000000000000000080C0001080000000000000000000000000000000000000),
    .INIT_58(256'h00000000000000000000000000000001C0C08012000000000000000000000000),
    .INIT_59(256'h0410400000000000000000000000000000000000000001C1C080130000000000),
    .INIT_5A(256'h000000000303400C1140000000000000000000000000000000000000000041C0),
    .INIT_5B(256'h0000000000000000000000018002040180000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000388020C00200000000000000000),
    .INIT_5D(256'h0700064000D0000000000000000000000000000000000000000608020C00A000),
    .INIT_5E(256'h0000000000000007180600003000000000000000000000000000000000000000),
    .INIT_5F(256'h00000000000000000000000000000D1804000060000000000000000000000000),
    .INIT_60(256'h0068000000000000000000000000000000000000001400044200580000000000),
    .INIT_61(256'h0000007A000047C06300000000000000000300000000800000000000120006C5),
    .INIT_62(256'h00000001F00000000000630200054033000000000000003803C0000000F00000),
    .INIT_63(256'h00780009003C0380000001F8000000000157870006881C800000600000005C0F),
    .INIT_64(256'h020005B5EC000001E0001D80BE00B8000004620000000003970500066C390000),
    .INIT_65(256'h010000000003FD81200F7FBFC0000070002E008F80000000004100000000023B),
    .INIT_66(256'h108008040000080100000000033F7B703EFCFC00000035002FC0804004000000),
    .INIT_67(256'hF280000100804000002804058008000000000002E3C63004200F000000008013),
    .INIT_68(256'h0000D80E2001D7350000010080200000280403800002000000000147F600002B),
    .INIT_69(256'h07E8100400000000001FEE60C287EA0000010080A0000028040FF00000000000),
    .INIT_6A(256'h0081F80040200417801004000000000007FE0043FFE100000100806000402004),
    .INIT_6B(256'h00007F800000000080F00040240409040004000000000053FC000FFFCB000000),
    .INIT_6C(256'h000000000057FF0001FFF78000000081F000402404210020000000000000A9FC),
    .INIT_6D(256'h402002500200080000000001107FFFFFFEC18000000087E00040240010022008),
    .INIT_6E(256'hA000008007C008402202200000000000000000E000040C00C2C000000003E008),
    .INIT_6F(256'h02A00000000061100000801FC008402202A40140000000000001600000000062),
    .INIT_70(256'h0080100000000005400000000061080000800F80084022004001401000000000),
    .INIT_71(256'h3F000840210000000000000000000B400700000073E40000805F000840200140),
    .INIT_72(256'h027C01EB0000807E000840210000000020000000001678030003007190000080),
    .INIT_73(256'h0000005CF81800017000530000803C000840200000400020000000006EF81C00),
    .INIT_74(256'h200020A8004000000000F8E00800038986D88000803C180040208020A0000000),
    .INIT_75(256'h000080304804002000000800400000000031F007000EFEBCEC80008038280440),
    .INIT_76(256'hE0000075FFC43F4000803008040020400110000000000000E1F0000004EBFC7A),
    .INIT_77(256'h0080000000014FE000003ED7E21E000080208804002000000400800000000147),
    .INIT_78(256'h080480202000020000000000017FE000001E7FC709000000010804802000020A),
    .INIT_79(256'hF5F20200008000080000201004070100000000012FC000001FFF874140008002),
    .INIT_7A(256'h00016000000003E2C1C3C000800408004020080802810000000001078000001F),
    .INIT_7B(256'h011000420000000000D0007C00001385C6000000080000200004000002000000),
    .INIT_7C(256'h0010000004044000C0003C0000000000A800D4000181C0730000201000000000),
    .INIT_7D(256'h00000000038B8000082000840300000000000000000000B2007000027400E480),
    .INIT_7E(256'h0000000000C070000000001E1E0000024000680000000000000000000001F980),
    .INIT_7F(256'h000000000000000000000000983FC0000003FC22400000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [13:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [13:0]addra;
  wire clka;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFF9DC0000000000000000000000000000000018B1FFF0001FFFC3B4000000000),
    .INIT_01(256'h008C1FFFFFFFFFFC7BC0000000000000000000000000000000008CEFFFFFFFFF),
    .INIT_02(256'h00000000000000018F807FFFFFFF00F880000000000000000000000000000000),
    .INIT_03(256'h000000000000000000000000000001080000007C78078A000000000000000000),
    .INIT_04(256'h00000FE03A00000000000000000000000000000000010E0000000000381C8000),
    .INIT_05(256'h0000000183801C0023BD80E70000000000000000000000000000000000070038),
    .INIT_06(256'h0000000000000000000001C0F0000061F81BC240000000000000000000000000),
    .INIT_07(256'hE20000000000000000000000000000000000587F4000001FFFC2400000000000),
    .INIT_08(256'h4FFFFFFFFFFFFFE380000000000000000000000000000000001CFFF92021EFFF),
    .INIT_09(256'h000000000000002FFFFFFFFFFFFFE70000000000000000000000000000000000),
    .INIT_0A(256'h000000000000000000000000000017FFFFFFFFFFFFE000000000000000000000),
    .INIT_0B(256'hFFFFFE60000000000000000000000000000000000007FFFFFFFFFFFFD0000000),
    .INIT_0C(256'h000000007FFFFFFFFFFF00000000000000000000000000000000000003FFFFFF),
    .INIT_0D(256'h00000000000000000000001DFFFFFFFFC8000000000000000000000000000000),
    .INIT_0E(256'h00000000000000000000000000000000000000B7FFFFFB400000000000000000),
    .INIT_0F(256'h00000000000000000000000000000000000000000000000000000CFF0FCC0000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000808000000000000000000000000000000000000000000000006000000),
    .INIT_0C(256'h0000000000000000000010040000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000201200000000000000000000000000),
    .INIT_0E(256'h2A0000000000000000000000000000000000000000000000203A000000000000),
    .INIT_0F(256'h0000000000000010000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000400000000000000000000000000000000000000000000002000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000080800000000000000),
    .INIT_16(256'h000000000050060000000000000000000000000000000000000000000000382C),
    .INIT_17(256'h000000000000000000000000A003000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000140028000000000000000000000),
    .INIT_19(256'h04C0010000000000000000000000000000000000000000000002400240000000),
    .INIT_1A(256'h0000000000000009800120000000000000000000000000000000000000000000),
    .INIT_1B(256'h000000000000000000000000000015E001800000000000000000000000000000),
    .INIT_1C(256'h4000000000000000000000000000000000000000017EC0187F10000000000000),
    .INIT_1D(256'h0000018001C42018000000000000000000000000000000000000001180006C10),
    .INIT_1E(256'h000000000000000000000000C018180000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000058100000000000000000000000),
    .INIT_20(256'h0018001800000000000000000000000000000000000000000000180008000000),
    .INIT_21(256'h0000000000180000000028000000000000000000000000000000000000001000),
    .INIT_22(256'h0000000000000000000000001400000000200000000000000000000000000000),
    .INIT_23(256'h000000000000000000000000E00000000000000C000000005000000000000000),
    .INIT_24(256'h000600000000A000000000000000000000001E01E00000000000020000000040),
    .INIT_25(256'hFFE004000000000003000000008000000000000000FFC000007F000800000000),
    .INIT_26(256'hC00021F8000401FFFFFE000000000003000000004000000000F03E41E001F800),
    .INIT_27(256'h0000000000001FF80011FFC00103FFFFFF000000000003000000010000000007),
    .INIT_28(256'h000000000180000000800000003FFFFFF8FFFFFF03FFFFFF0000000000018000),
    .INIT_29(256'hFFFF87FF83FE00000000000180000002000000007FFFFFFC7FFFFF87FFFFFF00),
    .INIT_2A(256'h0000FFFFFFFC0FFFFF87FE03FE000000000000C000000300000000FFFFFFFC1F),
    .INIT_2B(256'h004000000200000001FFF81FF80001FF07FE01FE000000000000C00000030000),
    .INIT_2C(256'h01FE0000000000004000000200000001FFE01FF00001FF03FC01FE0000000000),
    .INIT_2D(256'h1FF00000FF03FC01FE0000000000000000000600000003FF801FF00000FF03FC),
    .INIT_2E(256'h0400000003FF001FF00000FF01FE01FE0000000000006000000400000003FF80),
    .INIT_2F(256'h000000004000000400000003FE001FF03FC1FF00FFD1FE000000000000400000),
    .INIT_30(256'h7F003FC3FF00000000000000000A0600000003FE001FE07807FF007F0DFE0000),
    .INIT_31(256'h03FC001FF07FC03F000FB1FF00000000000060000B0600000003FC001FE07C00),
    .INIT_32(256'hA000090500000003FC001FF03FFFFF000FFFFF000000000000A0000AC4000000),
    .INIT_33(256'hFF00000000000338000631C0000003FC001FF01FFFFF000FFFFF000000000000),
    .INIT_34(256'hF000FFFF007FFFFF00000000000300000793C0000001FC001FF00FFFFF003FFF),
    .INIT_35(256'h00000001FE001FF00001FF00FFFFFF0000000000030000038140000001FE001F),
    .INIT_36(256'h0000068000030160000000FE001FF00000FF03FFFFFF00000000000080000001),
    .INIT_37(256'h0FFFE1FF00000000000100000780A00000007F001FF00000FF07FFF1FF000000),
    .INIT_38(256'h1FC81FF00000FFBFFFC3FF00000000000600000240600000003FC01FF00000FF),
    .INIT_39(256'h000000F00000000FE91FE0FE00FFFFFF83FE0000000000060000000020000000),
    .INIT_3A(256'h00000000000C00000000D000000003FB9FE1C01FFFFFFF03FE00000000000400),
    .INIT_3B(256'hFE003FFFF801FE00000000001E000003003C00000001F66FF3F000FFFFFC03FE),
    .INIT_3C(256'h000000003FBFF1FFFFFFFFF000FE00000000000F00000000F0000000007DC7F3),
    .INIT_3D(256'h0010000001700C000000000FF7F07FF7FF9FC0007E0000000000300000031008),
    .INIT_3E(256'h00000000000000000E00000001F00000000003FFF03FFFFF8780001C00000000),
    .INIT_3F(256'h0007F000007E000000000000000000003800003C0000000000003FF00FFFFF00),
    .INIT_40(256'h000000000000000001E000000000000000000000000000280000080000000000),
    .INIT_41(256'h0000000000100000000000000000000000000000000000000000000000001000),
    .INIT_42(256'h0000000000000000000000001000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000010000000000000000000000000),
    .INIT_44(256'h0010000000000000000000000000000000000000000000000000100000000000),
    .INIT_45(256'h0000000000000000100000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000001000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000010000000000000000000),
    .INIT_48(256'h0000000010000000000000000000000000000000000000000000000000100000),
    .INIT_49(256'h0000000000000000000000100000080000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000001000000800000000000000000000),
    .INIT_4B(256'h1000000800000000000000000000000000000000000000000010000008000000),
    .INIT_4C(256'h0000000000000030000008000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000300000080000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000003000000C00000000000000),
    .INIT_4F(256'h0000002000000400000000000000000000000000000000000000000030000004),
    .INIT_50(256'h0000000000000000000020000004000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000200000040000000000000000000000),
    .INIT_52(256'h0000060000000000000000000000000000000000000000002000000400000000),
    .INIT_53(256'h0000000000006000000600000000000000000000000000000000000000000060),
    .INIT_54(256'h0000000000000000000000000060000002000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000400000010000000000000000),
    .INIT_56(256'h0000C00000020000000000000000000000000000000000000000004000000300),
    .INIT_57(256'h000000000000000000C000000200000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000080000000800000000000000000000000),
    .INIT_59(256'h0001000000000000000000000000000000000000000000800000010000000000),
    .INIT_5A(256'h0000000001800000004000000000000000000000000000000000000000018000),
    .INIT_5B(256'h0000000000000000000000030000000080000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000300000000800000000000000000),
    .INIT_5D(256'h0600000000400000000000000000000000000000000000000003000000002000),
    .INIT_5E(256'h0000000000000006000000005000000000000000000000000000000000000000),
    .INIT_5F(256'h00000000000000000000000000000E0002000020000000000000000000000000),
    .INIT_60(256'h0004000000000000000000000000000000000000000600020000280000000000),
    .INIT_61(256'h0000002C000000801E0000000000000000000000000040000000000014000002),
    .INIT_62(256'h20000003F800000000008C000002200680000000000000000780000001E00000),
    .INIT_63(256'h00F00006007E0F90000003FC000000000198000001000B400000000000003807),
    .INIT_64(256'h018003C81C000000E4000D007F0FF0000003FC00000000001803800180088000),
    .INIT_65(256'hFE0000000001FE000003A07FC00001F2001E407F0FF8000007FE00000000003C),
    .INIT_66(256'hE07FC7F8000007FE0000000001FF800002C3FFC00001FE001FE07F8FF8000007),
    .INIT_67(256'h01000000FF003FF07FC7F8030007FE00000000011FF800001FF0C00001FF003F),
    .INIT_68(256'h000060000000380C000000FF007FF07FC7F807C00FFC00000000008008000014),
    .INIT_69(256'h0FF00FF8000000000070000001881C000000FF007FF07FC7F807E00FFC000000),
    .INIT_6A(256'hFF00FFF03FC7F80FF80FF80000000000680000000016000000FF00FFF03FC7F8),
    .INIT_6B(256'h0000007C000000FF01FFF03FC3F81FF81FF800000000005C0000000039000000),
    .INIT_6C(256'h0000000000A00000000002000000FF03FFF03FC3F81FFC1FF800000000003600),
    .INIT_6D(256'h3FC3FC3FFC3FF00000000000200000000002800000FF03FFF03FC3FC3FFC1FF0),
    .INIT_6E(256'h6000007F8FFFF03FC1FC7FFE3FF00000000001400000000000400000FF87FFF0),
    .INIT_6F(256'h04C000000000007000007F8FFFF03FC1FC7FFE3FF00000000002400000000001),
    .INIT_70(256'hFF7FE00000000009800000000000B800007F9FFFF03FC1FEFFFE3FE000000000),
    .INIT_71(256'hFFFFF03FC0FFFFFFFFE000000000138000000000005C00007FBFFFF03FC1FEFF),
    .INIT_72(256'h0000002400007FFFFFF03FC0FFFFFFFFC000000000278000000000004E00007F),
    .INIT_73(256'h0000005F000D00003C003100007FFFFFF03FC0FFFFBFFFC0000000000F000000),
    .INIT_74(256'hC07FFF1FFF80000000007F0007000170003800007FFFE7F83FC07FFF1FFFC000),
    .INIT_75(256'h00007FFF87F87FC07FFF1FFF8000000000BE00000001F5001C80007FFFC7F83F),
    .INIT_76(256'h0000000300000100007FFF87F87FC03FFE0FFF8000000000FE00000002FC0006),
    .INIT_77(256'hFF00000000007000000001D8000140007FFF07F87FC03FFE0FFF000000000078),
    .INIT_78(256'h07F87FC01FFC07FF0000000000400000000000000040007FFE07F87FC03FFC07),
    .INIT_79(256'h00000140007FFC07FC7FC00FF803FE0000000000400000000000000000007FFC),
    .INIT_7A(256'h0000400000000013300100007FF807FC3FC007F001FE00000000004000000000),
    .INIT_7B(256'h00E0003C0000000000E0000000014DF00200007FF007FC1FC003F000FC000000),
    .INIT_7C(256'h000FE001F80380000000000000000000B000240000BA800E00001FE003FC0FC0),
    .INIT_7D(256'h000000000078400007C000780000000000000000000000BC000C000038001D00),
    .INIT_7E(256'h0000000001FF800000000001FE0000018000100000000000000000000000FE00),
    .INIT_7F(256'h000000000000000000000001E7C00000000003FE400000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF8000000000000000000000000000000000000000FFFFFFFFFF00000000000),
    .INITP_01(256'h0000001FFFFFFFFFFC000000000000000000000000000000000000000FFFFFFF),
    .INITP_02(256'hC0000003F000000000007FFFFFFFFFFF00000000000000000780000001E00000),
    .INITP_03(256'h00F00004007C07E0000003F80000000000FFFFFFFFFFFF800000000000003807),
    .INITP_04(256'hFFFFFFFFFFC00000F8000F007E07F0000003FC0000000001FFFFFFFFFFFFC000),
    .INITP_05(256'hFE0000000001FFFFFFFFFFFFC00001FC001F807F87F8000007FE0000000001FF),
    .INITP_06(256'hE07FC7F8000007FE0000000001FFFFFFFFFFFFC00001FE001FC07FC7F8000007),
    .INITP_07(256'hFF000000FF003FF07FC7F8030007FE0000000001FFFFFFFFFFFF800000FF003F),
    .INITP_08(256'h00007FFFFFFFFFFE000000FF007FF07FC7F807800FFC0000000000FFFFFFFFFF),
    .INITP_09(256'h0FF00FFC00000000003FFFFFFFFFFE000000FF007FF03FC7F807E00FFC000000),
    .INITP_0A(256'hFF00FFF03FC7FC0FF80FF800000000003FFFFFFFFFFE000000FF00FFF03FC7F8),
    .INITP_0B(256'hFFFFFFFF000000FF01FFF03FC3FC1FF81FF800000000007FFFFFFFFFFE000000),
    .INITP_0C(256'h00000000007FFFFFFFFFFF000000FF83FFF03FC3FC1FFC1FF800000000007FFF),
    .INITP_0D(256'h3FE3FC3FFC3FF00000000000FFFFFFFFFFFF0000007F83FFF03FC3FC3FFC1FF8),
    .INITP_0E(256'hC000007F8FFFF03FE1FC7FFE3FF00000000000FFFFFFFFFFFF8000007F87FFF0),
    .INITP_0F(256'h03FFFFFFFFFFFFE000007F8FFFF03FE1FE7FFE3FF00000000001FFFFFFFFFFFF),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'hA6A8A4A4A4A6A6A6A6A6A4A4A6A6A6A6A6A6ACB2EA0000000000000000000000),
    .INIT_02(256'h0000000000000000000000628ECEAAA6A4A4A6A4A4A4A4A4A6A6A4A4A4CACEA4),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hA6A6A6A6A6A4A6A6A6A6AAB07086000000000000000000000000000000000000),
    .INIT_08(256'h000022EAB0ACA8A6A6A6A4A4A4A4A4A4A6A6A4A4A4A8A8A4A6A8A4A4A4A6CAA8),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h00000000000000000000000000000040C4C62200000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000020848420000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hA6A6A8AEB472EA64000000000000000000000000000000000000000000000000),
    .INIT_0E(256'hA6A6A4A4A4A4A4A4A6A6A4A4A4A4A4A4A6A6A4A4A6A8D2D4CCA8A6A6A6A6A6A6),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000042EAB2CEACA8A6),
    .INIT_10(256'h0000000000004046CACC4A640000000000000000000000000000000000000000),
    .INIT_11(256'h000000002026AAAC286400000000000000000000000000000000000000000000),
    .INIT_12(256'h000000000000000000000000000000000000000000000000000062A422000000),
    .INIT_13(256'h8600000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'hA6A4A4A4A4A4A4A4A6A6A6A6A6A8D4F9D7D2CAA4A6A4A4A6A6A6A6AAB0D4D470),
    .INIT_15(256'h00000000000000000000000000000022C850B2D0AEACA8A6A6A4A4A4A4A6A6A6),
    .INIT_16(256'hEAEAEC8AA4000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'hEC8A8400000000000000000000000000000000000000000000000000000004EA),
    .INIT_18(256'h0000000000000000000000000000000000A488CA4A84000000000000A4C8EAEC),
    .INIT_19(256'h0000000000000000000000000000000040A4A420000000000000000000000000),
    .INIT_1A(256'hA6A6A6A6A6A6D2FBF9F9D0A6A6A4A4A6A4A6A6A8AEB2D4B47086000000000000),
    .INIT_1B(256'h00000000000022EAB4D2D2AEACAAA8A6A6A4A4A4A4A6AAA8A6A4A4A4A4A4A4A4),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000004288E8E8EAEAECAAC60000),
    .INIT_1E(256'h00000000000000002046EAEAECAAC60000000000E4A8C8EAEAECACC600000000),
    .INIT_1F(256'h000000000000002026CACC2A62000000000000000000000000000020A406C642),
    .INIT_20(256'hFBF9D2A6A8A6A4A6A6A6A6A8AEB0B2B2B42E2000000000000000000000000000),
    .INIT_21(256'hD2B2B0AEACA8A6A6A6A4A4A4A4A6CCCECAA4A4A4A4A4A4A4A6A6A6A6A6A8D2FB),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000008692),
    .INIT_23(256'h00000000000000000000000000C4A8C8C8C8EAEAE8A8E4200000000000000000),
    .INIT_24(256'h8288C8E8EAECCCE620000000E486A8C8EAEAEAA8C42000000000000000000000),
    .INIT_25(256'hC8EAEAEC6A8400000000000000000000000000E4CAECEC4A6400000000000000),
    .INIT_26(256'hA6A6A8ACB0B0B0B0B24E220000000000000000000000000000000000000000C4),
    .INIT_27(256'hA4A4A4A6A4A6A6CCCCA6A6A4A4A4A4A6A6A6A6A6A6A8D4FBFBFBD2A8CCA8A6A6),
    .INIT_28(256'h00000000000000000000000000000000000000000000A6B0B0B0B0B0AEAAA6A6),
    .INIT_29(256'h000000000026C8C8C8C8C8C8A6C6A68200000000000000000000000000000000),
    .INIT_2A(256'h04400000E46686A8C8A8A6C68682000000000000000000000000000000000000),
    .INIT_2B(256'h000000000000000000006288EAEAECEC8CA60000000000008266A8C8E8EAEAA8),
    .INIT_2C(256'hB04C20000000000000000000000000000000000000000004C8C8EAEAEC8AA400),
    .INIT_2D(256'hA6A6A6A4A6A6A6A6A6A6A6A6A6A8D4FBFBF9CEA8A8A6A6A8AAACCED0B0B0B0B0),
    .INIT_2E(256'h000000000000000000000000000084AEB0B0B0B0D0CECCAAA6A4A4A6A6A6A6A6),
    .INIT_2F(256'hA8C8A8A6A6A6C8C2000000000000000000000000000000000000000000000000),
    .INIT_30(256'hA6A6A6A6C6A2000000000000000000000000000000000000000000004266C8A8),
    .INIT_31(256'h0000E4C8C8E8EAEAECAAC60000000000624686A8C8C8A6A6A6042000C4666686),
    .INIT_32(256'h00000000000000000000000000000004A8A8C8EAEAEA88C40000000000000000),
    .INIT_33(256'hA6A6A6A6A6A8CECECECEA8A8A8AAACCCCECECECEAEAEAEACAA4C220000000000),
    .INIT_34(256'h00000000000084AEAEAEAEB0D0D0D0CECCAAA8A6A6A6A6A6A6A6CAA8A6A6A6A6),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000002020000000000000000000000000A488A8A8A8A8A6A6A6A6A682),
    .INIT_37(256'hC8C8A8E42000000042266686A8A6A6A6A6A68200A446666686A6A6A6A6A40000),
    .INIT_38(256'h00000000000000E48686A8C8A8A6C6868200000000000000002066C8C8C8E8EA),
    .INIT_39(256'hA6A6AACCCCCECECECEACACAAA8A8A6A68AE80000000000000000000000000000),
    .INIT_3A(256'hAAA8AAAAACACCECECECECECCCCAAA8A6A6A6A8A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_3B(256'h000000000000000000000000000000000000000000000000000000000000624A),
    .INIT_3C(256'hA40000000000000000000000E4A8A8A8A8A8A6A6A6C646400000000000000000),
    .INIT_3D(256'h2024666686A6A6A6A6C6A200A246664686A6A6A6A6C400000000000000622648),
    .INIT_3E(256'h666686A6A6A6A6C8C40000000000000000A4A8C8C8C8C8C8A6A6C6A682000000),
    .INIT_3F(256'hA8A6A6A6A6A6A84AA622000000000000000000000000000000000000000000C4),
    .INIT_40(256'hAAAAAACACACAA6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A6A6A8CACACAAAAA),
    .INIT_41(256'h0000000000000000000000000000000000000000000000844AA8A6A6A6A6A8A8),
    .INIT_42(256'h0000002026A8A8A8A8A6A6A6A6C6C40000000000000000000000000000000000),
    .INIT_43(256'hA6A6A4008246464686A6A6A6A6C40000000000002046EAECAAE6000000000000),
    .INIT_44(256'hC4000000000000000046C8C8C8C8C8A6A6A6A6C6A20000000004666666A6A6A6),
    .INIT_45(256'h0000000000000000000000000000000000000000000000A446666686A6A6A6A6),
    .INIT_46(256'hA6A6A6A4A4A4A4A4A4A4A4A4A6A6A6A6A8A8CCCECCAAA6A6A6A4A6A8AAAE6E84),
    .INIT_47(256'h00000000000000000000000000000000844CACA8A6A6A4A4A4A4A6A6A6A8A6A6),
    .INIT_48(256'hA8A6A6A6A6866200000000000000000000000000000000000000000000000000),
    .INIT_49(256'h66A6A6A6C6E4000000000000C4C8EAEAEACC2842000000000000006266A8A8A8),
    .INIT_4A(256'hA4A8C8C8C8C8A8A6A6A6A6A68200000000E466666686A6A6A6A6A40062264646),
    .INIT_4B(256'h0000000000000000000000000000008246464686A6A6A6A6C400000000000000),
    .INIT_4C(256'hA6A8A6A6A6A6A8CCD0D0D0D0CCA8A6A6A8A8AAACCED450420000000000000000),
    .INIT_4D(256'h000000000000000020A8B4D0AAAAA8A8A6A6A6A6A6A8A8A6A6A6A8A6A6A6A6A6),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000002046C8C8C8EAEAEA2642000000000000A488A8A8A8A8A6A6A6C6264000),
    .INIT_50(256'hA6A6A6A68200000000C446466686A6A6A6A6A4002206464666A6A6A6C6E42000),
    .INIT_51(256'h000000000000006226464686A6A6A6A6C40000000000002046C8C8C8C8C8A6A6),
    .INIT_52(256'hA8A8A6A6A6A8A8A8A8AAAAACD0D4928600000000000000000000000000000000),
    .INIT_53(256'h20C8D4D2ACAAA8A8A8A8A8A8A6A6A6A6A4A4A4A4A6A6A4A4A6A6A6A6A6A6A6A6),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'hC8C8C8C846420000000000E4A8A8A8A8A6A6A6A6C6E400000000000000000000),
    .INIT_56(256'h00A446464686A6A6A6A6C4000004464666A6A6A6C6042000000000C4A8C8C8C8),
    .INIT_57(256'h26664666A6A6A6C6C4000000000000C4C8C8C8C8C8C8A6A6A6A6A6A682000000),
    .INIT_58(256'hA8AAACCED0D0B2EA000000000000000000000000000000000000000000000042),
    .INIT_59(256'hA8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8),
    .INIT_5A(256'h000000000000000000000000000000000000000000000000200AD2CECEAAA8A8),
    .INIT_5B(256'h00002026A8A8A8A8A6A6A6A6A682000000000000000000000000000000000000),
    .INIT_5C(256'hA6A6E40000C446464686A6A6C624200000002046C8C8C8C8C8A8A6A6C8C40000),
    .INIT_5D(256'hE420000000006288E8C8C8C8C8A8A6A6A6A6A6A68200000000A246464686A6A6),
    .INIT_5E(256'h22000000000000000000000000000000000000000000002004664666A6A6A6C8),
    .INIT_5F(256'hA4A4A4A4A4A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8AAACCCACAAACD24E),
    .INIT_60(256'h00000000000000000000000000000000626ED0AAAAAAACAAAAA8A8A8A6A6A6A6),
    .INIT_61(256'hA6A6A6C646400000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h4686A6A6C64640000000A4A8C8C8C8C8C8A6A6A6C646400000006266A8A8A8A8),
    .INIT_63(256'hE8C8C8C8C8A6A6A6A6A6A6A68200000000A246664666A6A6A6C6E40000844646),
    .INIT_64(256'h0000000000000000000000000000002004664666A6A6A6C604200000000026C8),
    .INIT_65(256'hA4A4A6A6A6A6A6A6A6A6A8A8A8A8A8A8A8A8A8A6A6A8D0928600000000000000),
    .INIT_66(256'h0000000000000020C8B2CEA8A6A6A8A8AACAAAAAA8A8A6A6A6A6A4A4A4A4A4A6),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h000046C8C8C8C8C8A6A6A6A6A68682000000A488A8A8A8A6A6A6A6C604200000),
    .INIT_69(256'hA6A6A6C6A200000000A266664666A6A6A6C6E420006226464686A6A6C6666200),
    .INIT_6A(256'h0000000000000000E446464686A6A6C60420000000A4A8E8C8C8C8C8A6A6A6A6),
    .INIT_6B(256'hA8A8A8A8A6A6A6A6A6A6A4A4A4A6ACB2EA200000000000000000000000000000),
    .INIT_6C(256'h6ED2ACA6A4A4A4A4A4A6A6A8A8A8A8A8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000042),
    .INIT_6E(256'hA6A6A6A6A6C6E400000006A8A8A8A8A6A6A6A6A6C20000000000000000000000),
    .INIT_6F(256'h00A246664666A6A6A6C60420002004464666A6A6A6A68200008288C8C8C8C8A8),
    .INIT_70(256'hC446464686A6A6C6262000004268EAC8C8C8C8C8A6A6A6A6A6A6A6C6A2000000),
    .INIT_71(256'hA6A6A4A4A4A4A8D092CA20000000000000000000000000000000000000000000),
    .INIT_72(256'hA4A4A4A4A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A4A4A4A4A4A4A4),
    .INIT_73(256'h0000000000000000000000000000000000000000000020E8B2D0AAA4A4A4A4A4),
    .INIT_74(256'h004246A8A8A8A8A6A6A6A6866200000000000000000000000000000000000000),
    .INIT_75(256'hA6C604200000C4464666A6A6A6C6C4000026C8C8C8C8C8A6A6A6A6A6A6C64640),
    .INIT_76(256'h2620000026C8E8C8C8E8C8A6A6A6A686A6A6A6C6A2000000008246666666A6A6),
    .INIT_77(256'hD292CA200000000000000000000000000000000000000000C446464686A6A6C6),
    .INIT_78(256'hA4A4A4A4A4A4A4A4A4A4A4A4A6A4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A4A4A6AE),
    .INIT_79(256'h0000000000000000000000000020A890D0AEA8A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_7A(256'hA6A6C62640000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h466686A6A6C604008288C8C8C8C8C8A6A6A6A6A6A6A6A6A2008286A8A8A8A8A6),
    .INIT_7C(256'hE8C8C8A6A6A6A66686A6A6C6C4000000008246666666A6A6A6C6042000008226),
    .INIT_7D(256'h00000000000000000000000000000000C446464686A6A6C6464000C4C8EAE8E8),
    .INIT_7E(256'hA4A4A4A6A6A4A4A4A6A4A4A4A4A4A4A4A4A6A6A4A4A4A6AAD0D492C820000000),
    .INIT_7F(256'h0000000020A892D2AEACA6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFF7FE00000000007FFFFFFFFFFFFF000007F9FFFF03FE1FEFFFF3FE000000000),
    .INITP_01(256'hFFFFF83FE0FFFFFFFFE0000000000FFFFFFFFFFFFFF800007FBFFFF83FE0FEFF),
    .INITP_02(256'hFFFFFFFE00007FFFFFF83FE0FFFFFFFFE0000000001FFFFFFFFFFFFFFC00007F),
    .INITP_03(256'h0000003FFFFFFFFFFFFFFF00007FFFFFF83FE07FFFBFFFC0000000003FFFFFFF),
    .INITP_04(256'hE07FFF1FFFC0000000007FFFFFFFFFFFFFFF00007FFFE7F83FE07FFF9FFFC000),
    .INITP_05(256'h80007FFFC7F83FE03FFF0FFF80000000007FFFFFFFFFFFFFFF00007FFFC7F83F),
    .INITP_06(256'hFFFFFFFFFFFFFF80007FFF87F87FE03FFE0FFF8000000000FFFFFFFFFFFFFFFF),
    .INITP_07(256'hFF0000000000FFFFFFFFFFFFFFFF80007FFF07F87FE03FFE07FF8000000000FF),
    .INITP_08(256'h07FC7FE01FFC03FF0000000000FFFFFFFFFFFFFFFF80007FFE07F87FE01FFC07),
    .INITP_09(256'hFFFFFF80007FFC07FC7FC00FF801FF0000000000FFFFFFFFFFFFFFFF80007FFE),
    .INITP_0A(256'h0000FFFFFFFFFFFFFFFF80007FF807FC3FC007F800FE0000000000FFFFFFFFFF),
    .INITP_0B(256'h00E0003C0000000000FFFFFFFFFFFFFFFF80003FF003FC1FC003F0007E000000),
    .INITP_0C(256'h000FE000FC0380000000180000000000FFFFFFFFFFFFFFFF80001FF001FC07C0),
    .INITP_0D(256'hFFFFFFFFFFFF800007C000780000000000000000000000FFFFFFFFFFFFFFFF80),
    .INITP_0E(256'h0000000001FFFFFFFFFFFFFFFFC000018000300000000000000000000000FFFF),
    .INITP_0F(256'h000000000000000000000001FFFFFFFFFFFFFFFFC00000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h04C8C8C8C8C8A8A6A6A6A6A6A6A6C60400C4A8A8A8A8A8A6A6A6C6E400000000),
    .INIT_02(256'h86A6A6C6E4000000006246666666A6A6A6C6242000004226464686A6A6C62620),
    .INIT_03(256'h0000000000000000A446664686A6A6C666204288EAE8E8E8E8C8A6A6A6A68666),
    .INIT_04(256'hA6A4A4A4A4A4A4A4A4A6A6A6A4A4A6A8AED2D492C82000000000000000000000),
    .INIT_05(256'hAEAAA6A4A4A4A4A4A4A4A4A4A6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A4A4),
    .INIT_06(256'h00000000000000000000000000000000000000000000000000000020A892D2AE),
    .INIT_07(256'hA6A68686A6A6A6868226A8A8A8A8A6A6A6A6A682000000000000000000000000),
    .INIT_08(256'h006226666666A6A6A6C62420000000E4464686A6A6C666C488C8C8C8C8C8A6A6),
    .INIT_09(256'hA246664686A6A6C6666226EAEAE8E8EAC8A6A6A6A686664686A6A6C604200000),
    .INIT_0A(256'hA6A6A8A6A6A6A6A8AAAED2D492C8000000000000000000000000000000000000),
    .INIT_0B(256'hA6A4A4A6A6A6A6A6A4A4A4A4A4A4A4A4A4A4A6A6A6A6A4A4A6A6A4A4A4A4A4A4),
    .INIT_0C(256'h00000000000000000000000000000000000020A892D2AEAEACA8A4A6A6A4A6A4),
    .INIT_0D(256'h4686A8A8A8A8A6A6A6C666400000000000000000000000000000000000000000),
    .INIT_0E(256'hA6C62440000000A4464666A6A6A68688A8C8C8C8C8A8A6A6A6A66666A6A6A6A6),
    .INIT_0F(256'h8646C8EAE8E8EAE8C8A6A6A6A666664686A6A6C624200000006246666666A6A6),
    .INIT_10(256'hA8ACB0D2D492A800000000000000000000000000000000008246664686A6A6A6),
    .INIT_11(256'hA6A4A4A4A4A4A4A4A4A4A4A6A6A6A6A6A4A4A4A4A4A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_12(256'h00000000000000000020A890D2AEAEAEACA8A6A6A6A6A4A4A4A4A4A4A4A6A6A6),
    .INIT_13(256'hA6C6042000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h26464686A6A6A6C8C8C8C8C8C8A6A6A6A666464686A6A6A6A6A8A8A8A8A8A6A6),
    .INIT_15(256'hA6A6A6A68666666686A6A6C646400000006246666666A6A6A6C6444000000042),
    .INIT_16(256'h000000000000000000000000000000008246664666A6A6A6A6C8EAEAE8E8EAC8),
    .INIT_17(256'hA4A4A4A4A6A6A6A6A6A6A8A8A6A6A6A6A6A6A4A4A4A4A6A6A6AAAEB0B2B45064),
    .INIT_18(256'h006470D2AEAEAEACAAA8A8A6A6A6A4A4A4A4A4A8C8A6A6A6A6A4A4A4A4A4A4A4),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'hC8C8C8C8A8A6A6A686C4064666A6A6A6A6A6A8A8A8A6A6A6A6A6A20000000000),
    .INIT_1B(256'h86A6A6C666400000008246666666A6A6A6C6444000000000E4464686A6A6A6A6),
    .INIT_1C(256'h00000000000000006226664666A6A6A6A6C8EAEAEAEAC8A6A6A6C64626466666),
    .INIT_1D(256'hD0D2D4D4D4CCA6A6A4A4A4A4A4A6A6A6A6A8ACB0B0B2B20C0000000000000000),
    .INIT_1E(256'hAAA8A8A6A6A4A4A4A4A4A4A8CECACECAA4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A8),
    .INIT_1F(256'h00000000000000000000000000000000000000000000000020EAB0AEAEAEACAC),
    .INIT_20(256'h2420A4464686A6A6A6A6A8A8A8A6A6A6C6666200000000000000000000000000),
    .INIT_21(256'h00A266866666A6A6A6C6444000000000A4464666A6A6A6A6C8C8C8C8A6A6A6C6),
    .INIT_22(256'h6226664666A6A6A6A6C8EAEAEAE8C8A6A6C68662C446666686A6A6C666420000),
    .INIT_23(256'hA6A4A4A6A6A6A6A6A6A8AAAEB0B0B24E42000000000000000000000000000000),
    .INIT_24(256'hA6A4A4A6A8CCD4CCA4A4A4A4A4A4A4A4A4A4A4A6A6A6A6CEFBFBFBFBF9CEA6AA),
    .INIT_25(256'h00000000000000000000000000000000646ED0AEAEAEACACAAA8A6A4A4A4A4A4),
    .INIT_26(256'hA6A6A6A8A8A6A6A6C62420000000000000000000000000000000000000000000),
    .INIT_27(256'hA6C64440000000004206464686A6A6A6A8C8C8A8A6A6A6A6820042064666A6A6),
    .INIT_28(256'hA6C8EAEAEAC8A6A6A6A6C400A446666686A6A6A68662000000C486866666A6A6),
    .INIT_29(256'hA6A6A8ACAEB0B0B0EA0000000000000000000000000000004226664666A6A6A6),
    .INIT_2A(256'hA6A6A4A4A4A4A4A4A6A4A6A6A6A8A8D2FBFBFBFBF9CEA8CCA6A4A6AAA6A6A6A6),
    .INIT_2B(256'h0000000000000000E8B0AEAEACACACAAA8A8A6A6A6A4A4A6A6A4A4A6A6A6A8A6),
    .INIT_2C(256'hA6C4000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h00C4464686A6A6A6A6C8C8A6A6A6C626200000C4464686A6A6A6A6A8A8A6A6A6),
    .INIT_2E(256'hC6242000A446666686A6A6A68682000000E486868686A6A6A6C6444000000000),
    .INIT_2F(256'h4E4200000000000000000000000000004226664666A6A6A6A6C8EAEAC8A6A6A6),
    .INIT_30(256'hA6A6A6A6A6A6CAF7FBFBFBFBF6CCA8A8A6A6A6A6A6A6A6A6A6A6A8A8AAACAEB0),
    .INIT_31(256'h4CD0AEAEACACACA8A8A6A6A6A6A4A4A4A4A4A6A6A6A6A6A6A6A6A4A4A4A4A6A6),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000042),
    .INIT_33(256'hA6C8C8A6A6A6A6A200000062264686A6A6A6A6A8A6A6A6A68662000000000000),
    .INIT_34(256'h86A6A6A6A6A200000026A8868686A6A6A6C64440000000000082264666A6A6A6),
    .INIT_35(256'h00000000000000004226664666A6A6A6A6C8EAE8A6A6A6C666620000A4466666),
    .INIT_36(256'hF9F9FBF9D2C8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8AAB09086000000000000),
    .INIT_37(256'hA6A6A6A6A6A4A4A6A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6CCF6),
    .INIT_38(256'h0000000000000000000000000000000000000000000000648ECEAEACACAAA8A8),
    .INIT_39(256'h00000000E4466686A6A6A6A6A6A6A6C624200000000000000000000000000000),
    .INIT_3A(256'h4046A8868686A6A6A6C6444000000000002006464686A6A6A6A6A6A6A6C64640),
    .INIT_3B(256'h222666666686A6A6A6C8E8C8A6A6C686A2000000A446666686A6A6A6C8C20000),
    .INIT_3C(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A8AC90A60000000000000000000000000000),
    .INIT_3D(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8CCCCCED0CECCA6A6A6),
    .INIT_3E(256'h00000000000000000000000000000084B0AEACAAA8A8A8A6A6A6A6A6A6A6A6A6),
    .INIT_3F(256'hA6A6A6A6A6A6A6C6C20000000000000000000000000000000000000000000000),
    .INIT_40(256'hA6C62420000000000000C4464686A6A6A6A6A6A6A6A6A2000000000062264686),
    .INIT_41(256'hA6C8C8A6A6A6A6C400000000A466666666A6A6A6C6E400006266A8868686A6A6),
    .INIT_42(256'hA6A6A6A6A6A686AA90A60000000000000000000000000000222666666686A6A6),
    .INIT_43(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_44(256'h0000000000000084B0CEAAA6A8AAA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_45(256'h6200000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h000062264666A6A6A6A6A6A6C64640000000000000A4486686A6A6A6A6A6A686),
    .INIT_47(256'h00000000A466666666A6A6A6C60420008266A68686A6A6A6A6C6242000000000),
    .INIT_48(256'h90A60000000000000000000000000000422666666686A6A6A6A6A6A6A6C60420),
    .INIT_49(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6AAA6A6A6A6A6A68484AA),
    .INIT_4A(256'hB0ACA6A4A8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000084),
    .INIT_4C(256'hA6A6A6A6A6A20000000000000022E64886A6A6A6A6A6C6042000000000000000),
    .INIT_4D(256'h86A6A6A6C62620004226868686A6A6A6A6C6E4200000000000000084266686A6),
    .INIT_4E(256'h0000000000000000424686666686A6A6A6A6A6A6C646420000000000A4466666),
    .INIT_4F(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A4A6A4A6A6A6A4A4A486ACB2A6000000000000),
    .INIT_50(256'hA6A4A4A4A4A4A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_51(256'h000000000000000000000000000000000000000000000084B0ACA6A4A4A6A6A6),
    .INIT_52(256'h00000000000022C668A6A6A6A6A6A68200000000000000000000000000000000),
    .INIT_53(256'h0062266686A6A6A6A6C6C4000000000000000000620686A6A6A6A6C604200000),
    .INIT_54(256'h422686666686A6A6A6A6A6C686620000000000006226666686A6A6A6C6264000),
    .INIT_55(256'hC8A8CCCAA6A4A4A6A8A6A6A4A484A8B090860000000000000000000000000000),
    .INIT_56(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8CACCD0D0CECA),
    .INIT_57(256'h0000000000000000000000000000006490CEA8A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_58(256'hA466A6A6A6C62420000000000000000000000000000000000000000000000000),
    .INIT_59(256'hA6A682000000000000000000004206A6C6A6C666620000000000000000000020),
    .INIT_5A(256'hA6A6A6A6C40000000000000000C4466686A6A6A6C64640000000420666A6A6A6),
    .INIT_5B(256'hA8A8A6A4A6A8AEB24E20000000000000000000000000000000A4668686A6A6A6),
    .INIT_5C(256'hA6A6A6A4A4A6A6A6A6A6A6A6A6A6A6CAD2D4F7F9FBFBFBF6D0CCCCAAA6A6A6A6),
    .INIT_5D(256'h00000000000000222CD0ACA8A4A4A4A4A4A4A4A4A4A4A4A6A6A6A6A6A6A6A6A6),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h00000000000020E486A6468200000000000000000000000000A466C6C6868200),
    .INIT_60(256'h000000000020C44686A6A6A6C626200000000022E486C6A6C646400000000000),
    .INIT_61(256'h2E2000000000000000000000000000000020A44686A6A6A6A6A6C62420000000),
    .INIT_62(256'hA6A6A6A6A6A6A6A8CED7FBFBFBF9D4D2CEA8A6A4A4A4A4A4A6A8A6A6AAAEB0B2),
    .INIT_63(256'h0CD2AEACA8A6A4A4A4A4A4A4A4A4A4A6A6CACCCAD0D0A6A4A4A4A4A4A4A4A6A6),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000020),
    .INIT_65(256'h6282420000000000000000000000000000008204248200000000000000000000),
    .INIT_66(256'h46A6A6A6C80420000000000020E486A686820000000000000000000000000020),
    .INIT_67(256'h00000000000000000000008226A6A6A6A6C686620000000000000000000000A4),
    .INIT_68(256'hA6A8CECECCA8A6A6A4A4A4A4A4A4A4A4A6A8AAACAEAED2D45042000000000000),
    .INIT_69(256'hA4A4A4A4A4A4A4A6A6A6A6A6CACAA6A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A6A6),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000424CD2B0AECEAAA8A6),
    .INIT_6B(256'h0000000000000000000000202000000000000000000000000000000000000000),
    .INIT_6C(256'h00000000002082C2820000000000000000000000000000000000000000000000),
    .INIT_6D(256'h000000006246A6C6C686A2000000000000000000000000008246C6C6A6A20000),
    .INIT_6E(256'hA4A4A4A4A4A4A6A8AAACCCAECED0D2D292C80000000000000000000000000000),
    .INIT_6F(256'hA4A4A6A6A6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A4A6A6A4A4A4A4A4A4),
    .INIT_70(256'h000000000000000000000000000000A6AED0AECECECCCCAAA8A6A4A4A4A4A4A4),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h26A2000000000000000000000000000000620446C42000000000000000000000),
    .INIT_74(256'hCCCCCECED0B0B0D2B22C2000000000000000000000000000000000000062E426),
    .INIT_75(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A6A6A4A6A6A4A4A4A4A4A6A6A8A8AACA),
    .INIT_76(256'h0000000000002008CEAEAEACACCECCCCAAAAA8A6A6A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000020400000000000000000000000000000000000000000),
    .INIT_7A(256'hB04C200000000000000000000000000000000000000000402000000000000000),
    .INIT_7B(256'hA4A4A4A4A4A4A6A4A4A4A4A4A6A6A6A6A8A8A8AAAAAACACCCCCECEAEAAACB0B0),
    .INIT_7C(256'hCEAEACAAA8AACCCCCCCACAAAAAA8A8A6A6A6A6A6A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000002028),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFC000000000000000000000000000000001FFFFFFFFFFFFFFFFC000000000),
    .INITP_01(256'h01FFFFFFFFFFFFFFFFC000000000000000000000000000000001FFFFFFFFFFFF),
    .INITP_02(256'h0000000000000001FFFFFFFFFFFFFFFFC0000000000000000000000000000000),
    .INITP_03(256'h000000000000000000000000000001FFFFFFFFFFFFFFFFC00000000000000000),
    .INITP_04(256'hFFFFFFFFFFC000000000000000000000000000000001FFFFFFFFFFFFFFFFC000),
    .INITP_05(256'h00000000FFFFFFFFFFFFFFFF8000000000000000000000000000000000FFFFFF),
    .INITP_06(256'h0000000000000000000000FFFFFFFFFFFFFFFF80000000000000000000000000),
    .INITP_07(256'hFF00000000000000000000000000000000007FFFFFFFFFFFFFFF800000000000),
    .INITP_08(256'h3FFFFFFFFFFFFFFF00000000000000000000000000000000007FFFFFFFFFFFFF),
    .INITP_09(256'h000000000000001FFFFFFFFFFFFFFE0000000000000000000000000000000000),
    .INITP_0A(256'h00000000000000000000000000000FFFFFFFFFFFFFF800000000000000000000),
    .INITP_0B(256'hFFFFFF80000000000000000000000000000000000007FFFFFFFFFFFFE0000000),
    .INITP_0C(256'h000000003FFFFFFFFFFE00000000000000000000000000000000000001FFFFFF),
    .INITP_0D(256'h000000000000000000000007FFFFFFFFF0000000000000000000000000000000),
    .INITP_0E(256'h000000000000000000000000000000000000007FFFFFFF000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000007FFF800000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'hA6A6A6A8A8A8A8C8CACACAAAAACACACCCCACA8A6A8ACAEB0B04C200000000000),
    .INIT_02(256'hCCCCCCCAAAAAA8A8A8A8A8A8A8A8A6A6A6A6A6A4A4A4A4A4A4A4A4A4A6A6A6A6),
    .INIT_03(256'h000000000000000000000000000000000000000000002028CEAEACACA8A4A6AA),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hCACAAACACACAAAA8A6A4A4A8A8AAAEAEB04C2000000000000000000000000000),
    .INIT_08(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6A6A6A8A8A8A8A8A8A8A8A8A8A8C8C8),
    .INIT_09(256'h0000000000000000000000000000202ACEACACACA8A6A4A4A6A8AACACACACAA8),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hA4A6A6A6A8ACAEAEAE4C20000000000000000000000000000000000000000000),
    .INIT_0E(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8C8A8A8A8A6A6A4A4),
    .INIT_0F(256'h000000000000202ACEACACACAAA8A6A4A4A4A4A6A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'hAE4E200000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A4A4A4A4A4A4A6A6A6A6A6AAACACAC),
    .INIT_15(256'hD0ACACAAA8A6A6A6A6A4A4A4A4A4A4A6A6A6A6A6A6A6A8A8A8A8A8A8A8A8A8A8),
    .INIT_16(256'h000000000000000000000000000000000000000000000000000000000000202A),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'hA6A6A6A6A6A6A6A4A4A4A4A4A6A6A6A6A6A6A6A6AAACAAACB24E200000000000),
    .INIT_1B(256'hA4A6A6A6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_1C(256'h00000000000000000000000000000000000000000000202AD0ACAAAAA8A6A4A4),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'hA6A6A6A6A6A6A4A4A4A4A6A6A8AAACB0B24E2000000000000000000000000000),
    .INIT_21(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_22(256'h0000000000000000000000000000202CD0AEACAAAAA8A6A4A4A4A4A4A6A6A4A4),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'hA4A6A6A8AAACB0B0B22E20000000000000000000000000000000000000000000),
    .INIT_27(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A8A8A8A8A8A6A6A4A4A4A4),
    .INIT_28(256'h00000000000020E8B0AEACACAAA8A8A6A4A4A4A4A4A4A4A6A6A6A6A6A6A4A4A4),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'hB0C8000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'hA6A6A6A6A6A6A6A6A8CACECED0CECCA8A6A4A4A4A4A4A4A6A6A8AAACACAEAEB0),
    .INIT_2E(256'h8EAEACACACACAAA8A6A4A4A4A4A4A4A4A4A4A6A6A8A6A6A6A6A6A4A6A6A6A6A6),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000084),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'hA8A8A8A8A6A6A4A4A4A6A6A6A6A6A6A8AAAAACACACAEAEB09086000000000000),
    .INIT_34(256'hAAA8A6A6A6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A6A6A8A8A6A6A6A6A6),
    .INIT_35(256'h0000000000000000000000000000000000000000000000646EAEACAAACACACAA),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'hAAA8A8A8A8A8AAAAAAAAAAACACACAEB04E420000000000000000000000000000),
    .INIT_3A(256'hA6A6A6A6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A6A8A8A8AA),
    .INIT_3B(256'h00000000000000000000000000000020E8AEACAAAAAAACAAAAAAAAA8A8A6A6A6),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'hAAAAAAACACACAEB0C80000000000000000000000000000000000000000000000),
    .INIT_40(256'hA6A6A6A6A6A4A4A4A4A4A6A6A4A4A6A6A6A8AAAAAAAAAAA8A8A8A8A8A8A8AAAA),
    .INIT_41(256'h0000000000000000422AACAAAAAAAAAAAAAAAAA8A8A8A8A8A8A8A8A8A6A6A6A6),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h4200000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'hA6A6A8A6A6A6A6A6A6A6A8A8A8A8A8A8A8A8A8A8A8A8A8AAAAAAAAAAACACAE2C),
    .INIT_47(256'h00A68CAAAAAAAAAAAAAAAAA8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A8A6A6A6A6A6),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8AAAAAAAAAAAAAC8C0A640000000000000000),
    .INIT_4D(256'hAAAAA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000020A66AAAA8A8A8),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'hA8A8A8A8A8A8A8AAAAAAAAAC6CC6200000000000000000000000000000000000),
    .INIT_53(256'hA8A8A6A8A6A6A6A8A8A8A6A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_54(256'h00000000000000000000000000000000000020A64AA8A8A8A8A8A8A8A8A8A8A8),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'hAAAA6AE642000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'hA6A6A6A8A8A6A6A6A6A6A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8AAAA),
    .INIT_5A(256'h000000000000000000000000620888A8A8A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8AAAA6AE6842000000000),
    .INIT_60(256'h00000000002084086888A8A8A8A8A8A8A8A8A6A6A6A8A6A6A8A8A8A8A8A8A6A6),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'hA8A8A8A8A8A8A8A8A8A8A8A8AA6A28A642000000000000000000000000000000),
    .INIT_66(256'h62A40688A8A8A8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A6),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000020),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'hA88A6A28C6622000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h88A8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8A8A8A8A8A8A8),
    .INIT_6D(256'h00000000000000000000000000000000000000000000000000002084E8286A88),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h88A8A8A8A8A8A6A6A6A6A6A6A8A8A8A8A88888888A6A2808E884422000000000),
    .INIT_73(256'h000000000000000000000000000000000000000000204262C60806488A888886),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h060604040628282808A462626462200000000000000000000000000000000000),
    .INIT_79(256'h000000000000000000000000000000000000004264646282C608080828060406),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input [15:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ;
  wire [15:0]addra;
  wire clka;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000005500540000000000000000000005501590000000000000000000),
    .INIT_01(256'h0000000550000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000001550001000000000000000000),
    .INIT_03(256'h0001550000000000000000000000000000155000000000000000000000000000),
    .INIT_04(256'h6000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000155000000000000000000000000000015),
    .INIT_06(256'h0000000000000000000000000011A00000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000019500),
    .INIT_08(256'h00000000000000000000000195000000000000000000000000000006A0000000),
    .INIT_09(256'h00000000000000000016A0000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000001954000000000),
    .INIT_0B(256'h0000000000000000555000000000000000001554000001559000000000000000),
    .INIT_0C(256'h0000000005568000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000055550000000000000000),
    .INIT_0E(256'h0000000054154000000000000000000000000556800000000000000000000000),
    .INIT_0F(256'h0156400000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000001405000000000000000001000000),
    .INIT_11(256'h0500000000000000000000000000015500000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000010000000000000000000000000001540000),
    .INIT_14(256'h0000000000000000000001500000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000400000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000400000000000000),
    .INIT_17(256'h0000000000014000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0500000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000040000000000000000),
    .INIT_1C(256'h0000000000001040000000000010400000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000010000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000200000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000004000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000080010000000000000000000000),
    .INIT_19(256'h030000C000000000000000000000000000000000000000000001800180000000),
    .INIT_1A(256'h00000000000000060000C0000000000000000000000000000000000000000000),
    .INIT_1B(256'h00000000000000000000000000000E0000700000000000000000000000000000),
    .INIT_1C(256'h30000000000000000000000000000000000000000080003C00E0000000000000),
    .INIT_1D(256'h0000000000141000000000000000000000000000000000000000000000000400),
    .INIT_1E(256'h0000000000000000000000001410000000000000000000000000000000000000),
    .INIT_1F(256'h000000000000000000000000000000000000000C000000000000000000000000),
    .INIT_20(256'h000C0000000000000000000000000000000000000000000000000C0000000000),
    .INIT_21(256'h00000000000000000C0010000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000800000000100000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000002000000000000000),
    .INIT_24(256'h00000000000040000000000000000000000001FE000000000000040000000020),
    .INIT_25(256'h001FF80000000000000000000040000000000000000000000000FFF000000000),
    .INIT_26(256'h3FFFC007FFF8000000000000000000000000000080000000000FC1801FFE0000),
    .INIT_27(256'h0001800000000007FFE0003FFE00000000000000000000000000008000000000),
    .INIT_28(256'h0000000000000000010000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000100000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000004000000000000000000000000000000000),
    .INIT_2E(256'h0200000000000000000000000000000000000000000000000002000000000000),
    .INIT_2F(256'h0000000000000002000000000000000000000000000000000000000000000000),
    .INIT_30(256'h8000003C0000000000000040000700000000000000000007F8000000F0000000),
    .INIT_31(256'h0000000000003FC000000E0000000000000000000100000000000000000003FF),
    .INIT_32(256'hC000010380000000000000000000000000000000000000000040000003000000),
    .INIT_33(256'h00000000000001C000000F800000000000000000000000000000000000000001),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'hC000000000000000000000000000000000000000000000000080000000000000),
    .INIT_36(256'h00000300000000C0000000000000000000000000000000000000000300000000),
    .INIT_37(256'h0000000000000000000600000000400000000000000000000000000000000000),
    .INIT_38(256'h0030000000000000000000000000000000000001800000000000000000000000),
    .INIT_39(256'h00000060000000001E0000000000000000000000000000000000000040000000),
    .INIT_3A(256'h00000000001E00000000580000000007E0003FE0000000000000000000000200),
    .INIT_3B(256'h01FFC00000000000000000003C00000000780000000001F0000FFF0000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000030000000000C00000000003800),
    .INIT_3D(256'h000000000080000000000000000000000000000000000000000000000000E004),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000100000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000020000000000000000),
    .INIT_56(256'h0000000000010000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000100000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000001000000000000000000000000),
    .INIT_59(256'h0000800000000000000000000000000000000000000000000000008000000000),
    .INIT_5A(256'h0000000000000000008000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000040000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000400000000000000000),
    .INIT_5D(256'h0000000000200000000000000000000000000000000000000000000000004000),
    .INIT_5E(256'h0000000000000000000000002000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000010000000000000000000000000),
    .INIT_60(256'h0018000000000000000000000000000000000000000800000000100000000000),
    .INIT_61(256'h00000010000003000C0000000000000000000000000000000000000008000000),
    .INIT_62(256'hC000000000000000000070000002400F00000000000000000000000000000000),
    .INIT_63(256'h0000000000000060000000000000000000E00000022007800000000000000000),
    .INIT_64(256'h0000022003C0000018000200000000000000000000000001E00000022007C000),
    .INIT_65(256'h0000000000000000000200000000000C000180000000000000000000000001C0),
    .INIT_66(256'h0000000000000000000000000000000001000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000002000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000002000000070060000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000030000000000E00000000000000000000),
    .INIT_6B(256'h0000000300000000000000000000000000000000000000200000000006000000),
    .INIT_6C(256'h0000000000400000000001000000000000000000000000000000000000004000),
    .INIT_6D(256'h000000000000000000000000C000000000010000000000000000000000000000),
    .INIT_6E(256'hC000000000000000000000000000000000000080000000000180000000000000),
    .INIT_6F(256'h03000000000000E0000000000000000000000000000000000001800000000000),
    .INIT_70(256'h0000000000000006000000000000700000000000000000000000000000000000),
    .INIT_71(256'h00000000000000000000000000000C0000000000003800000000000000000000),
    .INIT_72(256'h0000001E0000000000000000000000000000000000180000000000003C000000),
    .INIT_73(256'h0000002000020000F8000E000000000000000000000000000000000030000000),
    .INIT_74(256'h0000000000000000000000000200000400070000000000000000000000000000),
    .INIT_75(256'h8000000000000000000000000000000000400000000100000300000000000000),
    .INIT_76(256'h0000000108000080000000000000000000000000000000000000000000080001),
    .INIT_77(256'h0000000000008000000000200000800000000000000000000000000000000080),
    .INIT_78(256'h0000000000000000000000000080000000000000008000000000000000000000),
    .INIT_79(256'h0000008000000000000000000000000000000000800000000000000080000000),
    .INIT_7A(256'h000080000000000C000080000000000000000000000000000000008000000000),
    .INIT_7B(256'h0000000000000000000000000000C10001800000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000040000800000300018000000000000000),
    .INIT_7D(256'h0000000000078000000000000000000000000000000000400000000000000380),
    .INIT_7E(256'h00000000000000000000000001C0000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000001800000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000FF8000000000000000000000000000000000000000000000007E00000),
    .INITP_0C(256'h000000000000000000001FFC0000000000000000000000000000000000000000),
    .INITP_0D(256'h00000000000000000000000000000000003FFE00000000000000000000000000),
    .INITP_0E(256'hFE00000000000000000000000000000000000000000000003FFE000000000000),
    .INITP_0F(256'h0000000000003FFE00000000000000000000000000000000000000000000003F),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000202020200000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h00000000840A4A28262808A44200000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'hA68688882A620000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h000000000000000000000000000000000000000000000000000020C66CAAA8A6),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h000000000000000000000000000000000000A68AA6868686868686A8882A6400),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h000000000000000000424AA88484868686868AAE88880A000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h00848A84848484848486AEB6AA864A4200000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h8484ACD7AC868AA6000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000082888684848484),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h000000000000000000000000000000000082868484848484848486ACA88688A4),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000000000000000000000003FFE0000000000000000000000000000000000),
    .INITP_01(256'h00000000000000000000000000000000000000003FFE00000000000000000000),
    .INITP_02(256'h00001FFC00000000000000000000000000000000000000000000003FFC000000),
    .INITP_03(256'h0000000000000000000FF8000000000000000000000000000000000000000000),
    .INITP_04(256'h000000000000000000000000000000000FF00000000000000000000000000000),
    .INITP_05(256'h00000000000000000000000000000000000000000000000FF800000000000000),
    .INITP_06(256'h00000000007FFE00000000000000000000000000000000000000000000001FFC),
    .INITP_07(256'h000000000000000000000000FFFF000000000000000000000000000000000000),
    .INITP_08(256'h00000000000000000000000000000000000000FFFF0000000000000000000000),
    .INITP_09(256'h03FFFFC000000000000000000000000000000000000000000001FFFF80000000),
    .INITP_0A(256'h0000000000000007FFFFE0000000000000000000000000000000000000000000),
    .INITP_0B(256'h00000000000000000000000000000FFFFFF00000000000000000000000000000),
    .INITP_0C(256'hF0000000000000000000000000000000000000000FFFFFFFFFE0000000000000),
    .INITP_0D(256'h00001FFFFFFFFFF0000000000000000000000000000000000000001FFFFFFFFF),
    .INITP_0E(256'h0000000000000000001FFFFFFFFFF00000000000000000000000000000000000),
    .INITP_0F(256'h000000000000000000000000000000001FFFFFFFFFF000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000008286848484848484848484848668840000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0084888484848484848484848686484200000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h848484848486C600000000000000000000000000000000000000000000000000),
    .INIT_11(256'h000000000000000000000000000000000000000000000000004228A684848484),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h000000000000000000000000000000000000A4688484848484848484866A6400),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000020E6868484848484848466A600000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000006248A48484A4A6A686E600000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'hA6A8A8862A420000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h000000000000000000000000000000000000000000000000000020A66AA6A6A6),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h000000000000000000000000000000000020A66CAAA6A6A6A8AAAAA8AC2C4200),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000420CB0ACA6A6A6A6A6A6A6A6A8AC2C420000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0AB2ACA8A6A6A6A6A6A6A6A6A6AAAE0C42000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000020),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'hA6A6A6A6A6A8AEB0C80000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000A690CEAAA6A6A6A6A6),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h70A6000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000020A670D0ACA8A6A6A6A6A6A6A6A6A6A6A6ACB0),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000020A690D2AEAAA6A6A6A6A6A6A6A6A6A6A6A6A8AED270620000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'hACA8A6A6A6A6A6A6A6A6A6A6A6A6A8AED0B20C42000000000000000000000000),
    .INIT_56(256'h00000000000000000000000000000000000000000000000000000000A690D2B0),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'hA8A8A8A8A8AAAAAEB0D2B20C6462646464444200000000000000000000000000),
    .INIT_5C(256'h00000000000000000000000020426262626262A870D4D2D0AEACAAA8A8A8A8A8),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'hAAAAACAC8C8C8E8E909050C82000000000000000000000000000000000000000),
    .INIT_62(256'h000000640666668A908C8A8AACAAAAAAAAAAAAA8A8A8A8A8A8AAD0D4D6D2AAA8),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'hAAACB07086000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'hAEA8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8ACCED9FBD4A8A6A6A6A8AAA6A8A8A8),
    .INIT_69(256'h000000000000000000000000000000000000000000000000000064488684A6AC),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'hA6A6A4A4A6A6A6AACCCEAAD2D9D2A8A6A6A6AAD2A88686868686A88EEA000000),
    .INIT_6F(256'h000000000000000000000000000000000000E6A8848486ACAA8484A4A4A6A6A6),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'hAAD0AAD0D9D2A8A6A6A6A8D2AEA8A8868686868AE80000000000000000000000),
    .INIT_75(256'h00000000000000000000E6A6848486AAA88484A4A4A4A4A4A4A4A4A4A4A4A6A8),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'hA6A6A6AAA8A6A68684868688E600000000000000000000000000000000000000),
    .INIT_7B(256'h0000E6A88486A8AAA684848484A4A4A4A4A4A4A4A4A4A4A4A6CAA8CED6D2A8A6),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFF0000000000000000000000000000000000000001FFFFFFFFFF0000000),
    .INITP_01(256'h00000000001FFFFFFFFFF0000000000000000000000000000000000000001FFF),
    .INITP_02(256'h0000000000000000000000000FFFFFFFFFF00000000000000000000000000000),
    .INITP_03(256'h000000000000000000000000000000000000000FFFFFFFFFE000000000000000),
    .INITP_04(256'h0007FFFFFFFFC000000000000000000000001FFFE0000000000007FFFFFFFFE0),
    .INITP_05(256'hFFFFF8000000000003FFFFFFFFC000000000000000FE0000007FFFF000000000),
    .INITP_06(256'hFFFFE1FFFFFC01FFFFFE000000000003FFFFFFFF8000000000FFFF81FFFFF000),
    .INITP_07(256'hFFFF800000001FFFFFF1FFFFFE03FFFFFF000000000001FFFFFFFF8000000007),
    .INITP_08(256'h0000000001FFFFFFFF000000003FFFFFF8FFFFFF03FFFFFF000000000001FFFF),
    .INITP_09(256'hFFFF87FF83FE000000000000FFFFFFFF000000007FFFFFFC3FFFFF87FFFFFF00),
    .INITP_0A(256'h0000FFFFFFFC0FFFFF87FF01FE000000000000FFFFFFFF00000000FFFFFFFC1F),
    .INITP_0B(256'h007FFFFFFE00000001FFFE3FF80001FF07FE01FE000000000000FFFFFFFE0000),
    .INITP_0C(256'h01FE0000000000007FFFFFFE00000001FFF01FF00000FF03FC01FE0000000000),
    .INITP_0D(256'h1FF00000FF01FC01FF0000000000007FFFFFFE00000003FFC01FF00000FF03FC),
    .INITP_0E(256'hFE00000003FF001FF00000FF01FE01FF0000000000007FFFFFFE00000003FF80),
    .INITP_0F(256'h000000007FFFFFFE00000003FE001FF03F00FF00FF01FF0000000000007FFFFF),
    .INIT_00(256'h84848488E8000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h84848484A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6CCD4D2A8A6A6A6A6A4A4A6A686),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000084888486A8A8),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hA6A6A6A6A4A6A6A6A6A4A6AAD4D2A6A6A6A4A6A6A6A6A6848484A6ACEA000000),
    .INIT_08(256'h000000000000000000000000000000000000626CA684A8A8848484A4A4A4A6A6),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hA6A6A6A8D2D0A6A6A4A6A8A8A6A6A6868484AA90A60000000000000000000000),
    .INIT_0E(256'h00000000000000000000222CAC86A8A884A484A4A4A4A6A8A8A8A6A6A6A6A8A6),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'hA6A8AAA6A6A6A6A684A6AE704200000000000000000000000000000000000000),
    .INIT_14(256'h000000A690AAA6A484A4A4A4A4A4A6A8A8A8A8A8A8A8A8A8A8A6A6A6A8A8A6A6),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h86AAB2EA00000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h84A4A4A4A4A4A6A8A8A8A8A8A8A8A8A8A8A8A8A6A6A6A6A8A8AAA8A6A6A6A6A4),
    .INIT_1B(256'h000000000000000000000000000000000000000000000000000000422CAEA884),
    .INIT_1C(256'hC6A4A48484624220224220000000000000000000000000000000000000000000),
    .INIT_1D(256'h00000000000000000000000000000000000000000000000000000000428284A4),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8AAAAA8A6A6A6A6A4A8B0706400000000),
    .INIT_21(256'h00000000000000000000000000000000000000008690ACA684A4A4A4A4A4A6A8),
    .INIT_22(256'h4A6A086200000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h000000000000000000000000000000000020820668AACCCCECCECEACAC8C6A4A),
    .INIT_24(256'h0000000000000000000000000000000020424242422020000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'hA8A8A8A8A8A8A8A8AAAAA8A6A6A6A486AAB2EA00000000000000000000000000),
    .INIT_27(256'h000000000000000000000000202CCEA884A4A4A4A4A4A6A8A8A8A8A8A8A8A8A8),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h00000000000000006206CAECECECECECECEEEEEEF0F0F0F0EEEEEE8AA4000000),
    .INIT_2A(256'h420000000000006206686A6A6A4A28E8C6A6A484626242422242424200000000),
    .INIT_2B(256'h0000000000000000000000000000000020204262826262626242424242426262),
    .INIT_2C(256'hAAAAA8A6A6A6A4A6AE7064000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000A68EAAA4A4A4A4A4A4A6A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h88EAEAEAEAEAECECECECECECECECECEEEEEEEEEECCE622000000000000000000),
    .INIT_30(256'hEAECECECEEF0F0F0F0EEEECEAC8C6A4A4A4A6A6AE64200000000000000000082),
    .INIT_31(256'h00000000002062E626486AACACACAC8C8C6A6A6A6A6A8AAC6AC6200000002046),
    .INIT_32(256'hB0EA000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'hA6A4A4A4A4A6A6A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8AAAAA6A6A6A4A4AA),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000424CCE),
    .INIT_35(256'hCAC8C8C8A8A8C8C8C8CACACAEACA064200000000000000000000000000000000),
    .INIT_36(256'hEEF0F0F0F0F0F0F0F0EEEEEEEE4A64000000000000006288EAEAEAEAEAEAEAEA),
    .INIT_37(256'hECECECECEEEEEEEEEEF0F0F0EEEEEEEEEEEE284200006266E8EAEAEAECECEEEE),
    .INIT_38(256'h00000000000000000000000000000000000000000000000000000000A426AAEC),
    .INIT_39(256'hA8A8A8A8A8A6A6A6A6A8A8A8A8A8A8A8AAA8A6A6A6A4A6AC7064000000000000),
    .INIT_3A(256'h00000000000000000000000000000000000000000020E8AEA88484A4A4A6A6A8),
    .INIT_3B(256'hA6A6A6A6A6A6C626420000000000000000000000000000000000000000000000),
    .INIT_3C(256'hEEEEEEEEEEEE8CA400000000002046EAEAEAEAEAEAEAC8A8A6A6A6A6A6A6A6A6),
    .INIT_3D(256'hEEEEEEEEEEEEEEEEECEEEE6A84002006A8C8EAEAEACACACACACAECECECECEEEE),
    .INIT_3E(256'h0000000000000000000000000000000000004206CAECECECECECECECECECECEC),
    .INIT_3F(256'hA6A6A6A8A8A8A8AAA8A6A6A6A6A4A8B02C200000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000646EACA6A4A4A4A4A6A8A8A8A8A6A6A6A6A6),
    .INIT_41(256'hA200000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'hC420000000A4A8E8E8EAEAEAE8A8A6A6A6A6A6C6C6C6A6A6A6A6A6A6A6A6A6A6),
    .INIT_43(256'hCACACAEA688200420688C8C8A8A6A6A6A6A6A6A6A8A8C8C8CACACACACACAEA88),
    .INIT_44(256'h0000000000000000006248EAEAEAEAEAECECECEAEACACAC8C8C8CACACACACACA),
    .INIT_45(256'hA6A6A6A4A4A4AA90A60000000000000000000000000000000000000000000000),
    .INIT_46(256'h000000000000202ACEA6A4A4A4A4A4A6A8A8A6A6A4A4A4A4A4A4A6A6A8A8A8A8),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'hC8E8E8C8A6A6A6A6A6A68666666686A6A6A6A6A6A6A6A6868200000000000000),
    .INIT_49(256'h20C468A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C6A6A400000004C8C8),
    .INIT_4A(256'h6268EAEAEAEAEAEAEAEAC8A8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C6868200),
    .INIT_4B(256'h4200000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'hAEAAA4A4A4A4A4A4A6A6A6A4A4A4A4A4A4A4A4A6A6A8A8A6A6A6A6A4A4A4AC4E),
    .INIT_4D(256'h00000000000000000000000000000000000000000000000000000000000020C6),
    .INIT_4E(256'h66E4A262628206666686A6A6A6A6A6E400000000000000000000000000000000),
    .INIT_4F(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6E400002026C8A8C8C8C8A6A6A6A6A6),
    .INIT_50(256'hC8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C6E40000008446A6C6A6A6),
    .INIT_51(256'h00000000000000000000000000000000000000000000004046EAEAEAEAEAEAEA),
    .INIT_52(256'hA4A6A4A4A4A4A4A4A4A4A4A4A6A6A6A6A6A6A6A4A4A6AC0A0000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000646EACA4A4A4A4A4A4),
    .INIT_54(256'h464686A6A6A686A2000000000000000000000000000000000000000000000000),
    .INIT_55(256'hA6A6A6A6A6A6A6A6666200004026A8A8A8C8A8A6A6A6A626620000000000C466),
    .INIT_56(256'hA6A6A6A6A6A6A6A6A6A6A6A6C6A6C400000000622666666666666686868686A6),
    .INIT_57(256'h000000000000000000000000000000E4EAEAEAEAEAEAE8A8A6A6A6A6A6C6A6A6),
    .INIT_58(256'hA4A4A4A4A4A6A4A4A4A4A6A4A4A68EA800000000000000000000000000000000),
    .INIT_59(256'h000000000000000000000000000000202CCEA6A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'hE400000020048686A8A8A6A6A6A64662000000000000C466464686A6A6A6A6A4),
    .INIT_5C(256'hA6A6A6A666C42000000000002062626262828282A2A2C446868686A6A6A6A6A6),
    .INIT_5D(256'h0000000000006268EAE8EAEAEAC8A6A6A6A6A6A6864604E4C4C40486868686A6),
    .INIT_5E(256'hA4A4A6A4A4A66E64000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000020C6AEA88484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h86A6A6A6A6A6C400000000000000A466464666A6A6A6A6C40000000000000000),
    .INIT_62(256'h000000000000000000000000000020E466666686A6A6A686A200000000C46666),
    .INIT_63(256'hC8C8E8EAC8A6A6A6A6A666048240000000006246666666A6A6A6A66682000000),
    .INIT_64(256'h000000000000000000000000000000000000000000000000000000000000E4C8),
    .INIT_65(256'h84B0AA8484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A4A4A82C20),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h000000000000A466664666A6A6A6A6E400000000000000000000000000000000),
    .INIT_68(256'h00000000000020E466464686A6A6A686A2000000008226466686A6A6A6A6C200),
    .INIT_69(256'hA6468200000000000000622666466686A6A6C626200000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000004246C8C8C8C8C8A6A6A6A6),
    .INIT_6B(256'hA4A6A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A684A4AA2C200000000000000000),
    .INIT_6C(256'h00000000000000000000000000000000000000000000000084B0AA8484A4A4A4),
    .INIT_6D(256'h664666A6A6A6A604000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h66464686A6A6A686A20000000020C4464686A6A6A6A6E400000000000000A266),
    .INIT_6F(256'h0000622666666686A6A6C64642000000000000000000000000000000000000C4),
    .INIT_70(256'h000000000000000000000000008266C8A8C8C8A8A6A6A6A64662000000000000),
    .INIT_71(256'hA4A4A6A4A4A4A4A4A4A6A684A4AA4E2000000000000000000000000000000000),
    .INIT_72(256'h00000000000000000000000000000000424CAA8484A4A4A4A4A6A4A4A4A4A4A4),
    .INIT_73(256'h2000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'hA2000000000042064666A6A6A6A64662000000000000A266664666A6A6A6C624),
    .INIT_75(256'hA6A6C64662000000000020426242220000000000000000A246464686A6A6A686),
    .INIT_76(256'h0000000000A488A8A8A8A8A6A6A6A66682000000000000000000422666666686),
    .INIT_77(256'hA4A4A4A4A4AC4E20000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000422AAA8484A4A4A4A4A4A4A4A4A4A4A4A4A4A6A4A4A4A4A4),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0668A6A6A6A6A646C6A6C4C662008266664666A6A6A6C6242000000000000000),
    .INIT_7B(256'h00A4486A8A6A4A08C6846462624242C446464686A6A6A6A6A200000000000062),
    .INIT_7C(256'hA8A8A8A6A6A6A6E400000000000000000000420666666686A6A6C66662000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000C4A8A6),
    .INIT_7E(256'h848EAAA4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A6A6A6A6A6A6A6A4A4A4A6AC4E20),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [15:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [15:0]addra;
  wire clka;
  wire [3:3]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFF001FFFFF0000000000007FFFFFFE00000003FE001FF07FFFFF007FF9FF0000),
    .INITP_01(256'h03FE001FF07FFFFF000FFFFF0000000000007FFFFFFE00000003FE001FF07FFF),
    .INITP_02(256'hFFFFFFFF80000003FE001FF03FFFFF000FFFFF000000000000FFFFFFFF000000),
    .INITP_03(256'hFF000000000003FFFFFFFF80000003FE001FF01FFFFF000FFFFF000000000001),
    .INITP_04(256'hF003FFFF007FFFFF000000000003FFFFFFFF80000001FE001FF007FFFF003FFF),
    .INITP_05(256'hC0000000FE001FF0000FFF00FFFFFF000000000003FFFFFFFF80000001FE001F),
    .INITP_06(256'h000007FFFFFFFFC00000007F001FF00000FF03FFFFFF000000000003FFFFFFFF),
    .INITP_07(256'h0FFFF1FF000000000007FFFFFFFFC00000007F001FF00000FF07FFF9FF000000),
    .INITP_08(256'h1FF01FF00000FFBFFFC3FF000000000007FFFFFFFFC00000003F801FF00000FF),
    .INITP_09(256'hFFFFFFE000000007FE1FF0F800FFFFFF83FF000000000003FFFFFFFFC0000000),
    .INITP_0A(256'h00000000001FFFFFFFFFF800000003FFFFF1FFFFFFFFFF03FF000000000003FF),
    .INITP_0B(256'hFFFFFFFFFC01FF00000000003FFFFFFFFFFC00000001FFFFF3FFFFFFFFFE03FF),
    .INITP_0C(256'h000000003FFFF0FFFFFFFFF000FE00000000003FFFFFFFFFFC00000000FFFFF1),
    .INITP_0D(256'h001FFFFFFFFFF8000000001FFFF07FFFFF8FE0007E00000000003FFFFFFFFFFC),
    .INITP_0E(256'h00000000000000000FFFFFFFFFE00000000007FFF03FFFFF87C0001C00000000),
    .INITP_0F(256'h0007F00007FF000000000000000000007FFFFFFC0000000000007FF00FFFFF83),
    .INIT_00(256'hCACEEEEE6A84A446664666A6A6A6C62420000000000000000000000000000000),
    .INIT_01(256'hF0CEAE8C8C6A6A8A88664666A6A6A6A6A200000000000000420688A6A6A6A6C8),
    .INIT_02(256'h00000000000000000000420666666686A6A6C6666200000082A8ECECECEEEEF0),
    .INIT_03(256'h000000000000000000000000000000000000000000C4868686A8A6A6A6A66682),
    .INIT_04(256'hA6A6A4A4A4A4A4A4A6A6A6A6AAD2D4D0A6A6A6A6A6AC2C200000000000000000),
    .INIT_05(256'h00000000000000000000000000000000000000000000000084B0AAA4A6A4A4A6),
    .INIT_06(256'h664666A6A6A6C646400000000000000000000000000000000000000000000000),
    .INIT_07(256'hECAA6666A6A6A6A6A2000000000000000022E686A6A6A6A6A6CAEEEEEECC6A68),
    .INIT_08(256'h0000420666666686A6A6C66682000000C4C8E8EAEAECECEEEEF0F0F0F0F0F0EE),
    .INIT_09(256'h00000000000000000000000000A266868686A6A6A6C626200000000000000000),
    .INIT_0A(256'hA6A6A6A6CCF9FBD4A8A6A4A6A6AC4E6200000000000000000000000000000000),
    .INIT_0B(256'h00000000000000000000000000000000A6B0AAA6A4A4A4A6A6A6A6A4A4A4A6A6),
    .INIT_0C(256'h4200000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'hC200000000000000000020A466A6A6A6A6A6A8CAECECECCA684666A6A6A6C646),
    .INIT_0E(256'hA6A6C666820000006246A8C8EAEAEACACACACCECEEEEEEEEEEEEAA88A6A6A6A6),
    .INIT_0F(256'h0000000000A266666686A6A6A6C6040000000000000000000000420666666686),
    .INIT_10(256'hCCAAA6A6A6AAB22C420000000000000000000000000000000000000000000000),
    .INIT_11(256'h00000000000000422CD0ACA6A4A4A4A6A8A8A6A6A4A4A6A6A6A6A6A6CCF9FBD7),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000006C8A6A6A6A6A6A6A8C8C8C8A8666686A6A6C6464200000000000000),
    .INIT_14(256'h00842688C8C8A6A6A6A6A6A6A8C8C8CACACACAA8A6A6A6A6C200000000000000),
    .INIT_15(256'h6686A6A6A6C6040000000000000000000000420666666686A6A6C68682000000),
    .INIT_16(256'h0C42000000000000000000000000000000000000000000000000000000824666),
    .INIT_17(256'hB4D2CEAAA6A6A6A6A8A8A6A6A6A6A6A6A8A8A6A6CEF9F9D4AAA8A8A8AAAED2B4),
    .INIT_18(256'h000000000000000000000000000000000000000000000000000000000000420C),
    .INIT_19(256'hA6A6A6A6A6A6A6A6A6866686A6A6C64642000000000000000000000000000000),
    .INIT_1A(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C200000000000000000020E4A8EAC8A6),
    .INIT_1B(256'h00000000000000000000420666666686A6A6C686820000000000420686A6A6A6),
    .INIT_1C(256'h0000000000000000000000000000000000000000004206664666A6A6A6C60400),
    .INIT_1D(256'hA6A6A6A6A8A6A6A6A8A8A6A8CACECAA8A6A6ACCED0D2D2D4B2A8000000000000),
    .INIT_1E(256'h000000000000000000000000000000000000000000200AD4D2D0D0CECCA8A4A4),
    .INIT_1F(256'hA6868686A6A6C646420000000000000000000000000000000000000000000000),
    .INIT_20(256'hA6A6A6A6A6A6A6A6E200000000000000004226EAEAEAEAE8C8A6A6A6A6A6A6A6),
    .INIT_21(256'h0000420686666686A6A6C6868200000000000020E486C6C6C6A6A6A6A6A6A6A6),
    .INIT_22(256'h0000000000000000000000000000C4464666A6A6A6C604200000000000000000),
    .INIT_23(256'hA8A8A6A6AACECCACAAA8A8AAAAAAAAAAAEC80000000000000000000000000000),
    .INIT_24(256'h00000000000000000000000000424CCEA8A8A6A6A6A6A6A6A6A6A6A6A8A6A6A6),
    .INIT_25(256'h4200000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'hE4000000000000008268EAEAEAEAEAEAEAC8A6A6A6A6A6A6A6866686A6A6C646),
    .INIT_27(256'hA6A6C686820000000000000020C44666668686A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_28(256'h00000000000062264666A6A6A6C6466200000000000000000000420686666686),
    .INIT_29(256'hAAA8A6A6A6A6A6AAB0C800000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000200AAEA8A4A4A4A4A4A4A6A6A6A4A6A6A6A6A6A6A8A6A6A6A8CCCC),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'hA8EAEAEAEAEAEAEAC8A6A6A6A6A6A68686666686A6A6C6464200000000000000),
    .INIT_2D(256'h00000000000020628282C4E40404244686A6A6A6A6A6A6A6E4000000000000C4),
    .INIT_2E(256'h466686A6A6A6A6A200000000000000000000422686666686A6A6C68682000000),
    .INIT_2F(256'hB20C2200000000000000000000000000000000000000000000000000000000C4),
    .INIT_30(256'hAAA6A4A4A4A4A6A6A6A6A6A6A6A6A6A6A4A6A6A6A6A6A6A6A8A8A8A8A8A6A8AE),
    .INIT_31(256'h00000000000000000000000000000000000000000000000000000000006470D0),
    .INIT_32(256'hA6A6A6A6A666466666666686A6A6C64642000000000000000000000000000000),
    .INIT_33(256'h00000000000000A446666686A6A6A6A6E4000000004206CAEAEAEAEAEAEAEAC8),
    .INIT_34(256'h20000000000000000000422686666686A6A6C686820000000000000000000000),
    .INIT_35(256'h000000000000000000000000000000000000000000000022E64686A6A6A6A624),
    .INIT_36(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6AACCCEAAA8A8A8A6A6AAB0D292A80000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000200CD4D2AEAAA6A4A4A4A4A6),
    .INIT_38(256'h666666A6A6A6C646420000000000000000000000000000000000000000000000),
    .INIT_39(256'h46664666A6A6A6A6E40000008268EAEAEAEAEAEAEAE8C8A6A6A6A6A64662C486),
    .INIT_3A(256'h0000624686666686A6A6C6868200000000000000000000000000000000000062),
    .INIT_3B(256'h00000000000000000000000000000000420668A6A6A6A686C400000000000000),
    .INIT_3C(256'hA8A8A6A8AACCCECEAAA8A6A8A6A6A8A8ACB0EA00000000000000000000000000),
    .INIT_3D(256'h000000000000000000000000426ED0ACAAA8A6A6A6A6A6A6A6A6A6A6A6A8A6A6),
    .INIT_3E(256'h4200000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'hE40020E4A8EAEAEAEAEAEAEAC8A6A6A6A6A6A6044000E486866686A6A6A6C646),
    .INIT_40(256'hA6A6C68682000000000000000000000000000000000000624666466686A6A6A6),
    .INIT_41(256'h000000000000000000642888A6A6A6A666C46420000000000000624686666686),
    .INIT_42(256'hD0ACA6A6A6A6A4A4A68EC8000000000000000000000000000000000000000000),
    .INIT_43(256'h00000000424EACA6A4A4A4A4A4A6A6A8A6A6A6A6A6A6A6A6A6A8A6A6A8AACED2),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'hEAEAEAC8A6A6A6A6C686E420004026A8868686A6A6A6C6464200000000000000),
    .INIT_46(256'h426242200000000000000000000000624666466686A6A6A6048426EAEAEAEAEA),
    .INIT_47(256'h0000620688A6A6A6A6A88A0AA64220000000624686666686A6A6C66682000000),
    .INIT_48(256'hA88E860000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h8484A4A4A4A4A4A6A6A4A4A4A4A4A4A4A4A4A6A6A6A6A6A6A6A6A6A4A4A6A4A4),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000A68CA6),
    .INIT_4B(256'h86C40000006266A8868686A6A6A6C64640000000000000000000000000000000),
    .INIT_4C(256'h84624222200000A46666666686A6A6A686A8EAEAEAEAEAEAEAEAC8A6A6A6A6A6),
    .INIT_4D(256'hA6A6C8ECD08E2AC88462C46686668686A6A6C666820020C4688A6A2A08C6A484),
    .INIT_4E(256'h00000000000000000000000000000000000000000000000000000022E686A6A6),
    .INIT_4F(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A6A8AAA6A4A4A4A4A484A6ACB4508620000000),
    .INIT_50(256'h000000000000000000000000000000000000002062EAB0A8A48484A4A4A4A4A4),
    .INIT_51(256'hA88686A6A6A6C624200000000000000000000000000000000000000000000000),
    .INIT_52(256'hC886666686A6A6A6C8E8EAEAEAEAEAEAC8A6A6A6A6A6A64682000000008286A8),
    .INIT_53(256'hD08EACAA868686A6A6A6C6666200C4CAEAECECEEF0F0CECEAC8C6A4A2808288A),
    .INIT_54(256'h000000000000000000000000000000000000000000C486A6A6A6A6A6CAEEF2F0),
    .INIT_55(256'hA4A4A4A4A4A6A8AAA6A6A6A4A4A4A4A6ACB4D7942E6400000000000000000000),
    .INIT_56(256'h00000000000000000000642C92B6B0A8A6A484A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_57(256'h2000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'hA6A8C8EAEAEAEAC8A6A6A6A6A6A6266200000000006246A8A8A8A6A6A6A6C624),
    .INIT_59(256'hA6A6C666600026E8EAEAEAECEEEEF0F0F0F0F0F0F0F0F0EEECCAA88686A6A6A6),
    .INIT_5A(256'h0000000000000000000000000000A246A6A6A6A6A6A8CAECEEF0F0EECA8886A6),
    .INIT_5B(256'hAAA6A6A6A4A4A4A6AAB2D4D4B40C200000000000000000000000000000000000),
    .INIT_5C(256'h00422ED6D6D4AEA8A6A4A4A4A4A4A4A6A6A6A4A4A4A4A4A6A6A6A6A6A6A8CCAA),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'hA6A6A6C686044000000000000000A44686A6A6A6A6A6C6040000000000000000),
    .INIT_5F(256'hC8E8EAEAEACACACCECECEEEEEEEEEEEEEEECEAA8A6A6A6A68666A8C8EAC8A6A6),
    .INIT_60(256'h000000000000006226A6C6A6A6A6A6A6A8CACCEEEECAA8A6A6A6C6666000C488),
    .INIT_61(256'hAAACACAEB0706400000000000000000000000000000000000000000000000000),
    .INIT_62(256'hA8A8A6A6A6A6A4A4A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8A8AA),
    .INIT_63(256'h000000000000000000000000000000000000000000000000006492D0AEAEACAA),
    .INIT_64(256'h00000000000000842686A6A6A6A6A6C400000000000000000000000000000000),
    .INIT_65(256'hA6A8C8C8CACACACACAECEAC8A6A6A6A686060688C8A6A6A6A6A6A686C4200000),
    .INIT_66(256'h40E466A6A6A6A6A6A6A6A6A8CACAA8A6A6A6C646620020C466C8C8C8A6A6A6A6),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'hA6A6A6A8A8A6A6A6A8A6A6A6A8A8CACED0D2D0ACA8A8A6A686868486AC704400),
    .INIT_69(256'h0000000000000000000000000000000000426EAC868686A6A6A6A6A6A6A6A8A6),
    .INIT_6A(256'h620686C6A6C66662000000000000000000000000000000000000000000000000),
    .INIT_6B(256'hA6A6A6A6A6A6A6A686A422E686A6A6A6A6A64682000000000000000000000000),
    .INIT_6C(256'hA6A6A6A6A6A6A6A6A6A6C66662000000A446A8A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000820466A6C6A6),
    .INIT_6E(256'hA8A6A6A6A6A6A8CCCECEACAAA6A4A4A6A686A6884AA600000000000000000000),
    .INIT_6F(256'h00000000000000000000A66CA8A6848484A4A4A4A4A6A6A6A4A6A4A4A6A6A6A6),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h86820020C486C6A6860442000000000000000000000000000022E486A686E400),
    .INIT_72(256'hA6A6A686A2000000008246A6C6C6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6C6),
    .INIT_73(256'h000000000000000000000000000000000000000082044686A6C6C6A6A6A6A6A6),
    .INIT_74(256'hA6A6A8A8A8A8A8AAAC6A2AEA4200000000000000000000000000000000000000),
    .INIT_75(256'h00000064084A8AAAA8A8A8A6A6A6A6A6A6A4A4A4A4A4A4A4A6A6A6A6A6A6A6A6),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'hA2200000000000000000000000000000000020A2E4A220000000000000000000),
    .INIT_78(256'h000042E446668686A6A6A6A6A6A6A6C6C6C6A6A6A6A6C6C62440000000A22404),
    .INIT_79(256'h000000000000000000000000000042A2E4266686A6A6A6A6A6A6A6C6E4000000),
    .INIT_7A(256'hA664200000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'hA4088CCEACAAA8A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A8AAAAACAE4CC6A4),
    .INIT_7C(256'h000000000000000000000000000000000000000000000000000000000042A6A4),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'hC2C2C4E4E4042446666686868686862662000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000002062A2E446A6C6A6A6A6A6C200000000000000206282A2),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[15]),
        .I2(addra[13]),
        .I3(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF800000000000001F0000000000000000000000000001FFFFFF80000000000),
    .INITP_01(256'h00000000001FFFFFF80000000000000040000000000000000000000000001FFF),
    .INITP_02(256'h0000000000000000000000001FFFFFF800000000000000000000000000000000),
    .INITP_03(256'h000000000000000000000000000000000000001FFFFFF8000000000000000000),
    .INITP_04(256'h001FFFFFF80000000000000000000000000000000000000000001FFFFFF80000),
    .INITP_05(256'h00000000000000001FFFFFF80000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000001FFFFFF800000000000000000000000000),
    .INITP_07(256'hF80000000000000000000000000000000000000000001FFFFFF8000000000000),
    .INITP_08(256'h000000001FFFFFF80000000000000000000000000000000000000000001FFFFF),
    .INITP_09(256'h00000000000000000000001FFFFFF80000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000001FFFFFF800000000000000000000),
    .INITP_0B(256'h1FFFFFF80000000000000000000000000000000000000000001FFFFFF8000000),
    .INITP_0C(256'h000000000000001FFFFFF8000000000000000000000000000000000000000000),
    .INITP_0D(256'h00000000000000000000000000003FFFFFF80000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000003FFFFFFC00000000000000),
    .INITP_0F(256'h0000003FFFFFFC0000000000000000000000000000000000000000003FFFFFFC),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'hA4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A4A4A4A4A82A4200000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000020A6B0CAA4A4A4),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h426282A2A2A28220000000000000000000000000000000000000000000000000),
    .INIT_05(256'h000000000042C466A6C6A6042000000000000000000000000000000000002040),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'hA4A4A4A4A4A4A4A4A4A4A4A60600000000000000000000000000000000000000),
    .INIT_08(256'h000000000000000000000000000000000000648EAAA4A4A4A4A4A4A4A4A4A4A4),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'hE424C42000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000062),
    .INIT_0D(256'hA4A4A4A606000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h00000000000000000000648EAAA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000648EAA84A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A606000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A486060000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000648EAA84A4A4),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'hA4A4A4A4A4A4A4A4A4A4A4860600000000000000000000000000000000000000),
    .INIT_21(256'h000000000000000000000000000000000000648EAA84A4A4A4A4A4A4A4A4A4A4),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'hA4A4A48606000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h00000000000000000000648EA884A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000648EA884A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A48606000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A48486060000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000648EA884A4A4),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'hA4A4A4A4A4A4A4A4A4A4A4860400000000000000000000000000000000000000),
    .INIT_3A(256'h000000000000000000000000000000000000648EA88484A4A4A4A4A4A4A4A4A4),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'hA4A4A48404000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h00000000000000000000648EA88484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000648EA88484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A48628200000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A484A66C6400000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000628CA88484A4),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'hA4A4A4A4A4A4A4A4A4A684A68C84000000000000000000000000000000000000),
    .INIT_53(256'h000000000000000000000000000000000000628CA88484A4A4A4A4A4A4A4A4A4),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'hA4A684A68C640000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h00000000000000000000628CA68484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000848CA68484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A684868A640000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A684846A6400000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000020E8ACA68484A4),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'hA4A4A4A4A4A4A4A4A4A684848AA6000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000200ACCA484A4A4A4A4A4A4A4A4A4A4),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'hA4A6A484AA0C0000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h000000000000000000200ACCA484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h002008AC848484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A484AA2C0000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A484A82A00000000000000000000),
    .INIT_7F(256'h00000000000000000000000000000000000000000000000000202AAA8484A4A4),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000000000000000003FFFFFFC000000000000000000000000000000000000),
    .INITP_01(256'h00000000000000000000000000000000003FFFFFFC0000000000000000000000),
    .INITP_02(256'hFFFFFC0000000000000000000000000000000000000000003FFFFFFC00000000),
    .INITP_03(256'h0000000000007FFFFFFE0000000000000000000000000000000000000000007F),
    .INITP_04(256'h000000000000000000000000007FFFFFFE000000000000000000000000000000),
    .INITP_05(256'h00000000000000000000000000000000000000007FFFFFFE0000000000000000),
    .INITP_06(256'h00007FFFFFFF0000000000000000000000000000000000000000007FFFFFFE00),
    .INITP_07(256'h000000000000000000FFFFFFFF00000000000000000000000000000000000000),
    .INITP_08(256'h00000000000000000000000000000000FFFFFFFF000000000000000000000000),
    .INITP_09(256'hFFFF800000000000000000000000000000000000000000FFFFFFFF8000000000),
    .INITP_0A(256'h0000000001FFFFFFFF800000000000000000000000000000000000000001FFFF),
    .INITP_0B(256'h000000000000000000000001FFFFFFFFC0000000000000000000000000000000),
    .INITP_0C(256'h00000000000000000000000000000000000003FFFFFFFFC00000000000000000),
    .INITP_0D(256'h07FFFFFFFFE00000000000000000000000000000000000000003FFFFFFFFC000),
    .INITP_0E(256'h0000000000000007FFFFFFFFE000000000000000000000000000000000000000),
    .INITP_0F(256'h000000000000000000000000000007FFFFFFFFF0000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'hA4A4A4A4A4A4A4A4A4A6A484862A200000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000648EA88484A4A4A4A4A4A4A4A4A4A4),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'hA4A4A484A66C6400000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h00000000000000000084AEA88484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0084ACA68484A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A4A68C8600),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A4A68AC8000000000000000000),
    .INIT_18(256'h000000000000000000000000000000000000000000000000200AACA68484A4A4),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'hA4A4A6A4A4A4A4A4A4A4A6A4A4AA2C0000000000000000000000000000000000),
    .INIT_1E(256'h00000000000000000000000000000000202ACCA484A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'hA4A4A6A4A4A84E42000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000424CAA8484A4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A4A4A4A4),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h848EAA8484A4A4A4A4A4A4A4A4A4A4A4A4A6A6A4A4A4A4A4A4A4A6A484A88E86),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'hA4A4A6A4A4A4A4A4A4A6A6A4A4A4A4A4A4A4A6A6A4A68EC80000000000000000),
    .INIT_31(256'h00000000000000000000000000000000000000000000000084AEA88484A4A4A4),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'hA4A6A6A4A4A4A4A4A4A4A6A6A4A6AC2E20000000000000000000000000000000),
    .INIT_37(256'h00000000000000000000000000000020E8ACA6A484A4A4A4A6A6A6A4A4A4A4A4),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'hA4A4A6A6A4A4AA6E640000000000000000000000000000000000000000000000),
    .INIT_3D(256'h00000000000000424CACA484A4A4A4A6A6A6A6A4A4A4A4A4A4A6A6A6A6A4A4A4),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'hC800000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h8EAA84A4A4A4A4A6A6A6A4A4A4A4A4A4A6A6A6A6A6A4A4A4A4A4A6A6A4A4A8B0),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000084),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'hA6A6A4A4A4A4A4A4A6A6A6A6A6A6A4A4A4A4A6A6A4A4A6AE2C20000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000A6AEA884A4A4A4A4A6),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'hA6A4A6A6A6A6A4A4A4A4A6A6A6A4A6AC70640000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000222AAEA6A4A4A4A4A4A6A6A6A4A4A4A4A4A4),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'hA4A4A6A6A6A4A4A8B0EA00000000000000000000000000000000000000000000),
    .INIT_56(256'h000000000000848EACA6A4A4A4A4A6A6A6A6A4A4A4A4A4A4A6A4A6A6A6A6A4A4),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'hAE50220000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'hAAA4A4A4A6A4A4A4A6A6A4A4A4A4A6A6A6A4A4A6A6A6A4A4A4A4A6A6A6A4A4A6),
    .INIT_5D(256'h000000000000000000000000000000000000000000000000000000000020E8B0),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'hA6A6A4A4A4A6A8A6A6A4A4A4A6A6A4A4A4A4A6A6A6A4A4A6AC70620000000000),
    .INIT_63(256'h000000000000000000000000000000000000000000424CCEA8A4A4A6A6A6A4A4),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'hA6A6A4A4A6A6A4A4A4A4A6A6A6A6A4A4A8B0EA00000000000000000000000000),
    .INIT_69(256'h00000000000000000000000000868EACA6A4A6A6A6A4A4A4A4A6A6A4A4A6A8A4),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'hA4A4A4A6A6A6A4A4A6AE70640000000000000000000000000000000000000000),
    .INIT_6F(256'h00000000200CD0AAA4A4A4A6A6A4A4A4A4A6A4A4A4A6CAA4A6A6A4A4A6A6A4A4),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'hA6ACB2C800000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'hA4A4A4A6A6A4A4A4A4A6A4A4A4A6CAA4A4A6A4A4A6A6A4A4A6A4A4A6A6A6A6A4),
    .INIT_76(256'h00000000000000000000000000000000000000000000000000000000626ECEA8),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'hA4A6A4A4A4A6CAA4A4A6A4A4A4A6A6A6A6A4A4A6A6A6A6A4A6A8B02E42000000),
    .INIT_7C(256'h0000000000000000000000000000000000000020EAB0ACA6A4A4A6A6A6A4A4A4),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "13" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.217811 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rom_red.mem" *) 
(* C_INIT_FILE_NAME = "rom_red.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "40000" *) (* C_READ_DEPTH_B = "40000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "40000" *) 
(* C_WRITE_DEPTH_B = "40000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
