// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jun 12 13:44:26 2025
// Host        : Louises running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/pizar/Risc-V processor/Risc-V
//               processor.gen/sources_1/ip/MAC_dsp/MAC_dsp_sim_netlist.v}
// Design      : MAC_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MAC_dsp,dsp_macro_v1_0_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_7,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module MAC_dsp
   (A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_mode = "slave c_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [43:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire [31:0]C;
  wire [43:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "43" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MAC_dsp_dsp_macro_v1_0_7 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(1'b1),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CuSIDRPSCLqvfieIk2rFSAJ1BHmtwRFyKrWRWtCYcA3H7dxnVaqhefwLH/fKtBh5mXZuNabpVD9/
ZdJEt4XGGUsM2Cnnnq3mVYfkCXx5yV68DULqpBO8BZjT7U2oFyPV8+oRfOBPiFGXBprW5HwqiZhG
SHnBsyJZk8VKxgIjzHE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MF1qtyHCwR6riXabh/dGj/uojZQb7LWMCiDwb8vI+96M2HxX0eTs2LM9Sdzb6gtQmpxMH/LR/Pf/
BO5pe+Uz/u8fn81B3D0FG32P2rXTvGtQ2vMf+PFo0Y8YnhY3mOuvoDZqI4QOv8xSJkH4OlDNGg0r
4QrkqtwiJ4FhA4Ll1xXkcVZd7lghoQ71wt5S7Z8SiwgDSndp1nAKU/hUj8DvGvy/jplkD/DUARFw
CRjGHKLV2yfGGdE0D/MZ5G38dmJdn3Cfh39jH9FeYPWyhuhO5NW2zVzYywhCr6Ls3R8rbhwbmKCo
pCRIXOHQ7ugEVwxUC8pk/jQp8WL1/8bWwy54Bg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
luQHy1m8ciBq15jA72Cpt7V9YeqPs2eCtaMzp3h0umQDPOuH/IODV6pgmcxYZydO6b4rkFq++fZq
8z2f92D/lhHI7ez6n9XnFT/X+COsTFSOdPM8mrCvH+tEDMQAVOtknWoywaj6UAv52wNB3xda1037
DGPkO3aKM53MPDKlM00=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LMKIM07GdsHUJtwzFFfSj3Gyyd3SORspHtZqkX9p4VfnJTDyqmjulckguKAJSSW4RkEyhvXniVsz
qbjiEifjwPY0tvB3qKiMdM/Ay4UbJGUgjOFR52LZySLLodNHWGI8mB8JC/AtBiJxzbVNCfcOMl4v
LaxFKOy1RRxnhn3OIRV6vC4SjuC94StpI9SFlrbIkfh34d6dDitK5XHiAfG60Tuz66kf5WcwNdOo
D+QK0bpThVs3Gm7JZnIFqPeM03hrPTbeLgoRowGmwo4iMqN7+dpV3e+O5wYPMEbhrBIuvzi7875J
jPXWXyawnJCHh1qfFVthW8ilyqN5oSmnbF7gsQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C5/YhNxNT8PRB8AYWtb7fRmu9FNKuVWgwIvmD0qqRXDdu9eTyMzeA3fJhVAea+XLnjukEcvdArTK
rG+7m0QKz+rBn2DBzj27SGjExdUm0w48syyUomlsyM6Haza2VHn9aiek3KQkNqTTJuJ7g5nBQ/yk
Esujl+JqAMBSgqsogJH/VZ0qHCC27SBFioXSduaGcggcz9bdtQT13SaTMvTmRaYisAvh6PiRrwj6
rVyJ918O6LlsxEMNfhvHogd/2mPVRUCsPWNTwzCPLVytO7YkyWm63dgPzXxSgoL/ozTPG0Zsv2tI
LmnKHqxBKOs1lho6lrEApXjqbLZyw1Gp/ZL5IQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gjkCd4dNreUOkeJ8xazCCUl6+FBKbdbfO6kvIp4gAOFITLSfFUuw6mrl0+4mBA7XtgzfdX2NO0KZ
VgYIZ5v374csj0RX80vn87p1gW+FFIPwZhL4+6DphCn19qN0VfCZx03pkOhz5aSXskVrDeeZMZkA
8wuBDuaRyTN6Vw1RiRwAZb2zkerYrayjxW8eqtLa50GMjz2cJH+8VZRE1SnfS401eaGV8/03Vd2C
J2ahXDMgpipjPdFt5rvdqAaQ3GzpF0JHXBTvFCQ1Vg3qZL0CBLzIhvqYq7+pgNA/6qxvUYTytFi0
CXsCXJ20FEt0QufDHpCmiig5DZQy/ucQa0xB7g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hsMMPB9Ip0RNBx4zb6W38Nid8NmF6g03U/f7DMyWoSL/XSL2pcTVkDDaUBqNhmr4I32WpKsA4uDt
LwxcKdefZQ3C8C+kNQeEgmj611Ry1zzGs2urQFqD10UK6C5YGujmeGiAz78vsbGxF3YU1ezUZv+A
UWBM2RRnsFbLTWbUeZotWpIM5torDypIGchCvJkLIsKInNfwG8oZEQO8ibd/ZgIuuDVfCBR7sybW
Md7XW16BkgEGF2LgcvgVH4YI/LJNpZj+4wIGXb2zX36lMMrVw4A8LDwvj65vyyL4SDxtXWHOdLjg
Eqyya82/2KAHogtvgjKvmJykbFtTHV/SeSXiGA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
xzYvjiRvkurUKUFHyIlWum67Zv6EgY+IjYjMLickNV6P3Cbhp8A+a8TllbFMUC3XKmw2vDcIz7Px
ygTWbUWb3lH8Y45PETv46E1v3Dq5eCQsKMUcbYAtcwDu0AuyjHt1zsDLGXy4rCKTZXNoTTNSA7q6
AjUbUUiCbzFk5rH1nYLUuGVYaz5wRgv1fzkqjw6vG8Uu9gV8KsplIa7itkkUeWf8eQ/4q2c7Kdpr
C029jt0DcJMKBpb2iw8eNh5BsxDqa+qp40oLkZjRhwaX7Iaf7FPpOGnZUCF2Zj7Wz0Dz/6AhQR1n
/yzfG8ihn4h6jra1vajQzA2jXO4wsh+TG5q/b6B9BujXh0+PEcgdKEAF9ufKtBNdysyOFh+FSEqY
VvNoxu0/V2i/J3JDcWa/a5ovjlomn2cqNwFdByYCKlAST2jrogNY7kxXDD5H5AODG07lidT6JS1M
PSc3SnQrr/LlfpdM676vcYGeBFGbyB91hDgMqRSnAOhaTPz06dYOSTqB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H7d1BVeC13rLw/CSEnbaPIjA7qfZyFPjAqif/3O3hIWeIgCSVX/nKTMPhIP1oOvFwgqze5jjU29L
thPx/Upl+Aa2HshO1v4MWP99OOgz1mBwUxzMncjEv0axfnaKXojUohk5y/dvA1Y1c7KN8+ZgftRf
7lEBHSCSTblYmH6OcCuuCI+guU1O9hu5TAcuXi2cRqAuDHWr0mejniM4qmO+jzDq2WhpIF+F3H0N
+JqxFfG2Odq6cbByB+uGyUnbpVV26DZdq5aOH+51GTVG58C8WVRTbcgiFWZguJ/gW4ge3Wd90q9e
wg7knRThOjywIPIdyGM6L6KktmZ/cS9tcSEbFA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FTJsMMZzgmF2aPDoZmMqMX/RZWz+GFa5W34/fCnqmEiq8P1YvtpbThViH+Q+OVoN4QJtLPb6DzeD
+MqWvuCBDGsNCz3wGBOisMPwZK2MLJKMj25eu2aJL3bYy1c+F0wBkbLcZHEmxvpbD7mXV+55uL3Z
DF0/xdxrnE+4lFTMcnUhlv3/Se1WOA2bavo6Sx2tUvTDY80sgW6eFVUG+ngZjFtFfE2tDTzObqX0
ONp+WU6nqSTQXEmkX6Sg/XDGR/vhyOv5jLk7GV3qDiwhDH8keeQVQMJXVJl6e5iVhlGbrIm+vFoZ
ZGr3c72zasz4qRfRmRE29O/TWV+R7zyuYq/hXg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R2P4WRjoL058k3jsZl1El3msGeWoxWkAQKZH30FnOTjO9gQrVnyBsRswmHoDk1st31qOZNgTq0SF
045vOcrZmJjhCN07ntO0XV/l1erwr3E9fpoTSPlQcqZMK/rVGBlzLsboKu8O38eZM+ehXkhFIZvB
fpsfXJioXRVyq1jVi51hYs3ncnWsQAr03xfSB8pEOY4TehKt/Iw3S1Aj3w1rq04/3dMS7il3+Vbo
vfWy5LceCzJAWQEqg8cdLVsg+pV4pHVLOrgElg3kmtGTi+jxPXUxHiX6ViWqTR05Y5PNihi2ZcE7
sODAwhM5627hQt4DO1o3Fb0vXntWkGVOVH6p+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10640)
`pragma protect data_block
+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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CuSIDRPSCLqvfieIk2rFSAJ1BHmtwRFyKrWRWtCYcA3H7dxnVaqhefwLH/fKtBh5mXZuNabpVD9/
ZdJEt4XGGUsM2Cnnnq3mVYfkCXx5yV68DULqpBO8BZjT7U2oFyPV8+oRfOBPiFGXBprW5HwqiZhG
SHnBsyJZk8VKxgIjzHE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MF1qtyHCwR6riXabh/dGj/uojZQb7LWMCiDwb8vI+96M2HxX0eTs2LM9Sdzb6gtQmpxMH/LR/Pf/
BO5pe+Uz/u8fn81B3D0FG32P2rXTvGtQ2vMf+PFo0Y8YnhY3mOuvoDZqI4QOv8xSJkH4OlDNGg0r
4QrkqtwiJ4FhA4Ll1xXkcVZd7lghoQ71wt5S7Z8SiwgDSndp1nAKU/hUj8DvGvy/jplkD/DUARFw
CRjGHKLV2yfGGdE0D/MZ5G38dmJdn3Cfh39jH9FeYPWyhuhO5NW2zVzYywhCr6Ls3R8rbhwbmKCo
pCRIXOHQ7ugEVwxUC8pk/jQp8WL1/8bWwy54Bg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
luQHy1m8ciBq15jA72Cpt7V9YeqPs2eCtaMzp3h0umQDPOuH/IODV6pgmcxYZydO6b4rkFq++fZq
8z2f92D/lhHI7ez6n9XnFT/X+COsTFSOdPM8mrCvH+tEDMQAVOtknWoywaj6UAv52wNB3xda1037
DGPkO3aKM53MPDKlM00=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LMKIM07GdsHUJtwzFFfSj3Gyyd3SORspHtZqkX9p4VfnJTDyqmjulckguKAJSSW4RkEyhvXniVsz
qbjiEifjwPY0tvB3qKiMdM/Ay4UbJGUgjOFR52LZySLLodNHWGI8mB8JC/AtBiJxzbVNCfcOMl4v
LaxFKOy1RRxnhn3OIRV6vC4SjuC94StpI9SFlrbIkfh34d6dDitK5XHiAfG60Tuz66kf5WcwNdOo
D+QK0bpThVs3Gm7JZnIFqPeM03hrPTbeLgoRowGmwo4iMqN7+dpV3e+O5wYPMEbhrBIuvzi7875J
jPXWXyawnJCHh1qfFVthW8ilyqN5oSmnbF7gsQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C5/YhNxNT8PRB8AYWtb7fRmu9FNKuVWgwIvmD0qqRXDdu9eTyMzeA3fJhVAea+XLnjukEcvdArTK
rG+7m0QKz+rBn2DBzj27SGjExdUm0w48syyUomlsyM6Haza2VHn9aiek3KQkNqTTJuJ7g5nBQ/yk
Esujl+JqAMBSgqsogJH/VZ0qHCC27SBFioXSduaGcggcz9bdtQT13SaTMvTmRaYisAvh6PiRrwj6
rVyJ918O6LlsxEMNfhvHogd/2mPVRUCsPWNTwzCPLVytO7YkyWm63dgPzXxSgoL/ozTPG0Zsv2tI
LmnKHqxBKOs1lho6lrEApXjqbLZyw1Gp/ZL5IQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gjkCd4dNreUOkeJ8xazCCUl6+FBKbdbfO6kvIp4gAOFITLSfFUuw6mrl0+4mBA7XtgzfdX2NO0KZ
VgYIZ5v374csj0RX80vn87p1gW+FFIPwZhL4+6DphCn19qN0VfCZx03pkOhz5aSXskVrDeeZMZkA
8wuBDuaRyTN6Vw1RiRwAZb2zkerYrayjxW8eqtLa50GMjz2cJH+8VZRE1SnfS401eaGV8/03Vd2C
J2ahXDMgpipjPdFt5rvdqAaQ3GzpF0JHXBTvFCQ1Vg3qZL0CBLzIhvqYq7+pgNA/6qxvUYTytFi0
CXsCXJ20FEt0QufDHpCmiig5DZQy/ucQa0xB7g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hsMMPB9Ip0RNBx4zb6W38Nid8NmF6g03U/f7DMyWoSL/XSL2pcTVkDDaUBqNhmr4I32WpKsA4uDt
LwxcKdefZQ3C8C+kNQeEgmj611Ry1zzGs2urQFqD10UK6C5YGujmeGiAz78vsbGxF3YU1ezUZv+A
UWBM2RRnsFbLTWbUeZotWpIM5torDypIGchCvJkLIsKInNfwG8oZEQO8ibd/ZgIuuDVfCBR7sybW
Md7XW16BkgEGF2LgcvgVH4YI/LJNpZj+4wIGXb2zX36lMMrVw4A8LDwvj65vyyL4SDxtXWHOdLjg
Eqyya82/2KAHogtvgjKvmJykbFtTHV/SeSXiGA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
xzYvjiRvkurUKUFHyIlWum67Zv6EgY+IjYjMLickNV6P3Cbhp8A+a8TllbFMUC3XKmw2vDcIz7Px
ygTWbUWb3lH8Y45PETv46E1v3Dq5eCQsKMUcbYAtcwDu0AuyjHt1zsDLGXy4rCKTZXNoTTNSA7q6
AjUbUUiCbzFk5rH1nYLUuGVYaz5wRgv1fzkqjw6vG8Uu9gV8KsplIa7itkkUeWf8eQ/4q2c7Kdpr
C029jt0DcJMKBpb2iw8eNh5BsxDqa+qp40oLkZjRhwaX7Iaf7FPpOGnZUCF2Zj7Wz0Dz/6AhQR1n
/yzfG8ihn4h6jra1vajQzA2jXO4wsh+TG5q/b6B9BujXh0+PEcgdKEAF9ufKtBNdysyOFh+FSEqY
VvNoxu0/V2i/J3JDcWa/a5ovjlomn2cqNwFdByYCKlAST2jrogNY7kxXDD5H5AODG07lidT6JS1M
PSc3SnQrr/LlfpdM676vcYGeBFGbyB91hDgMqRSnAOhaTPz06dYOSTqB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H7d1BVeC13rLw/CSEnbaPIjA7qfZyFPjAqif/3O3hIWeIgCSVX/nKTMPhIP1oOvFwgqze5jjU29L
thPx/Upl+Aa2HshO1v4MWP99OOgz1mBwUxzMncjEv0axfnaKXojUohk5y/dvA1Y1c7KN8+ZgftRf
7lEBHSCSTblYmH6OcCuuCI+guU1O9hu5TAcuXi2cRqAuDHWr0mejniM4qmO+jzDq2WhpIF+F3H0N
+JqxFfG2Odq6cbByB+uGyUnbpVV26DZdq5aOH+51GTVG58C8WVRTbcgiFWZguJ/gW4ge3Wd90q9e
wg7knRThOjywIPIdyGM6L6KktmZ/cS9tcSEbFA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FTJsMMZzgmF2aPDoZmMqMX/RZWz+GFa5W34/fCnqmEiq8P1YvtpbThViH+Q+OVoN4QJtLPb6DzeD
+MqWvuCBDGsNCz3wGBOisMPwZK2MLJKMj25eu2aJL3bYy1c+F0wBkbLcZHEmxvpbD7mXV+55uL3Z
DF0/xdxrnE+4lFTMcnUhlv3/Se1WOA2bavo6Sx2tUvTDY80sgW6eFVUG+ngZjFtFfE2tDTzObqX0
ONp+WU6nqSTQXEmkX6Sg/XDGR/vhyOv5jLk7GV3qDiwhDH8keeQVQMJXVJl6e5iVhlGbrIm+vFoZ
ZGr3c72zasz4qRfRmRE29O/TWV+R7zyuYq/hXg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R2P4WRjoL058k3jsZl1El3msGeWoxWkAQKZH30FnOTjO9gQrVnyBsRswmHoDk1st31qOZNgTq0SF
045vOcrZmJjhCN07ntO0XV/l1erwr3E9fpoTSPlQcqZMK/rVGBlzLsboKu8O38eZM+ehXkhFIZvB
fpsfXJioXRVyq1jVi51hYs3ncnWsQAr03xfSB8pEOY4TehKt/Iw3S1Aj3w1rq04/3dMS7il3+Vbo
vfWy5LceCzJAWQEqg8cdLVsg+pV4pHVLOrgElg3kmtGTi+jxPXUxHiX6ViWqTR05Y5PNihi2ZcE7
sODAwhM5627hQt4DO1o3Fb0vXntWkGVOVH6p+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14960)
`pragma protect data_block
+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
Q4GIxYg3TPXTP/zbDo+3XkeWchKUl+6Rlq8=
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
