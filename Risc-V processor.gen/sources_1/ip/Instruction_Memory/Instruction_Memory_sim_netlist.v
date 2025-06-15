// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  9 19:17:00 2025
// Host        : Louises running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/pizar/Risc-V processor/Risc-V
//               processor.gen/sources_1/ip/Instruction_Memory/Instruction_Memory_sim_netlist.v}
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
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25856)
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
