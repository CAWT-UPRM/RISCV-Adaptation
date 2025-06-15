// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jun  7 16:11:50 2025
// Host        : Louises running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
NQcyaXCAqJH33PsipD4s84Uumg==
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
