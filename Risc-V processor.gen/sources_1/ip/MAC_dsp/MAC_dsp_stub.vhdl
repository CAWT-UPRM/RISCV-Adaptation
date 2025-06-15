-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jun 12 13:44:26 2025
-- Host        : Louises running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/pizar/Risc-V processor/Risc-V
--               processor.gen/sources_1/ip/MAC_dsp/MAC_dsp_stub.vhdl}
-- Design      : MAC_dsp
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAC_dsp is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    P : out STD_LOGIC_VECTOR ( 43 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MAC_dsp : entity is "MAC_dsp,dsp_macro_v1_0_7,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of MAC_dsp : entity is "MAC_dsp,dsp_macro_v1_0_7,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dsp_macro,x_ipVersion=1.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=artix7,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=1,C_SQUARE_FCN=0,C_A_WIDTH=25,C_B_WIDTH=18,C_C_WIDTH=32,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=43,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000000000011010100000000,C_REG_CONFIG=00000000000000000000000000000000,C_TEST_CORE=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MAC_dsp : entity is "yes";
end MAC_dsp;

architecture stub of MAC_dsp is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "A[24:0],B[17:0],C[31:0],P[43:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_mode : string;
  attribute x_interface_mode of A : signal is "slave a_intf";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_mode of B : signal is "slave b_intf";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of C : signal is "xilinx.com:signal:data:1.0 c_intf DATA";
  attribute x_interface_mode of C : signal is "slave c_intf";
  attribute x_interface_parameter of C : signal is "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_mode of P : signal is "master p_intf";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "dsp_macro_v1_0_7,Vivado 2024.2";
begin
end;
