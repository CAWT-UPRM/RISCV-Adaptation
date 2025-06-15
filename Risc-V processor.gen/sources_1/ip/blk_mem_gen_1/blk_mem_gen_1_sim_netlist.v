// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jun  7 15:56:17 2025
// Host        : Louises running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/pizar/Risc-V processor/Risc-V
//               processor.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v}
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20256)
`pragma protect data_block
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
4Zb52XyMr0UYgmNCePW5MLocnlz6
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
