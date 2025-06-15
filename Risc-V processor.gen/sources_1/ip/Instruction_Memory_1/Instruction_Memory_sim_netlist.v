// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Jun 13 00:38:04 2025
// Host        : Louises running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/pizar/Risc-V processor/Risc-V
//               processor.gen/sources_1/ip/Instruction_Memory_1/Instruction_Memory_sim_netlist.v}
// Design      : Instruction_Memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Instruction_Memory,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Instruction_Memory
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "Instruction_Memory.mem" *) 
  (* C_INIT_FILE_NAME = "Instruction_Memory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Instruction_Memory_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19248)
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
