// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon Apr  6 17:29:37 2026
// Host        : ZB2073 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/detect_digits/vivado/image_detect/image_detect.srcs/sources_1/ip/dpram_1024w8_1024r8_rego/dpram_1024w8_1024r8_rego_sim_netlist.v
// Design      : dpram_1024w8_1024r8_rego
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_1024w8_1024r8_rego,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module dpram_1024w8_1024r8_rego
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.4448 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "dpram_1024w8_1024r8_rego.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dpram_1024w8_1024r8_rego_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19600)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
