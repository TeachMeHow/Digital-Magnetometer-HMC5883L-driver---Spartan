--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: I2C_Master_timesim.vhd
-- /___/   /\     Timestamp: Fri Apr  5 14:22:22 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf I2C_Master.pcf -rpw 100 -tpw 0 -ar Structure -tm I2C_Master -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim I2C_Master.ncd I2C_Master_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: I2C_Master.ncd
-- Output file	: /home/imarobot/compas-test/netgen/par/I2C_Master_timesim.vhd
-- # of Entities	: 1
-- Design Name	: I2C_Master
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity I2C_Master is
  port (
    SDA : inout STD_LOGIC; 
    SCL : inout STD_LOGIC; 
    Clk : in STD_LOGIC := 'X'; 
    NACK : out STD_LOGIC; 
    FIFO_Pop : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    Go : in STD_LOGIC := 'X'; 
    Busy : out STD_LOGIC; 
    FIFO_Empty : out STD_LOGIC; 
    FIFO_Push : in STD_LOGIC := 'X'; 
    FIFO_Full : out STD_LOGIC; 
    FIFO_DO : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Address : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    FIFO_DI : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ReadCnt : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end I2C_Master;

architecture Structure of I2C_Master is
  signal Clk_BUFGP : STD_LOGIC; 
  signal cntSCL_or0000_0 : STD_LOGIC; 
  signal Mcount_cntSCL_cy_1_Q : STD_LOGIC; 
  signal Mcount_cntSCL_cy_3_Q : STD_LOGIC; 
  signal Address_0_IBUF_978 : STD_LOGIC; 
  signal Address_1_IBUF_979 : STD_LOGIC; 
  signal FIFO_Empty_OBUF_980 : STD_LOGIC; 
  signal FIFO_DI_0_IBUF_981 : STD_LOGIC; 
  signal Address_2_IBUF_982 : STD_LOGIC; 
  signal FIFO_DI_1_IBUF_983 : STD_LOGIC; 
  signal Address_3_IBUF_984 : STD_LOGIC; 
  signal SDAout_125 : STD_LOGIC; 
  signal SDAin : STD_LOGIC; 
  signal FIFO_DI_2_IBUF_987 : STD_LOGIC; 
  signal Address_4_IBUF_988 : STD_LOGIC; 
  signal FIFO_DI_3_IBUF_989 : STD_LOGIC; 
  signal Address_5_IBUF_990 : STD_LOGIC; 
  signal FIFO_DI_4_IBUF_991 : STD_LOGIC; 
  signal Address_6_IBUF_992 : STD_LOGIC; 
  signal state_FSM_FFd5_243 : STD_LOGIC; 
  signal FIFO_DI_5_IBUF_994 : STD_LOGIC; 
  signal Address_7_IBUF_995 : STD_LOGIC; 
  signal SCLout_116 : STD_LOGIC; 
  signal FIFO_DI_6_IBUF_997 : STD_LOGIC; 
  signal FIFO_DI_7_IBUF_998 : STD_LOGIC; 
  signal Go_IBUF_999 : STD_LOGIC; 
  signal FIFO_Push_IBUF_1000 : STD_LOGIC; 
  signal FIFO_Pop_IBUF_1001 : STD_LOGIC; 
  signal Reset_IBUF_1002 : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_0 : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_0 : STD_LOGIC; 
  signal ReadCnt_0_IBUF_1005 : STD_LOGIC; 
  signal FIFO_Full_OBUF_1006 : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_0 : STD_LOGIC; 
  signal ReadCnt_1_IBUF_1008 : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_0 : STD_LOGIC; 
  signal ReadCnt_2_IBUF_1010 : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_0 : STD_LOGIC; 
  signal ReadCnt_3_IBUF_1012 : STD_LOGIC; 
  signal NACK_OBUF_1013 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_0 : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_0 : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal sregOut_not0001_232_0 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and000058_183_0 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal RdNotWr_96 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and000067_184_0 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal SDAout_mux000358_O : STD_LOGIC; 
  signal SDAout_mux0003180_131_0 : STD_LOGIC; 
  signal SDAout_mux0003431_137_0 : STD_LOGIC; 
  signal state_FSM_FFd4_241 : STD_LOGIC; 
  signal state_FSM_FFd2_235 : STD_LOGIC; 
  signal SDAout_mux0003412_135 : STD_LOGIC; 
  signal SDAout_mux0003425_136 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal i_FIFO_DoPop_161_0 : STD_LOGIC; 
  signal state_FSM_FFd3_239 : STD_LOGIC; 
  signal N61_0 : STD_LOGIC; 
  signal SDAout_mux0003107_O : STD_LOGIC; 
  signal SDAout_mux0003112_127_0 : STD_LOGIC; 
  signal N69_0 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N71_0 : STD_LOGIC; 
  signal N75_0 : STD_LOGIC; 
  signal i_FIFO_DoPush13_SW0_O : STD_LOGIC; 
  signal state_FSM_FFd1_233 : STD_LOGIC; 
  signal i_FIFO_DoPush13_164_0 : STD_LOGIC; 
  signal SDAout_mux0003157_O : STD_LOGIC; 
  signal SDAout_mux000393_141_0 : STD_LOGIC; 
  signal SDAout_mux0003139_128_0 : STD_LOGIC; 
  signal N82_0 : STD_LOGIC; 
  signal SDAout_mux000325_133_0 : STD_LOGIC; 
  signal SDAout_mux000337_O : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N59_0 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal SDAout_mux000388_O : STD_LOGIC; 
  signal state_FSM_FFd3_In_SW0_O : STD_LOGIC; 
  signal sclEnd_0 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and0000102_SW0_O : STD_LOGIC; 
  signal i_FIFO_Result_3_0 : STD_LOGIC; 
  signal i_FIFO_DoPush0_163 : STD_LOGIC; 
  signal N79_0 : STD_LOGIC; 
  signal RdNotWr_and0000 : STD_LOGIC; 
  signal sregOut_not0001_SW1_O : STD_LOGIC; 
  signal i_FIFO_DoPush : STD_LOGIC; 
  signal i_FIFO_Result_3_1_0 : STD_LOGIC; 
  signal cntBytes_not0001_151_0 : STD_LOGIC; 
  signal cntBits_or0000_0 : STD_LOGIC; 
  signal N87_0 : STD_LOGIC; 
  signal NACK_and00007_95_0 : STD_LOGIC; 
  signal state_FSM_FFd2_In12_236_0 : STD_LOGIC; 
  signal state_FSM_FFd2_In2_237_0 : STD_LOGIC; 
  signal state_FSM_FFd6_245 : STD_LOGIC; 
  signal N55_0 : STD_LOGIC; 
  signal i_FIFO_iFull_and000071_189 : STD_LOGIC; 
  signal i_FIFO_iFull_and000076_190_0 : STD_LOGIC; 
  signal i_FIFO_iFull_and000048_188_0 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal SCLout_mux00008_122_0 : STD_LOGIC; 
  signal SCLout_mux000021_118 : STD_LOGIC; 
  signal SCLout_mux000017_117_0 : STD_LOGIC; 
  signal SCLout_mux000061_119 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal SDAout_mux000316_130_0 : STD_LOGIC; 
  signal sregIn_and0000_0 : STD_LOGIC; 
  signal N80_0 : STD_LOGIC; 
  signal cntSCL_0_DXMUX_1180 : STD_LOGIC; 
  signal cntSCL_0_XORF_1178 : STD_LOGIC; 
  signal cntSCL_0_LOGIC_ONE_1177 : STD_LOGIC; 
  signal cntSCL_0_CYINIT_1176 : STD_LOGIC; 
  signal cntSCL_0_CYSELF_1167 : STD_LOGIC; 
  signal Mcount_cntSCL_lut : STD_LOGIC; 
  signal cntSCL_0_BXINV_1165 : STD_LOGIC; 
  signal cntSCL_0_DYMUX_1160 : STD_LOGIC; 
  signal cntSCL_0_XORG_1158 : STD_LOGIC; 
  signal cntSCL_0_CYMUXG_1157 : STD_LOGIC; 
  signal Mcount_cntSCL_cy_0_Q : STD_LOGIC; 
  signal cntSCL_0_LOGIC_ZERO_1155 : STD_LOGIC; 
  signal cntSCL_0_CYSELG_1146 : STD_LOGIC; 
  signal cntSCL_0_G : STD_LOGIC; 
  signal cntSCL_0_SRINV_1144 : STD_LOGIC; 
  signal cntSCL_0_CLKINV_1143 : STD_LOGIC; 
  signal cntSCL_2_DXMUX_1232 : STD_LOGIC; 
  signal cntSCL_2_XORF_1230 : STD_LOGIC; 
  signal cntSCL_2_CYINIT_1229 : STD_LOGIC; 
  signal cntSCL_2_F : STD_LOGIC; 
  signal cntSCL_2_DYMUX_1215 : STD_LOGIC; 
  signal cntSCL_2_XORG_1213 : STD_LOGIC; 
  signal Mcount_cntSCL_cy_2_Q : STD_LOGIC; 
  signal cntSCL_2_CYSELF_1211 : STD_LOGIC; 
  signal cntSCL_2_CYMUXFAST_1210 : STD_LOGIC; 
  signal cntSCL_2_CYAND_1209 : STD_LOGIC; 
  signal cntSCL_2_FASTCARRY_1208 : STD_LOGIC; 
  signal cntSCL_2_CYMUXG2_1207 : STD_LOGIC; 
  signal cntSCL_2_CYMUXF2_1206 : STD_LOGIC; 
  signal cntSCL_2_LOGIC_ZERO_1205 : STD_LOGIC; 
  signal cntSCL_2_CYSELG_1196 : STD_LOGIC; 
  signal cntSCL_2_G : STD_LOGIC; 
  signal cntSCL_2_SRINV_1194 : STD_LOGIC; 
  signal cntSCL_2_CLKINV_1193 : STD_LOGIC; 
  signal cntSCL_4_DXMUX_1284 : STD_LOGIC; 
  signal cntSCL_4_XORF_1282 : STD_LOGIC; 
  signal cntSCL_4_CYINIT_1281 : STD_LOGIC; 
  signal cntSCL_4_F : STD_LOGIC; 
  signal cntSCL_4_DYMUX_1267 : STD_LOGIC; 
  signal cntSCL_4_XORG_1265 : STD_LOGIC; 
  signal Mcount_cntSCL_cy_4_Q : STD_LOGIC; 
  signal cntSCL_4_CYSELF_1263 : STD_LOGIC; 
  signal cntSCL_4_CYMUXFAST_1262 : STD_LOGIC; 
  signal cntSCL_4_CYAND_1261 : STD_LOGIC; 
  signal cntSCL_4_FASTCARRY_1260 : STD_LOGIC; 
  signal cntSCL_4_CYMUXG2_1259 : STD_LOGIC; 
  signal cntSCL_4_CYMUXF2_1258 : STD_LOGIC; 
  signal cntSCL_4_LOGIC_ZERO_1257 : STD_LOGIC; 
  signal cntSCL_4_CYSELG_1248 : STD_LOGIC; 
  signal cntSCL_4_G : STD_LOGIC; 
  signal cntSCL_4_SRINV_1246 : STD_LOGIC; 
  signal cntSCL_4_CLKINV_1245 : STD_LOGIC; 
  signal cntSCL_6_DXMUX_1329 : STD_LOGIC; 
  signal cntSCL_6_XORF_1327 : STD_LOGIC; 
  signal cntSCL_6_LOGIC_ZERO_1326 : STD_LOGIC; 
  signal cntSCL_6_CYINIT_1325 : STD_LOGIC; 
  signal cntSCL_6_CYSELF_1316 : STD_LOGIC; 
  signal cntSCL_6_F : STD_LOGIC; 
  signal cntSCL_6_DYMUX_1310 : STD_LOGIC; 
  signal cntSCL_6_XORG_1308 : STD_LOGIC; 
  signal Mcount_cntSCL_cy_6_Q : STD_LOGIC; 
  signal cntSCL_7_rt_1305 : STD_LOGIC; 
  signal cntSCL_6_SRINV_1297 : STD_LOGIC; 
  signal cntSCL_6_CLKINV_1296 : STD_LOGIC; 
  signal Address_0_INBUF : STD_LOGIC; 
  signal Address_1_INBUF : STD_LOGIC; 
  signal FIFO_Empty_O : STD_LOGIC; 
  signal FIFO_DI_0_INBUF : STD_LOGIC; 
  signal Address_2_INBUF : STD_LOGIC; 
  signal FIFO_DI_1_INBUF : STD_LOGIC; 
  signal Address_3_INBUF : STD_LOGIC; 
  signal SDA_O : STD_LOGIC; 
  signal SDA_T : STD_LOGIC; 
  signal SDA_INBUF : STD_LOGIC; 
  signal FIFO_DI_2_INBUF : STD_LOGIC; 
  signal Address_4_INBUF : STD_LOGIC; 
  signal FIFO_DI_3_INBUF : STD_LOGIC; 
  signal Address_5_INBUF : STD_LOGIC; 
  signal FIFO_DI_4_INBUF : STD_LOGIC; 
  signal Address_6_INBUF : STD_LOGIC; 
  signal Busy_O : STD_LOGIC; 
  signal FIFO_DI_5_INBUF : STD_LOGIC; 
  signal Address_7_INBUF : STD_LOGIC; 
  signal SCL_O : STD_LOGIC; 
  signal SCL_T : STD_LOGIC; 
  signal FIFO_DI_6_INBUF : STD_LOGIC; 
  signal FIFO_DI_7_INBUF : STD_LOGIC; 
  signal Go_INBUF : STD_LOGIC; 
  signal FIFO_Push_INBUF : STD_LOGIC; 
  signal FIFO_Pop_INBUF : STD_LOGIC; 
  signal Reset_INBUF : STD_LOGIC; 
  signal FIFO_DO_0_O : STD_LOGIC; 
  signal FIFO_DO_1_O : STD_LOGIC; 
  signal ReadCnt_0_INBUF : STD_LOGIC; 
  signal FIFO_Full_O : STD_LOGIC; 
  signal FIFO_DO_2_O : STD_LOGIC; 
  signal ReadCnt_1_INBUF : STD_LOGIC; 
  signal FIFO_DO_3_O : STD_LOGIC; 
  signal ReadCnt_2_INBUF : STD_LOGIC; 
  signal FIFO_DO_4_O : STD_LOGIC; 
  signal ReadCnt_3_INBUF : STD_LOGIC; 
  signal NACK_O : STD_LOGIC; 
  signal FIFO_DO_5_O : STD_LOGIC; 
  signal FIFO_DO_6_O : STD_LOGIC; 
  signal Clk_INBUF : STD_LOGIC; 
  signal FIFO_DO_7_O : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal sregOut_2_DXMUX_1651 : STD_LOGIC; 
  signal sregOut_2_F5MUX_1649 : STD_LOGIC; 
  signal sregOut_mux0000_2_1_215 : STD_LOGIC; 
  signal sregOut_2_BXINV_1642 : STD_LOGIC; 
  signal sregOut_mux0000_2_2_216 : STD_LOGIC; 
  signal sregOut_2_CLKINV_1635 : STD_LOGIC; 
  signal sregOut_2_CEINV_1634 : STD_LOGIC; 
  signal sregOut_3_DXMUX_1685 : STD_LOGIC; 
  signal sregOut_3_F5MUX_1683 : STD_LOGIC; 
  signal sregOut_mux0000_3_1_218 : STD_LOGIC; 
  signal sregOut_3_BXINV_1676 : STD_LOGIC; 
  signal sregOut_mux0000_3_2_219 : STD_LOGIC; 
  signal sregOut_3_CLKINV_1669 : STD_LOGIC; 
  signal sregOut_3_CEINV_1668 : STD_LOGIC; 
  signal N84_F5MUX_1713 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N84_BXINV_1706 : STD_LOGIC; 
  signal N84_G : STD_LOGIC; 
  signal N85_F5MUX_1738 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N85_BXINV_1731 : STD_LOGIC; 
  signal N85_G : STD_LOGIC; 
  signal sregOut_4_DXMUX_1769 : STD_LOGIC; 
  signal sregOut_4_F5MUX_1767 : STD_LOGIC; 
  signal sregOut_mux0000_4_1_221 : STD_LOGIC; 
  signal sregOut_4_BXINV_1760 : STD_LOGIC; 
  signal sregOut_mux0000_4_2_222 : STD_LOGIC; 
  signal sregOut_4_CLKINV_1753 : STD_LOGIC; 
  signal sregOut_4_CEINV_1752 : STD_LOGIC; 
  signal sregOut_5_DXMUX_1803 : STD_LOGIC; 
  signal sregOut_5_F5MUX_1801 : STD_LOGIC; 
  signal sregOut_mux0000_5_1_224 : STD_LOGIC; 
  signal sregOut_5_BXINV_1794 : STD_LOGIC; 
  signal sregOut_mux0000_5_2_225 : STD_LOGIC; 
  signal sregOut_5_CLKINV_1787 : STD_LOGIC; 
  signal sregOut_5_CEINV_1786 : STD_LOGIC; 
  signal sregOut_6_DXMUX_1837 : STD_LOGIC; 
  signal sregOut_6_F5MUX_1835 : STD_LOGIC; 
  signal sregOut_mux0000_6_1_227 : STD_LOGIC; 
  signal sregOut_6_BXINV_1828 : STD_LOGIC; 
  signal sregOut_mux0000_6_2_228 : STD_LOGIC; 
  signal sregOut_6_CLKINV_1821 : STD_LOGIC; 
  signal sregOut_6_CEINV_1820 : STD_LOGIC; 
  signal sregOut_7_DXMUX_1871 : STD_LOGIC; 
  signal sregOut_7_F5MUX_1869 : STD_LOGIC; 
  signal sregOut_mux0000_7_1_230 : STD_LOGIC; 
  signal sregOut_7_BXINV_1862 : STD_LOGIC; 
  signal sregOut_mux0000_7_2_231 : STD_LOGIC; 
  signal sregOut_7_CLKINV_1855 : STD_LOGIC; 
  signal sregOut_7_CEINV_1854 : STD_LOGIC; 
  signal sregOut_1_DXMUX_1905 : STD_LOGIC; 
  signal sregOut_1_F5MUX_1903 : STD_LOGIC; 
  signal sregOut_mux0000_1_1_212 : STD_LOGIC; 
  signal sregOut_1_BXINV_1896 : STD_LOGIC; 
  signal sregOut_mux0000_1_2_213 : STD_LOGIC; 
  signal sregOut_1_CLKINV_1889 : STD_LOGIC; 
  signal sregOut_1_CEINV_1888 : STD_LOGIC; 
  signal SDAout_125_DXMUX_1938 : STD_LOGIC; 
  signal SDAout_mux0003204 : STD_LOGIC; 
  signal SDAout_mux000358_O_pack_2 : STD_LOGIC; 
  signal SDAout_125_SRINV_1923 : STD_LOGIC; 
  signal SDAout_125_CLKINV_1922 : STD_LOGIC; 
  signal i_FIFO_DoPop_161 : STD_LOGIC; 
  signal N65_pack_1 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal SDAout_mux0003412_135_pack_1 : STD_LOGIC; 
  signal SDAout_mux0003112_127 : STD_LOGIC; 
  signal SDAout_mux0003107_O_pack_1 : STD_LOGIC; 
  signal i_FIFO_iFull_or0000 : STD_LOGIC; 
  signal N64_pack_1 : STD_LOGIC; 
  signal i_FIFO_DoPush13_164 : STD_LOGIC; 
  signal i_FIFO_DoPush13_SW0_O_pack_1 : STD_LOGIC; 
  signal SDAout_mux0003180_131 : STD_LOGIC; 
  signal SDAout_mux0003157_O_pack_1 : STD_LOGIC; 
  signal SDAout_mux0003431_137 : STD_LOGIC; 
  signal SDAout_mux000337_O_pack_1 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal SDAout_mux0003425_136_pack_1 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N12_pack_1 : STD_LOGIC; 
  signal SDAout_mux00038_139 : STD_LOGIC; 
  signal N111_pack_1 : STD_LOGIC; 
  signal SDAout_mux000393_141 : STD_LOGIC; 
  signal SDAout_mux000388_O_pack_1 : STD_LOGIC; 
  signal state_FSM_FFd3_239_DXMUX_2235 : STD_LOGIC; 
  signal state_FSM_FFd3_In_240 : STD_LOGIC; 
  signal state_FSM_FFd3_In_SW0_O_pack_2 : STD_LOGIC; 
  signal state_FSM_FFd3_239_SRINV_2219 : STD_LOGIC; 
  signal state_FSM_FFd3_239_CLKINV_2218 : STD_LOGIC; 
  signal sclEnd : STD_LOGIC; 
  signal N15_pack_1 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and0000 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and0000102_SW0_O_pack_1 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal i_FIFO_DoPush0_163_pack_1 : STD_LOGIC; 
  signal sregOut_not0001_232 : STD_LOGIC; 
  signal sregOut_not0001_SW1_O_pack_1 : STD_LOGIC; 
  signal i_FIFO_addrWr_3_DXMUX_2373 : STD_LOGIC; 
  signal i_FIFO_addrWr_3_FXMUX_2372 : STD_LOGIC; 
  signal i_FIFO_Result_3_1 : STD_LOGIC; 
  signal i_FIFO_addrWr_3_DYMUX_2360 : STD_LOGIC; 
  signal i_FIFO_Result_2_1_170 : STD_LOGIC; 
  signal i_FIFO_addrWr_3_SRINV_2351 : STD_LOGIC; 
  signal i_FIFO_addrWr_3_CLKINV_2350 : STD_LOGIC; 
  signal i_FIFO_addrWr_3_CEINV_2349 : STD_LOGIC; 
  signal i_FIFO_addrRd_3_DXMUX_2416 : STD_LOGIC; 
  signal i_FIFO_addrRd_3_FXMUX_2415 : STD_LOGIC; 
  signal i_FIFO_addrRd_3_DYMUX_2403 : STD_LOGIC; 
  signal i_FIFO_addrRd_3_SRINV_2394 : STD_LOGIC; 
  signal i_FIFO_addrRd_3_CLKINV_2393 : STD_LOGIC; 
  signal i_FIFO_addrRd_3_CEINV_2392 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal cntBytes_0_DYMUX_2441 : STD_LOGIC; 
  signal Mcount_cntBytes : STD_LOGIC; 
  signal cntBytes_0_CLKINV_2433 : STD_LOGIC; 
  signal cntBytes_0_CEINV_2432 : STD_LOGIC; 
  signal cntBits_or0000 : STD_LOGIC; 
  signal state_FSM_FFd1_233_DYMUX_2475 : STD_LOGIC; 
  signal state_FSM_FFd1_In_234 : STD_LOGIC; 
  signal state_FSM_FFd1_233_SRINV_2467 : STD_LOGIC; 
  signal state_FSM_FFd1_233_CLKINV_2466 : STD_LOGIC; 
  signal NACK_and0000 : STD_LOGIC; 
  signal state_FSM_FFd2_235_DYMUX_2511 : STD_LOGIC; 
  signal state_FSM_FFd2_In26_238 : STD_LOGIC; 
  signal state_FSM_FFd2_235_SRINV_2503 : STD_LOGIC; 
  signal state_FSM_FFd2_235_CLKINV_2502 : STD_LOGIC; 
  signal state_FSM_FFd2_235_CEINV_2501 : STD_LOGIC; 
  signal cntSCL_or0000 : STD_LOGIC; 
  signal state_FSM_FFd4_241_DYMUX_2543 : STD_LOGIC; 
  signal state_FSM_FFd4_In : STD_LOGIC; 
  signal state_FSM_FFd4_241_SRINV_2535 : STD_LOGIC; 
  signal state_FSM_FFd4_241_CLKINV_2534 : STD_LOGIC; 
  signal state_FSM_FFd5_243_REVUSED_2581 : STD_LOGIC; 
  signal state_FSM_FFd5_243_DYMUX_2580 : STD_LOGIC; 
  signal state_FSM_FFd5_In1_244 : STD_LOGIC; 
  signal state_FSM_FFd5_243_SRINV_2571 : STD_LOGIC; 
  signal state_FSM_FFd5_243_CLKINV_2570 : STD_LOGIC; 
  signal cntBytes_not0001_151 : STD_LOGIC; 
  signal sregOut_0_DYMUX_2615 : STD_LOGIC; 
  signal sregOut_0_CLKINV_2607 : STD_LOGIC; 
  signal sregOut_0_CEINV_2606 : STD_LOGIC; 
  signal cntBits_3_DXMUX_2663 : STD_LOGIC; 
  signal cntBits_3_DYMUX_2650 : STD_LOGIC; 
  signal cntBits_3_SRINV_2641 : STD_LOGIC; 
  signal cntBits_3_CLKINV_2640 : STD_LOGIC; 
  signal cntBits_3_CEINV_2639 : STD_LOGIC; 
  signal i_FIFO_iFull_and000076_190 : STD_LOGIC; 
  signal i_FIFO_iFull_and000071_189_pack_1 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and000058_183 : STD_LOGIC; 
  signal i_FIFO_iFull_and000048_188 : STD_LOGIC; 
  signal state_FSM_FFd2_In2_237 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal i_FIFO_addrWr_0_DXMUX_2804 : STD_LOGIC; 
  signal i_FIFO_iEmpty_and000067_184 : STD_LOGIC; 
  signal i_FIFO_addrWr_0_DYMUX_2789 : STD_LOGIC; 
  signal i_FIFO_Result_1_1_168 : STD_LOGIC; 
  signal i_FIFO_addrWr_0_SRINV_2779 : STD_LOGIC; 
  signal i_FIFO_addrWr_0_CLKINV_2778 : STD_LOGIC; 
  signal i_FIFO_addrWr_0_CEINV_2777 : STD_LOGIC; 
  signal cntBytes_3_DXMUX_2838 : STD_LOGIC; 
  signal Mcount_cntBytes3 : STD_LOGIC; 
  signal N109_pack_2 : STD_LOGIC; 
  signal cntBytes_3_CLKINV_2823 : STD_LOGIC; 
  signal cntBytes_3_CEINV_2822 : STD_LOGIC; 
  signal FIFO_Full_OBUF_DYMUX_2852 : STD_LOGIC; 
  signal FIFO_Full_OBUF_BYINV_2851 : STD_LOGIC; 
  signal FIFO_Full_OBUF_SRINV_2850 : STD_LOGIC; 
  signal FIFO_Full_OBUF_CLKINV_2849 : STD_LOGIC; 
  signal FIFO_Full_OBUF_CEINV_2848 : STD_LOGIC; 
  signal i_FIFO_addrRd_0_DXMUX_2909 : STD_LOGIC; 
  signal i_FIFO_addrRd_0_DYMUX_2902 : STD_LOGIC; 
  signal i_FIFO_addrRd_0_SRINV_2892 : STD_LOGIC; 
  signal i_FIFO_addrRd_0_CLKINV_2891 : STD_LOGIC; 
  signal i_FIFO_addrRd_0_CEINV_2890 : STD_LOGIC; 
  signal state_FSM_FFd2_In12_236 : STD_LOGIC; 
  signal state_FSM_FFd6_245_DYMUX_2970 : STD_LOGIC; 
  signal state_FSM_FFd6_245_BYINV_2969 : STD_LOGIC; 
  signal state_FSM_FFd6_245_SRINV_2968 : STD_LOGIC; 
  signal state_FSM_FFd6_245_CLKINV_2967 : STD_LOGIC; 
  signal RdNotWr_96_DYMUX_2982 : STD_LOGIC; 
  signal RdNotWr_96_CLKINV_2980 : STD_LOGIC; 
  signal RdNotWr_96_CEINV_2979 : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_3032 : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_DIF_MUX_3020 : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_DIG_MUX_3007 : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_CLKINV_3005 : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_SRINV_2999 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal SCLout_116_DXMUX_3087 : STD_LOGIC; 
  signal SCLout_mux000072 : STD_LOGIC; 
  signal SCLout_mux000021_118_pack_2 : STD_LOGIC; 
  signal SCLout_116_SRINV_3071 : STD_LOGIC; 
  signal SCLout_116_CLKINV_3070 : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_3137 : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_DIF_MUX_3125 : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_DIG_MUX_3112 : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_CLKINV_3110 : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_SRINV_3104 : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_3185 : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_DIF_MUX_3173 : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_DIG_MUX_3160 : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_CLKINV_3158 : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_SRINV_3152 : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_3233 : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_DIF_MUX_3221 : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_DIG_MUX_3208 : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_CLKINV_3206 : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_SRINV_3200 : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_3281 : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_DIF_MUX_3269 : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_DIG_MUX_3256 : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_CLKINV_3254 : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_SRINV_3248 : STD_LOGIC; 
  signal SDAout_mux0003139_128 : STD_LOGIC; 
  signal SCLout_mux000017_117 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_3353 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_DIF_MUX_3341 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_DIG_MUX_3328 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_CLKINV_3326 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_SRINV_3320 : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_3401 : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_DIF_MUX_3389 : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_DIG_MUX_3376 : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_CLKINV_3374 : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_SRINV_3368 : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_3449 : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_DIF_MUX_3437 : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_DIG_MUX_3424 : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_CLKINV_3422 : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_SRINV_3416 : STD_LOGIC; 
  signal cntBits_1_DXMUX_3491 : STD_LOGIC; 
  signal cntBits_1_DYMUX_3476 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal cntBits_1_SRINV_3467 : STD_LOGIC; 
  signal cntBits_1_CLKINV_3466 : STD_LOGIC; 
  signal cntBits_1_CEINV_3465 : STD_LOGIC; 
  signal SCLout_mux000063_120 : STD_LOGIC; 
  signal SCLout_mux000061_119_pack_1 : STD_LOGIC; 
  signal i_FIFO_iFull_and0000 : STD_LOGIC; 
  signal i_FIFO_DoPush_pack_1 : STD_LOGIC; 
  signal cntBytes_2_DXMUX_3573 : STD_LOGIC; 
  signal Mcount_cntBytes2 : STD_LOGIC; 
  signal N107_pack_2 : STD_LOGIC; 
  signal cntBytes_2_CLKINV_3557 : STD_LOGIC; 
  signal cntBytes_2_CEINV_3556 : STD_LOGIC; 
  signal SDAout_mux000316_130 : STD_LOGIC; 
  signal sregIn_and0000 : STD_LOGIC; 
  signal SCLout_mux00008_122 : STD_LOGIC; 
  signal NACK_and00007_95 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal cntBytes_1_DXMUX_3666 : STD_LOGIC; 
  signal Mcount_cntBytes1 : STD_LOGIC; 
  signal RdNotWr_and0000_pack_2 : STD_LOGIC; 
  signal cntBytes_1_CLKINV_3649 : STD_LOGIC; 
  signal cntBytes_1_CEINV_3648 : STD_LOGIC; 
  signal sregIn_1_DXMUX_3686 : STD_LOGIC; 
  signal sregIn_1_DYMUX_3680 : STD_LOGIC; 
  signal sregIn_1_CLKINV_3678 : STD_LOGIC; 
  signal sregIn_1_CEINV_3677 : STD_LOGIC; 
  signal NACK_OBUF_DYMUX_3700 : STD_LOGIC; 
  signal NACK_OBUF_BYINV_3699 : STD_LOGIC; 
  signal NACK_OBUF_SRINV_3698 : STD_LOGIC; 
  signal NACK_OBUF_CLKINV_3697 : STD_LOGIC; 
  signal NACK_OBUF_CEINV_3696 : STD_LOGIC; 
  signal sregIn_3_DXMUX_3721 : STD_LOGIC; 
  signal sregIn_3_DYMUX_3715 : STD_LOGIC; 
  signal sregIn_3_CLKINV_3713 : STD_LOGIC; 
  signal sregIn_3_CEINV_3712 : STD_LOGIC; 
  signal FIFO_Empty_OBUF_DYMUX_3735 : STD_LOGIC; 
  signal FIFO_Empty_OBUF_BYINV_3734 : STD_LOGIC; 
  signal FIFO_Empty_OBUF_SRINV_3733 : STD_LOGIC; 
  signal FIFO_Empty_OBUF_CLKINV_3732 : STD_LOGIC; 
  signal FIFO_Empty_OBUF_CEINV_3731 : STD_LOGIC; 
  signal sregIn_5_DXMUX_3756 : STD_LOGIC; 
  signal sregIn_5_DYMUX_3750 : STD_LOGIC; 
  signal sregIn_5_CLKINV_3748 : STD_LOGIC; 
  signal sregIn_5_CEINV_3747 : STD_LOGIC; 
  signal sregIn_7_DXMUX_3776 : STD_LOGIC; 
  signal sregIn_7_DYMUX_3770 : STD_LOGIC; 
  signal sregIn_7_CLKINV_3768 : STD_LOGIC; 
  signal sregIn_7_CEINV_3767 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal i_FIFO_iEmpty_or0000 : STD_LOGIC; 
  signal SDAout_mux000325_133 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal FIFO_DO_5_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_6_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_2_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_3_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_4_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_1_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_0_OBUF_G_RAMOUT : STD_LOGIC; 
  signal FIFO_DO_7_OBUF_G_RAMOUT : STD_LOGIC; 
  signal SDA_OUTPUT_OFF_O1INV_1397 : STD_LOGIC; 
  signal SCL_OUTPUT_OFF_O1INV_1469 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR4 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal cntSCL : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sregOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cntBits : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cntBytes : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_FIFO_addrWr : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_FIFO_addrRd : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal sregIn : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal i_FIFO_Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal DI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sregOut_mux0000 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  cntSCL_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y30"
    )
    port map (
      O => cntSCL_0_LOGIC_ZERO_1155
    );
  cntSCL_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X65Y30"
    )
    port map (
      O => cntSCL_0_LOGIC_ONE_1177
    );
  cntSCL_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_0_XORF_1178,
      O => cntSCL_0_DXMUX_1180
    );
  cntSCL_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y30"
    )
    port map (
      I0 => cntSCL_0_CYINIT_1176,
      I1 => Mcount_cntSCL_lut,
      O => cntSCL_0_XORF_1178
    );
  cntSCL_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y30"
    )
    port map (
      IA => cntSCL_0_LOGIC_ONE_1177,
      IB => cntSCL_0_CYINIT_1176,
      SEL => cntSCL_0_CYSELF_1167,
      O => Mcount_cntSCL_cy_0_Q
    );
  cntSCL_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_0_BXINV_1165,
      O => cntSCL_0_CYINIT_1176
    );
  cntSCL_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntSCL_lut,
      O => cntSCL_0_CYSELF_1167
    );
  cntSCL_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => cntSCL_0_BXINV_1165
    );
  cntSCL_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_0_XORG_1158,
      O => cntSCL_0_DYMUX_1160
    );
  cntSCL_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y30"
    )
    port map (
      I0 => Mcount_cntSCL_cy_0_Q,
      I1 => cntSCL_0_G,
      O => cntSCL_0_XORG_1158
    );
  cntSCL_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_0_CYMUXG_1157,
      O => Mcount_cntSCL_cy_1_Q
    );
  cntSCL_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X65Y30"
    )
    port map (
      IA => cntSCL_0_LOGIC_ZERO_1155,
      IB => Mcount_cntSCL_cy_0_Q,
      SEL => cntSCL_0_CYSELG_1146,
      O => cntSCL_0_CYMUXG_1157
    );
  cntSCL_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_0_G,
      O => cntSCL_0_CYSELG_1146
    );
  cntSCL_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_or0000_0,
      O => cntSCL_0_SRINV_1144
    );
  cntSCL_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntSCL_0_CLKINV_1143
    );
  cntSCL_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      O => cntSCL_2_LOGIC_ZERO_1205
    );
  cntSCL_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_2_XORF_1230,
      O => cntSCL_2_DXMUX_1232
    );
  cntSCL_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      I0 => cntSCL_2_CYINIT_1229,
      I1 => cntSCL_2_F,
      O => cntSCL_2_XORF_1230
    );
  cntSCL_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      IA => cntSCL_2_LOGIC_ZERO_1205,
      IB => cntSCL_2_CYINIT_1229,
      SEL => cntSCL_2_CYSELF_1211,
      O => Mcount_cntSCL_cy_2_Q
    );
  cntSCL_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      IA => cntSCL_2_LOGIC_ZERO_1205,
      IB => cntSCL_2_LOGIC_ZERO_1205,
      SEL => cntSCL_2_CYSELF_1211,
      O => cntSCL_2_CYMUXF2_1206
    );
  cntSCL_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntSCL_cy_1_Q,
      O => cntSCL_2_CYINIT_1229
    );
  cntSCL_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_2_F,
      O => cntSCL_2_CYSELF_1211
    );
  cntSCL_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_2_XORG_1213,
      O => cntSCL_2_DYMUX_1215
    );
  cntSCL_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      I0 => Mcount_cntSCL_cy_2_Q,
      I1 => cntSCL_2_G,
      O => cntSCL_2_XORG_1213
    );
  cntSCL_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_2_CYMUXFAST_1210,
      O => Mcount_cntSCL_cy_3_Q
    );
  cntSCL_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntSCL_cy_1_Q,
      O => cntSCL_2_FASTCARRY_1208
    );
  cntSCL_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      I0 => cntSCL_2_CYSELG_1196,
      I1 => cntSCL_2_CYSELF_1211,
      O => cntSCL_2_CYAND_1209
    );
  cntSCL_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      IA => cntSCL_2_CYMUXG2_1207,
      IB => cntSCL_2_FASTCARRY_1208,
      SEL => cntSCL_2_CYAND_1209,
      O => cntSCL_2_CYMUXFAST_1210
    );
  cntSCL_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y31"
    )
    port map (
      IA => cntSCL_2_LOGIC_ZERO_1205,
      IB => cntSCL_2_CYMUXF2_1206,
      SEL => cntSCL_2_CYSELG_1196,
      O => cntSCL_2_CYMUXG2_1207
    );
  cntSCL_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_2_G,
      O => cntSCL_2_CYSELG_1196
    );
  cntSCL_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_or0000_0,
      O => cntSCL_2_SRINV_1194
    );
  cntSCL_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntSCL_2_CLKINV_1193
    );
  cntSCL_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      O => cntSCL_4_LOGIC_ZERO_1257
    );
  cntSCL_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_4_XORF_1282,
      O => cntSCL_4_DXMUX_1284
    );
  cntSCL_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      I0 => cntSCL_4_CYINIT_1281,
      I1 => cntSCL_4_F,
      O => cntSCL_4_XORF_1282
    );
  cntSCL_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      IA => cntSCL_4_LOGIC_ZERO_1257,
      IB => cntSCL_4_CYINIT_1281,
      SEL => cntSCL_4_CYSELF_1263,
      O => Mcount_cntSCL_cy_4_Q
    );
  cntSCL_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      IA => cntSCL_4_LOGIC_ZERO_1257,
      IB => cntSCL_4_LOGIC_ZERO_1257,
      SEL => cntSCL_4_CYSELF_1263,
      O => cntSCL_4_CYMUXF2_1258
    );
  cntSCL_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntSCL_cy_3_Q,
      O => cntSCL_4_CYINIT_1281
    );
  cntSCL_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_4_F,
      O => cntSCL_4_CYSELF_1263
    );
  cntSCL_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_4_XORG_1265,
      O => cntSCL_4_DYMUX_1267
    );
  cntSCL_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      I0 => Mcount_cntSCL_cy_4_Q,
      I1 => cntSCL_4_G,
      O => cntSCL_4_XORG_1265
    );
  cntSCL_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntSCL_cy_3_Q,
      O => cntSCL_4_FASTCARRY_1260
    );
  cntSCL_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      I0 => cntSCL_4_CYSELG_1248,
      I1 => cntSCL_4_CYSELF_1263,
      O => cntSCL_4_CYAND_1261
    );
  cntSCL_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      IA => cntSCL_4_CYMUXG2_1259,
      IB => cntSCL_4_FASTCARRY_1260,
      SEL => cntSCL_4_CYAND_1261,
      O => cntSCL_4_CYMUXFAST_1262
    );
  cntSCL_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y32"
    )
    port map (
      IA => cntSCL_4_LOGIC_ZERO_1257,
      IB => cntSCL_4_CYMUXF2_1258,
      SEL => cntSCL_4_CYSELG_1248,
      O => cntSCL_4_CYMUXG2_1259
    );
  cntSCL_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_4_G,
      O => cntSCL_4_CYSELG_1248
    );
  cntSCL_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_or0000_0,
      O => cntSCL_4_SRINV_1246
    );
  cntSCL_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntSCL_4_CLKINV_1245
    );
  cntSCL_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y33"
    )
    port map (
      O => cntSCL_6_LOGIC_ZERO_1326
    );
  cntSCL_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_6_XORF_1327,
      O => cntSCL_6_DXMUX_1329
    );
  cntSCL_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y33"
    )
    port map (
      I0 => cntSCL_6_CYINIT_1325,
      I1 => cntSCL_6_F,
      O => cntSCL_6_XORF_1327
    );
  cntSCL_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y33"
    )
    port map (
      IA => cntSCL_6_LOGIC_ZERO_1326,
      IB => cntSCL_6_CYINIT_1325,
      SEL => cntSCL_6_CYSELF_1316,
      O => Mcount_cntSCL_cy_6_Q
    );
  cntSCL_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_4_CYMUXFAST_1262,
      O => cntSCL_6_CYINIT_1325
    );
  cntSCL_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_6_F,
      O => cntSCL_6_CYSELF_1316
    );
  cntSCL_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_6_XORG_1308,
      O => cntSCL_6_DYMUX_1310
    );
  cntSCL_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y33"
    )
    port map (
      I0 => Mcount_cntSCL_cy_6_Q,
      I1 => cntSCL_7_rt_1305,
      O => cntSCL_6_XORG_1308
    );
  cntSCL_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_or0000_0,
      O => cntSCL_6_SRINV_1297
    );
  cntSCL_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntSCL_6_CLKINV_1296
    );
  cntSCL_7 : X_SFF
    generic map(
      LOC => "SLICE_X65Y33",
      INIT => '0'
    )
    port map (
      I => cntSCL_6_DYMUX_1310,
      CE => VCC,
      CLK => cntSCL_6_CLKINV_1296,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_6_SRINV_1297,
      O => cntSCL(7)
    );
  cntSCL_7_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cntSCL(7),
      O => cntSCL_7_rt_1305
    );
  Address_0_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(0),
      O => Address_0_INBUF
    );
  Address_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_0_INBUF,
      O => Address_0_IBUF_978
    );
  Address_1_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(1),
      O => Address_1_INBUF
    );
  Address_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_1_INBUF,
      O => Address_1_IBUF_979
    );
  FIFO_Empty_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => FIFO_Empty_O,
      O => FIFO_Empty
    );
  FIFO_DI_0_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(0),
      O => FIFO_DI_0_INBUF
    );
  FIFO_DI_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_0_INBUF,
      O => FIFO_DI_0_IBUF_981
    );
  Address_2_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(2),
      O => Address_2_INBUF
    );
  Address_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_2_INBUF,
      O => Address_2_IBUF_982
    );
  FIFO_DI_1_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(1),
      O => FIFO_DI_1_INBUF
    );
  FIFO_DI_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_1_INBUF,
      O => FIFO_DI_1_IBUF_983
    );
  Address_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(3),
      O => Address_3_INBUF
    );
  Address_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_3_INBUF,
      O => Address_3_IBUF_984
    );
  IOB1_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => SDA_O,
      CTL => SDA_T,
      O => SDA
    );
  IOB1_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDA,
      O => SDA_INBUF
    );
  SDA_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDA_INBUF,
      O => SDAin
    );
  FIFO_DI_2_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(2),
      O => FIFO_DI_2_INBUF
    );
  FIFO_DI_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_2_INBUF,
      O => FIFO_DI_2_IBUF_987
    );
  Address_4_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(4),
      O => Address_4_INBUF
    );
  Address_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_4_INBUF,
      O => Address_4_IBUF_988
    );
  FIFO_DI_3_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(3),
      O => FIFO_DI_3_INBUF
    );
  FIFO_DI_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_3_INBUF,
      O => FIFO_DI_3_IBUF_989
    );
  Address_5_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(5),
      O => Address_5_INBUF
    );
  Address_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_5_INBUF,
      O => Address_5_IBUF_990
    );
  FIFO_DI_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(4),
      O => FIFO_DI_4_INBUF
    );
  FIFO_DI_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_4_INBUF,
      O => FIFO_DI_4_IBUF_991
    );
  Address_6_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(6),
      O => Address_6_INBUF
    );
  Address_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_6_INBUF,
      O => Address_6_IBUF_992
    );
  Busy_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => Busy_O,
      O => Busy
    );
  FIFO_DI_5_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(5),
      O => FIFO_DI_5_INBUF
    );
  FIFO_DI_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_5_INBUF,
      O => FIFO_DI_5_IBUF_994
    );
  Address_7_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address(7),
      O => Address_7_INBUF
    );
  Address_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_7_INBUF,
      O => Address_7_IBUF_995
    );
  IOB2_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => SCL_O,
      CTL => SCL_T,
      O => SCL
    );
  FIFO_DI_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(6),
      O => FIFO_DI_6_INBUF
    );
  FIFO_DI_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_6_INBUF,
      O => FIFO_DI_6_IBUF_997
    );
  FIFO_DI_7_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI(7),
      O => FIFO_DI_7_INBUF
    );
  FIFO_DI_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DI_7_INBUF,
      O => FIFO_DI_7_IBUF_998
    );
  Go_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 638 ps
    )
    port map (
      I => Go,
      O => Go_INBUF
    );
  Go_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 638 ps
    )
    port map (
      I => Go_INBUF,
      O => Go_IBUF_999
    );
  FIFO_Push_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Push,
      O => FIFO_Push_INBUF
    );
  FIFO_Push_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Push_INBUF,
      O => FIFO_Push_IBUF_1000
    );
  FIFO_Pop_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Pop,
      O => FIFO_Pop_INBUF
    );
  FIFO_Pop_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Pop_INBUF,
      O => FIFO_Pop_IBUF_1001
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset,
      O => Reset_INBUF
    );
  Reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_INBUF,
      O => Reset_IBUF_1002
    );
  FIFO_DO_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => FIFO_DO_0_O,
      O => FIFO_DO(0)
    );
  FIFO_DO_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => FIFO_DO_1_O,
      O => FIFO_DO(1)
    );
  ReadCnt_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt(0),
      O => ReadCnt_0_INBUF
    );
  ReadCnt_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt_0_INBUF,
      O => ReadCnt_0_IBUF_1005
    );
  FIFO_Full_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => FIFO_Full_O,
      O => FIFO_Full
    );
  FIFO_DO_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => FIFO_DO_2_O,
      O => FIFO_DO(2)
    );
  ReadCnt_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt(1),
      O => ReadCnt_1_INBUF
    );
  ReadCnt_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt_1_INBUF,
      O => ReadCnt_1_IBUF_1008
    );
  FIFO_DO_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => FIFO_DO_3_O,
      O => FIFO_DO(3)
    );
  ReadCnt_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt(2),
      O => ReadCnt_2_INBUF
    );
  ReadCnt_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt_2_INBUF,
      O => ReadCnt_2_IBUF_1010
    );
  FIFO_DO_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => FIFO_DO_4_O,
      O => FIFO_DO(4)
    );
  ReadCnt_3_IBUF : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt(3),
      O => ReadCnt_3_INBUF
    );
  ReadCnt_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 638 ps
    )
    port map (
      I => ReadCnt_3_INBUF,
      O => ReadCnt_3_IBUF_1012
    );
  NACK_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => NACK_O,
      O => NACK
    );
  FIFO_DO_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => FIFO_DO_5_O,
      O => FIFO_DO(5)
    );
  FIFO_DO_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => FIFO_DO_6_O,
      O => FIFO_DO(6)
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk,
      O => Clk_INBUF
    );
  FIFO_DO_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => FIFO_DO_7_O,
      O => FIFO_DO(7)
    );
  Clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => Clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => Clk_BUFGP_BUFG_S_INVNOT,
      O => Clk_BUFGP
    );
  Clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Clk_BUFGP_BUFG_S_INVNOT
    );
  Clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_INBUF,
      O => Clk_BUFGP_BUFG_I0_INV
    );
  sregOut_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_2_F5MUX_1649,
      O => sregOut_2_DXMUX_1651
    );
  sregOut_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y35"
    )
    port map (
      IA => sregOut_mux0000_2_2_216,
      IB => sregOut_mux0000_2_1_215,
      SEL => sregOut_2_BXINV_1642,
      O => sregOut_2_F5MUX_1649
    );
  sregOut_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_2_BXINV_1642
    );
  sregOut_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_2_CLKINV_1635
    );
  sregOut_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_2_CEINV_1634
    );
  sregOut_mux0000_2_2 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X67Y35"
    )
    port map (
      ADR0 => Address_2_IBUF_982,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => FIFO_DO_2_OBUF_0,
      O => sregOut_mux0000_2_2_216
    );
  sregOut_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_3_F5MUX_1683,
      O => sregOut_3_DXMUX_1685
    );
  sregOut_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y43"
    )
    port map (
      IA => sregOut_mux0000_3_2_219,
      IB => sregOut_mux0000_3_1_218,
      SEL => sregOut_3_BXINV_1676,
      O => sregOut_3_F5MUX_1683
    );
  sregOut_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_3_BXINV_1676
    );
  sregOut_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_3_CLKINV_1669
    );
  sregOut_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_3_CEINV_1668
    );
  cntSCL_3 : X_SFF
    generic map(
      LOC => "SLICE_X65Y31",
      INIT => '0'
    )
    port map (
      I => cntSCL_2_DYMUX_1215,
      CE => VCC,
      CLK => cntSCL_2_CLKINV_1193,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_2_SRINV_1194,
      O => cntSCL(3)
    );
  sregOut_mux0000_3_2 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => Address_3_IBUF_984,
      ADR2 => Go_IBUF_999,
      ADR3 => FIFO_DO_3_OBUF_0,
      O => sregOut_mux0000_3_2_219
    );
  N84_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => N84_F5MUX_1713,
      O => N84
    );
  N84_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y24"
    )
    port map (
      IA => N84_G,
      IB => N90,
      SEL => N84_BXINV_1706,
      O => N84_F5MUX_1713
    );
  N84_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_and000058_183_0,
      O => N84_BXINV_1706
    );
  N85_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N85_F5MUX_1738,
      O => N85
    );
  N85_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y27"
    )
    port map (
      IA => N85_G,
      IB => N92,
      SEL => N85_BXINV_1731,
      O => N85_F5MUX_1738
    );
  N85_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_and000058_183_0,
      O => N85_BXINV_1731
    );
  sregOut_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_4_F5MUX_1767,
      O => sregOut_4_DXMUX_1769
    );
  sregOut_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y38"
    )
    port map (
      IA => sregOut_mux0000_4_2_222,
      IB => sregOut_mux0000_4_1_221,
      SEL => sregOut_4_BXINV_1760,
      O => sregOut_4_F5MUX_1767
    );
  sregOut_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_4_BXINV_1760
    );
  sregOut_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_4_CLKINV_1753
    );
  sregOut_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_4_CEINV_1752
    );
  sregOut_mux0000_4_2 : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => Go_IBUF_999,
      ADR2 => FIFO_DO_4_OBUF_0,
      ADR3 => Address_4_IBUF_988,
      O => sregOut_mux0000_4_2_222
    );
  sregOut_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_5_F5MUX_1801,
      O => sregOut_5_DXMUX_1803
    );
  sregOut_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y35"
    )
    port map (
      IA => sregOut_mux0000_5_2_225,
      IB => sregOut_mux0000_5_1_224,
      SEL => sregOut_5_BXINV_1794,
      O => sregOut_5_F5MUX_1801
    );
  sregOut_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_5_BXINV_1794
    );
  sregOut_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_5_CLKINV_1787
    );
  sregOut_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_5_CEINV_1786
    );
  sregOut_mux0000_5_2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => FIFO_DO_5_OBUF_0,
      ADR1 => Go_IBUF_999,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => Address_5_IBUF_990,
      O => sregOut_mux0000_5_2_225
    );
  sregOut_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_6_F5MUX_1835,
      O => sregOut_6_DXMUX_1837
    );
  sregOut_6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y37"
    )
    port map (
      IA => sregOut_mux0000_6_2_228,
      IB => sregOut_mux0000_6_1_227,
      SEL => sregOut_6_BXINV_1828,
      O => sregOut_6_F5MUX_1835
    );
  sregOut_6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_6_BXINV_1828
    );
  sregOut_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_6_CLKINV_1821
    );
  sregOut_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_6_CEINV_1820
    );
  sregOut_mux0000_6_2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X67Y37"
    )
    port map (
      ADR0 => FIFO_DO_6_OBUF_0,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => Address_6_IBUF_992,
      O => sregOut_mux0000_6_2_228
    );
  sregOut_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_7_F5MUX_1869,
      O => sregOut_7_DXMUX_1871
    );
  sregOut_7_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y36"
    )
    port map (
      IA => sregOut_mux0000_7_2_231,
      IB => sregOut_mux0000_7_1_230,
      SEL => sregOut_7_BXINV_1862,
      O => sregOut_7_F5MUX_1869
    );
  sregOut_7_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_7_BXINV_1862
    );
  sregOut_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_7_CLKINV_1855
    );
  sregOut_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_7_CEINV_1854
    );
  sregOut_mux0000_7_2 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X67Y36"
    )
    port map (
      ADR0 => FIFO_DO_7_OBUF_0,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => Address_7_IBUF_995,
      O => sregOut_mux0000_7_2_231
    );
  sregOut_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_1_F5MUX_1903,
      O => sregOut_1_DXMUX_1905
    );
  sregOut_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y34"
    )
    port map (
      IA => sregOut_mux0000_1_2_213,
      IB => sregOut_mux0000_1_1_212,
      SEL => sregOut_1_BXINV_1896,
      O => sregOut_1_F5MUX_1903
    );
  sregOut_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01,
      O => sregOut_1_BXINV_1896
    );
  sregOut_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_1_CLKINV_1889
    );
  sregOut_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_1_CEINV_1888
    );
  sregOut_mux0000_1_2 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => Address_1_IBUF_979,
      ADR1 => FIFO_DO_1_OBUF_0,
      ADR2 => Go_IBUF_999,
      ADR3 => state_FSM_FFd5_243,
      O => sregOut_mux0000_1_2_213
    );
  SDAout_125_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003204,
      O => SDAout_125_DXMUX_1938
    );
  SDAout_125_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux000358_O_pack_2,
      O => SDAout_mux000358_O
    );
  SDAout_125_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux00038_139,
      O => SDAout_125_SRINV_1923
    );
  SDAout_125_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => SDAout_125_CLKINV_1922
    );
  SDAout_mux000358 : X_LUT4
    generic map(
      INIT => X"0040",
      LOC => "SLICE_X64Y27"
    )
    port map (
      ADR0 => state_FSM_FFd2_235,
      ADR1 => SDAout_mux0003425_136,
      ADR2 => SDAout_mux0003412_135,
      ADR3 => state_FSM_FFd4_241,
      O => SDAout_mux000358_O_pack_2
    );
  i_FIFO_DoPop_161_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPop_161,
      O => i_FIFO_DoPop_161_0
    );
  i_FIFO_DoPop_161_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N65_pack_1,
      O => N65
    );
  i_FIFO_DoPop_SW1 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X66Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FIFO_Pop_IBUF_1001,
      ADR2 => FIFO_Empty_OBUF_980,
      ADR3 => VCC,
      O => N65_pack_1
    );
  N61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => N61,
      O => N61_0
    );
  N61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003412_135_pack_1,
      O => SDAout_mux0003412_135
    );
  SDAout_mux0003412 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X65Y34"
    )
    port map (
      ADR0 => cntSCL(2),
      ADR1 => cntSCL(5),
      ADR2 => cntSCL(4),
      ADR3 => cntSCL(6),
      O => SDAout_mux0003412_135_pack_1
    );
  SDAout_mux0003112_127_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003112_127,
      O => SDAout_mux0003112_127_0
    );
  SDAout_mux0003112_127_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003107_O_pack_1,
      O => SDAout_mux0003107_O
    );
  SDAout_mux0003107 : X_LUT4
    generic map(
      INIT => X"5F5F",
      LOC => "SLICE_X64Y28"
    )
    port map (
      ADR0 => cntSCL(1),
      ADR1 => VCC,
      ADR2 => cntSCL(4),
      ADR3 => VCC,
      O => SDAout_mux0003107_O_pack_1
    );
  i_FIFO_iFull_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => N64_pack_1,
      O => N64
    );
  i_FIFO_DoPop_SW0 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => N15,
      ADR1 => N75_0,
      ADR2 => N71_0,
      ADR3 => N01,
      O => N64_pack_1
    );
  i_FIFO_DoPush13_164_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush13_164,
      O => i_FIFO_DoPush13_164_0
    );
  i_FIFO_DoPush13_164_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush13_SW0_O_pack_1,
      O => i_FIFO_DoPush13_SW0_O
    );
  i_FIFO_DoPush13_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X66Y28"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => state_FSM_FFd1_233,
      ADR2 => cntBits(0),
      ADR3 => RdNotWr_96,
      O => i_FIFO_DoPush13_SW0_O_pack_1
    );
  SDAout_mux0003180_131_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003180_131,
      O => SDAout_mux0003180_131_0
    );
  SDAout_mux0003180_131_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003157_O_pack_1,
      O => SDAout_mux0003157_O
    );
  SDAout_mux0003157 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X64Y29"
    )
    port map (
      ADR0 => cntSCL(5),
      ADR1 => SDAout_mux0003139_128_0,
      ADR2 => N82_0,
      ADR3 => cntSCL(3),
      O => SDAout_mux0003157_O_pack_1
    );
  SDAout_mux0003431_137_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003431_137,
      O => SDAout_mux0003431_137_0
    );
  SDAout_mux0003431_137_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux000337_O_pack_1,
      O => SDAout_mux000337_O
    );
  SDAout_mux000337 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => sregOut(7),
      ADR1 => VCC,
      ADR2 => N01,
      ADR3 => VCC,
      O => SDAout_mux000337_O_pack_1
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003425_136_pack_1,
      O => SDAout_mux0003425_136
    );
  SDAout_mux0003425 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X64Y35"
    )
    port map (
      ADR0 => cntSCL(3),
      ADR1 => cntSCL(7),
      ADR2 => cntSCL(1),
      ADR3 => cntSCL(0),
      O => SDAout_mux0003425_136_pack_1
    );
  N59_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => N59,
      O => N59_0
    );
  N59_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => N12_pack_1,
      O => N12
    );
  Mcount_cntBytes_xor_3_111 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => cntBytes(3),
      ADR1 => cntBytes(1),
      ADR2 => cntBytes(2),
      ADR3 => cntBytes(0),
      O => N12_pack_1
    );
  SDAout_mux00038_139_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => N111_pack_1,
      O => N111
    );
  SDAout_mux000332 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X64Y33"
    )
    port map (
      ADR0 => cntSCL(6),
      ADR1 => cntSCL(1),
      ADR2 => VCC,
      ADR3 => N15,
      O => N111_pack_1
    );
  SDAout_mux000393_141_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux000393_141,
      O => SDAout_mux000393_141_0
    );
  SDAout_mux000393_141_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux000388_O_pack_1,
      O => SDAout_mux000388_O
    );
  SDAout_mux000388 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => cntSCL(5),
      ADR1 => state_FSM_FFd2_235,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SDAout_mux000388_O_pack_1
    );
  state_FSM_FFd3_239_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd3_In_240,
      O => state_FSM_FFd3_239_DXMUX_2235
    );
  state_FSM_FFd3_239_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd3_In_SW0_O_pack_2,
      O => state_FSM_FFd3_In_SW0_O
    );
  state_FSM_FFd3_239_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => state_FSM_FFd3_239_SRINV_2219
    );
  state_FSM_FFd3_239_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => state_FSM_FFd3_239_CLKINV_2218
    );
  state_FSM_FFd3_In_SW0 : X_LUT4
    generic map(
      INIT => X"F1F1",
      LOC => "SLICE_X65Y36"
    )
    port map (
      ADR0 => FIFO_Empty_OBUF_980,
      ADR1 => RdNotWr_96,
      ADR2 => N01,
      ADR3 => VCC,
      O => state_FSM_FFd3_In_SW0_O_pack_2
    );
  sclEnd_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => sclEnd,
      O => sclEnd_0
    );
  sclEnd_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => N15_pack_1,
      O => N15
    );
  NACK_and000011 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X64Y30"
    )
    port map (
      ADR0 => cntSCL(3),
      ADR1 => cntSCL(4),
      ADR2 => cntSCL(7),
      ADR3 => cntSCL(2),
      O => N15_pack_1
    );
  i_FIFO_iEmpty_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_and0000102_SW0_O_pack_1,
      O => i_FIFO_iEmpty_and0000102_SW0_O
    );
  i_FIFO_iEmpty_and0000102_SW0 : X_LUT4
    generic map(
      INIT => X"4812",
      LOC => "SLICE_X67Y25"
    )
    port map (
      ADR0 => i_FIFO_addrRd(0),
      ADR1 => i_FIFO_addrWr(3),
      ADR2 => i_FIFO_addrWr(0),
      ADR3 => i_FIFO_Result_3_0,
      O => i_FIFO_iEmpty_and0000102_SW0_O_pack_1
    );
  N79_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => N79,
      O => N79_0
    );
  N79_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush0_163_pack_1,
      O => i_FIFO_DoPush0_163
    );
  i_FIFO_DoPush0 : X_LUT4
    generic map(
      INIT => X"AA22",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => FIFO_Push_IBUF_1000,
      ADR1 => RdNotWr_96,
      ADR2 => VCC,
      ADR3 => state_FSM_FFd5_243,
      O => i_FIFO_DoPush0_163_pack_1
    );
  sregOut_not0001_232_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232,
      O => sregOut_not0001_232_0
    );
  sregOut_not0001_232_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_SW1_O_pack_1,
      O => sregOut_not0001_SW1_O
    );
  sregOut_not0001_SW1 : X_LUT4
    generic map(
      INIT => X"C044",
      LOC => "SLICE_X66Y34"
    )
    port map (
      ADR0 => FIFO_Empty_OBUF_980,
      ADR1 => state_FSM_FFd3_239,
      ADR2 => N14_0,
      ADR3 => N01,
      O => sregOut_not0001_SW1_O_pack_1
    );
  i_FIFO_addrWr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr_3_FXMUX_2372,
      O => i_FIFO_addrWr_3_DXMUX_2373
    );
  i_FIFO_addrWr_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr_3_FXMUX_2372,
      O => i_FIFO_Result_3_1_0
    );
  i_FIFO_addrWr_3_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_Result_3_1,
      O => i_FIFO_addrWr_3_FXMUX_2372
    );
  i_FIFO_addrWr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_Result_2_1_170,
      O => i_FIFO_addrWr_3_DYMUX_2360
    );
  i_FIFO_addrWr_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => i_FIFO_addrWr_3_SRINV_2351
    );
  i_FIFO_addrWr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => i_FIFO_addrWr_3_CLKINV_2350
    );
  i_FIFO_addrWr_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => i_FIFO_addrWr_3_CEINV_2349
    );
  i_FIFO_Result_2_11 : X_LUT4
    generic map(
      INIT => X"7788",
      LOC => "SLICE_X64Y25"
    )
    port map (
      ADR0 => i_FIFO_addrWr(1),
      ADR1 => i_FIFO_addrWr(0),
      ADR2 => VCC,
      ADR3 => i_FIFO_addrWr(2),
      O => i_FIFO_Result_2_1_170
    );
  i_FIFO_addrRd_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd_3_FXMUX_2415,
      O => i_FIFO_addrRd_3_DXMUX_2416
    );
  i_FIFO_addrRd_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd_3_FXMUX_2415,
      O => i_FIFO_Result_3_0
    );
  i_FIFO_addrRd_3_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_Result(3),
      O => i_FIFO_addrRd_3_FXMUX_2415
    );
  i_FIFO_addrRd_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_Result(2),
      O => i_FIFO_addrRd_3_DYMUX_2403
    );
  i_FIFO_addrRd_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => i_FIFO_addrRd_3_SRINV_2394
    );
  i_FIFO_addrRd_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => i_FIFO_addrRd_3_CLKINV_2393
    );
  i_FIFO_addrRd_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPop_161_0,
      O => i_FIFO_addrRd_3_CEINV_2392
    );
  i_FIFO_Result_2_1 : X_LUT4
    generic map(
      INIT => X"6A6A",
      LOC => "SLICE_X64Y24"
    )
    port map (
      ADR0 => i_FIFO_addrRd(2),
      ADR1 => i_FIFO_addrRd(0),
      ADR2 => i_FIFO_addrRd(1),
      ADR3 => VCC,
      O => i_FIFO_Result(2)
    );
  cntBytes_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => N69,
      O => N69_0
    );
  cntBytes_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntBytes,
      O => cntBytes_0_DYMUX_2441
    );
  cntBytes_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntBytes_0_CLKINV_2433
    );
  cntBytes_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBytes_not0001_151_0,
      O => cntBytes_0_CEINV_2432
    );
  Mcount_cntBytes_xor_0_11 : X_LUT4
    generic map(
      INIT => X"D515",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => cntBytes(0),
      ADR1 => Go_IBUF_999,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => ReadCnt_0_IBUF_1005,
      O => Mcount_cntBytes
    );
  state_FSM_FFd1_233_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBits_or0000,
      O => cntBits_or0000_0
    );
  state_FSM_FFd1_233_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd1_In_234,
      O => state_FSM_FFd1_233_DYMUX_2475
    );
  state_FSM_FFd1_233_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => state_FSM_FFd1_233_SRINV_2467
    );
  state_FSM_FFd1_233_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => state_FSM_FFd1_233_CLKINV_2466
    );
  state_FSM_FFd1_In : X_LUT4
    generic map(
      INIT => X"B8AA",
      LOC => "SLICE_X65Y29"
    )
    port map (
      ADR0 => state_FSM_FFd1_233,
      ADR1 => N01,
      ADR2 => N59_0,
      ADR3 => sclEnd_0,
      O => state_FSM_FFd1_In_234
    );
  state_FSM_FFd2_235_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_In26_238,
      O => state_FSM_FFd2_235_DYMUX_2511
    );
  state_FSM_FFd2_235_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => state_FSM_FFd2_235_SRINV_2503
    );
  state_FSM_FFd2_235_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => state_FSM_FFd2_235_CLKINV_2502
    );
  state_FSM_FFd2_235_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => sclEnd_0,
      O => state_FSM_FFd2_235_CEINV_2501
    );
  state_FSM_FFd4_241_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntSCL_or0000,
      O => cntSCL_or0000_0
    );
  state_FSM_FFd4_241_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd4_In,
      O => state_FSM_FFd4_241_DYMUX_2543
    );
  state_FSM_FFd4_241_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => state_FSM_FFd4_241_SRINV_2535
    );
  state_FSM_FFd4_241_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => state_FSM_FFd4_241_CLKINV_2534
    );
  state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"D5C0",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => sclEnd_0,
      ADR1 => Go_IBUF_999,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => state_FSM_FFd4_241,
      O => state_FSM_FFd4_In
    );
  state_FSM_FFd5_243_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd6_245,
      O => state_FSM_FFd5_243_REVUSED_2581
    );
  state_FSM_FFd5_243_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd5_In1_244,
      O => state_FSM_FFd5_243_DYMUX_2580
    );
  state_FSM_FFd5_243_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => state_FSM_FFd5_243_SRINV_2571
    );
  state_FSM_FFd5_243_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => state_FSM_FFd5_243_CLKINV_2570
    );
  sregOut_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBytes_not0001_151,
      O => cntBytes_not0001_151_0
    );
  sregOut_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_mux0000(0),
      O => sregOut_0_DYMUX_2615
    );
  sregOut_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregOut_0_CLKINV_2607
    );
  sregOut_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregOut_not0001_232_0,
      O => sregOut_0_CEINV_2606
    );
  cntSCL_0 : X_SFF
    generic map(
      LOC => "SLICE_X65Y30",
      INIT => '0'
    )
    port map (
      I => cntSCL_0_DXMUX_1180,
      CE => VCC,
      CLK => cntSCL_0_CLKINV_1143,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_0_SRINV_1144,
      O => cntSCL(0)
    );
  sregOut_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"DDD8",
      LOC => "SLICE_X67Y42"
    )
    port map (
      ADR0 => RdNotWr_and0000,
      ADR1 => Address_0_IBUF_978,
      ADR2 => N01,
      ADR3 => FIFO_DO_0_OBUF_0,
      O => sregOut_mux0000(0)
    );
  cntBits_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Result(3),
      O => cntBits_3_DXMUX_2663
    );
  cntBits_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Result(2),
      O => cntBits_3_DYMUX_2650
    );
  cntBits_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBits_or0000_0,
      O => cntBits_3_SRINV_2641
    );
  cntBits_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntBits_3_CLKINV_2640
    );
  cntBits_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => sclEnd_0,
      O => cntBits_3_CEINV_2639
    );
  Mcount_cntBits_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3FC0",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cntBits(0),
      ADR2 => cntBits(1),
      ADR3 => cntBits(2),
      O => Result(2)
    );
  i_FIFO_iFull_and000076_190_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iFull_and000076_190,
      O => i_FIFO_iFull_and000076_190_0
    );
  i_FIFO_iFull_and000076_190_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iFull_and000071_189_pack_1,
      O => i_FIFO_iFull_and000071_189
    );
  i_FIFO_iFull_and000071 : X_LUT4
    generic map(
      INIT => X"1824",
      LOC => "SLICE_X65Y28"
    )
    port map (
      ADR0 => i_FIFO_addrWr(1),
      ADR1 => i_FIFO_addrRd(0),
      ADR2 => i_FIFO_addrWr(0),
      ADR3 => i_FIFO_addrRd(1),
      O => i_FIFO_iFull_and000071_189_pack_1
    );
  i_FIFO_iEmpty_and000058_183_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_and000058_183,
      O => i_FIFO_iEmpty_and000058_183_0
    );
  i_FIFO_iEmpty_and000058_183_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iFull_and000048_188,
      O => i_FIFO_iFull_and000048_188_0
    );
  i_FIFO_iFull_and000048 : X_LUT4
    generic map(
      INIT => X"6C93",
      LOC => "SLICE_X65Y26"
    )
    port map (
      ADR0 => i_FIFO_addrWr(0),
      ADR1 => i_FIFO_addrRd(2),
      ADR2 => i_FIFO_addrWr(1),
      ADR3 => i_FIFO_addrWr(2),
      O => i_FIFO_iFull_and000048_188
    );
  DI_3_1 : X_LUT4
    generic map(
      INIT => X"AEA2",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => FIFO_DI_3_IBUF_989,
      ADR1 => RdNotWr_96,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => sregIn(3),
      O => DI(3)
    );
  state_FSM_FFd2_In2_237_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_In2_237,
      O => state_FSM_FFd2_In2_237_0
    );
  state_FSM_FFd2_In2_237_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N82,
      O => N82_0
    );
  SDAout_mux0003157_SW0 : X_LUT4
    generic map(
      INIT => X"F0F1",
      LOC => "SLICE_X65Y27"
    )
    port map (
      ADR0 => state_FSM_FFd3_239,
      ADR1 => state_FSM_FFd1_233,
      ADR2 => cntSCL(2),
      ADR3 => state_FSM_FFd2_235,
      O => N82
    );
  i_FIFO_addrWr_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => i_FIFO_addrWr_0_DXMUX_2804
    );
  i_FIFO_addrWr_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_and000067_184,
      O => i_FIFO_iEmpty_and000067_184_0
    );
  i_FIFO_addrWr_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_Result_1_1_168,
      O => i_FIFO_addrWr_0_DYMUX_2789
    );
  i_FIFO_addrWr_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => i_FIFO_addrWr_0_SRINV_2779
    );
  i_FIFO_addrWr_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => i_FIFO_addrWr_0_CLKINV_2778
    );
  i_FIFO_addrWr_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => i_FIFO_addrWr_0_CEINV_2777
    );
  i_FIFO_Result_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X65Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => i_FIFO_addrWr(0),
      ADR3 => i_FIFO_addrWr(1),
      O => i_FIFO_Result_1_1_168
    );
  cntBytes_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntBytes3,
      O => cntBytes_3_DXMUX_2838
    );
  cntBytes_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => N109_pack_2,
      O => N109
    );
  cntBytes_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntBytes_3_CLKINV_2823
    );
  cntBytes_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBytes_not0001_151_0,
      O => cntBytes_3_CEINV_2822
    );
  Mcount_cntBytes_xor_3_1_SW1 : X_LUT4
    generic map(
      INIT => X"CCC9",
      LOC => "SLICE_X66Y42"
    )
    port map (
      ADR0 => cntBytes(2),
      ADR1 => cntBytes(3),
      ADR2 => cntBytes(1),
      ADR3 => cntBytes(0),
      O => N109_pack_2
    );
  FIFO_Full_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Full_OBUF_BYINV_2851,
      O => FIFO_Full_OBUF_DYMUX_2852
    );
  FIFO_Full_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => FIFO_Full_OBUF_BYINV_2851
    );
  FIFO_Full_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iFull_or0000,
      O => FIFO_Full_OBUF_SRINV_2850
    );
  FIFO_Full_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_Full_OBUF_CLKINV_2849
    );
  FIFO_Full_OBUF_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iFull_and0000,
      O => FIFO_Full_OBUF_CEINV_2848
    );
  DI_4_1 : X_LUT4
    generic map(
      INIT => X"EF20",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => sregIn(4),
      ADR1 => state_FSM_FFd5_243,
      ADR2 => RdNotWr_96,
      ADR3 => FIFO_DI_4_IBUF_991,
      O => DI(4)
    );
  i_FIFO_addrRd_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => i_FIFO_addrRd_0_DXMUX_2909
    );
  i_FIFO_addrRd_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_Result(1),
      O => i_FIFO_addrRd_0_DYMUX_2902
    );
  i_FIFO_addrRd_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => i_FIFO_addrRd_0_SRINV_2892
    );
  i_FIFO_addrRd_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => i_FIFO_addrRd_0_CLKINV_2891
    );
  i_FIFO_addrRd_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPop_161_0,
      O => i_FIFO_addrRd_0_CEINV_2890
    );
  DI_5_1 : X_LUT4
    generic map(
      INIT => X"BA8A",
      LOC => "SLICE_X67Y23"
    )
    port map (
      ADR0 => FIFO_DI_5_IBUF_994,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => RdNotWr_96,
      ADR3 => sregIn(5),
      O => DI(5)
    );
  state_FSM_FFd2_In12_236_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd2_In12_236,
      O => state_FSM_FFd2_In12_236_0
    );
  DI_7_1 : X_LUT4
    generic map(
      INIT => X"AEA2",
      LOC => "SLICE_X66Y23"
    )
    port map (
      ADR0 => FIFO_DI_7_IBUF_998,
      ADR1 => RdNotWr_96,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => sregIn(7),
      O => DI(7)
    );
  state_FSM_FFd6_245_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd6_245_BYINV_2969,
      O => state_FSM_FFd6_245_DYMUX_2970
    );
  state_FSM_FFd6_245_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => state_FSM_FFd6_245_BYINV_2969
    );
  state_FSM_FFd6_245_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Reset_IBUF_1002,
      O => state_FSM_FFd6_245_SRINV_2968
    );
  state_FSM_FFd6_245_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => state_FSM_FFd6_245_CLKINV_2967
    );
  RdNotWr_96_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Address_0_IBUF_978,
      O => RdNotWr_96_DYMUX_2982
    );
  RdNotWr_96_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => RdNotWr_96_CLKINV_2980
    );
  RdNotWr_96_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => RdNotWr_and0000,
      O => RdNotWr_96_CEINV_2979
    );
  FIFO_DO_0_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_0_OBUF_3032,
      O => FIFO_DO_0_OBUF_0
    );
  FIFO_DO_0_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_0_OBUF_DIG_MUX_3007,
      O => FIFO_DO_0_OBUF_DIF_MUX_3020
    );
  FIFO_DO_0_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(0),
      O => FIFO_DO_0_OBUF_DIG_MUX_3007
    );
  FIFO_DO_0_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_0_OBUF_SRINV_2999
    );
  FIFO_DO_0_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_0_OBUF_CLKINV_3005
    );
  N71_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => N71,
      O => N71_0
    );
  N71_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => N87,
      O => N87_0
    );
  NACK_and000020_SW0 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X64Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cntSCL(0),
      ADR2 => VCC,
      ADR3 => cntSCL(5),
      O => N87
    );
  SCLout_116_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_mux000072,
      O => SCLout_116_DXMUX_3087
    );
  SCLout_116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_mux000021_118_pack_2,
      O => SCLout_mux000021_118
    );
  SCLout_116_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_mux000063_120,
      O => SCLout_116_SRINV_3071
    );
  SCLout_116_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => SCLout_116_CLKINV_3070
    );
  SCLout_mux000021 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => cntSCL(6),
      ADR1 => cntSCL(1),
      ADR2 => cntSCL(5),
      ADR3 => SCLout_mux000017_117_0,
      O => SCLout_mux000021_118_pack_2
    );
  FIFO_DO_1_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_1_OBUF_3137,
      O => FIFO_DO_1_OBUF_0
    );
  FIFO_DO_1_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_1_OBUF_DIG_MUX_3112,
      O => FIFO_DO_1_OBUF_DIF_MUX_3125
    );
  FIFO_DO_1_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(1),
      O => FIFO_DO_1_OBUF_DIG_MUX_3112
    );
  FIFO_DO_1_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_1_OBUF_SRINV_3104
    );
  FIFO_DO_1_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_1_OBUF_CLKINV_3110
    );
  FIFO_DO_2_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_2_OBUF_3185,
      O => FIFO_DO_2_OBUF_0
    );
  FIFO_DO_2_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_2_OBUF_DIG_MUX_3160,
      O => FIFO_DO_2_OBUF_DIF_MUX_3173
    );
  FIFO_DO_2_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(2),
      O => FIFO_DO_2_OBUF_DIG_MUX_3160
    );
  FIFO_DO_2_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_2_OBUF_SRINV_3152
    );
  FIFO_DO_2_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_2_OBUF_CLKINV_3158
    );
  FIFO_DO_3_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_3_OBUF_3233,
      O => FIFO_DO_3_OBUF_0
    );
  FIFO_DO_3_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_3_OBUF_DIG_MUX_3208,
      O => FIFO_DO_3_OBUF_DIF_MUX_3221
    );
  FIFO_DO_3_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(3),
      O => FIFO_DO_3_OBUF_DIG_MUX_3208
    );
  FIFO_DO_3_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_3_OBUF_SRINV_3200
    );
  FIFO_DO_3_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_3_OBUF_CLKINV_3206
    );
  Mcount_cntSCL_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X65Y30"
    )
    port map (
      ADR0 => cntSCL(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_cntSCL_lut
    );
  FIFO_DO_4_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_4_OBUF_3281,
      O => FIFO_DO_4_OBUF_0
    );
  FIFO_DO_4_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_4_OBUF_DIG_MUX_3256,
      O => FIFO_DO_4_OBUF_DIF_MUX_3269
    );
  FIFO_DO_4_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(4),
      O => FIFO_DO_4_OBUF_DIG_MUX_3256
    );
  FIFO_DO_4_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_4_OBUF_SRINV_3248
    );
  FIFO_DO_4_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_4_OBUF_CLKINV_3254
    );
  SDAout_mux0003139_128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux0003139_128,
      O => SDAout_mux0003139_128_0
    );
  SDAout_mux0003139_128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_mux000017_117,
      O => SCLout_mux000017_117_0
    );
  SCLout_mux000017 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "SLICE_X65Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cntSCL(3),
      ADR2 => cntSCL(4),
      ADR3 => VCC,
      O => SCLout_mux000017_117
    );
  FIFO_DO_5_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_5_OBUF_3353,
      O => FIFO_DO_5_OBUF_0
    );
  FIFO_DO_5_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_5_OBUF_DIG_MUX_3328,
      O => FIFO_DO_5_OBUF_DIF_MUX_3341
    );
  FIFO_DO_5_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(5),
      O => FIFO_DO_5_OBUF_DIG_MUX_3328
    );
  FIFO_DO_5_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_5_OBUF_SRINV_3320
    );
  FIFO_DO_5_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_5_OBUF_CLKINV_3326
    );
  FIFO_DO_6_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_6_OBUF_3401,
      O => FIFO_DO_6_OBUF_0
    );
  FIFO_DO_6_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_6_OBUF_DIG_MUX_3376,
      O => FIFO_DO_6_OBUF_DIF_MUX_3389
    );
  FIFO_DO_6_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(6),
      O => FIFO_DO_6_OBUF_DIG_MUX_3376
    );
  FIFO_DO_6_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_6_OBUF_SRINV_3368
    );
  FIFO_DO_6_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_6_OBUF_CLKINV_3374
    );
  FIFO_DO_7_OBUF_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_7_OBUF_3449,
      O => FIFO_DO_7_OBUF_0
    );
  FIFO_DO_7_OBUF_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_7_OBUF_DIG_MUX_3424,
      O => FIFO_DO_7_OBUF_DIF_MUX_3437
    );
  FIFO_DO_7_OBUF_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => DI(7),
      O => FIFO_DO_7_OBUF_DIG_MUX_3424
    );
  FIFO_DO_7_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush,
      O => FIFO_DO_7_OBUF_SRINV_3416
    );
  FIFO_DO_7_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_DO_7_OBUF_CLKINV_3422
    );
  cntSCL_1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y30",
      INIT => '0'
    )
    port map (
      I => cntSCL_0_DYMUX_1160,
      CE => VCC,
      CLK => cntSCL_0_CLKINV_1143,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_0_SRINV_1144,
      O => cntSCL(1)
    );
  cntBits_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Result(1),
      O => cntBits_1_DXMUX_3491
    );
  cntBits_1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBits(0),
      O => cntBits_1_DYMUX_3476
    );
  cntBits_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => N55,
      O => N55_0
    );
  cntBits_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBits_or0000_0,
      O => cntBits_1_SRINV_3467
    );
  cntBits_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntBits_1_CLKINV_3466
    );
  cntBits_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => sclEnd_0,
      O => cntBits_1_CEINV_3465
    );
  SCLout_mux000063_120_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_mux000061_119_pack_1,
      O => SCLout_mux000061_119
    );
  SCLout_mux000061 : X_LUT4
    generic map(
      INIT => X"B000",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => state_FSM_FFd2_235,
      ADR1 => state_FSM_FFd4_241,
      ADR2 => cntSCL(1),
      ADR3 => cntSCL(0),
      O => SCLout_mux000061_119_pack_1
    );
  i_FIFO_iFull_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_DoPush_pack_1,
      O => i_FIFO_DoPush
    );
  i_FIFO_DoPush40 : X_LUT4
    generic map(
      INIT => X"3320",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => sclEnd_0,
      ADR1 => FIFO_Full_OBUF_1006,
      ADR2 => i_FIFO_DoPush13_164_0,
      ADR3 => i_FIFO_DoPush0_163,
      O => i_FIFO_DoPush_pack_1
    );
  cntBytes_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntBytes2,
      O => cntBytes_2_DXMUX_3573
    );
  cntBytes_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => N107_pack_2,
      O => N107
    );
  cntBytes_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntBytes_2_CLKINV_3557
    );
  cntBytes_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBytes_not0001_151_0,
      O => cntBytes_2_CEINV_3556
    );
  Mcount_cntBytes_xor_2_1_SW1 : X_LUT4
    generic map(
      INIT => X"AAA5",
      LOC => "SLICE_X66Y43"
    )
    port map (
      ADR0 => cntBytes(2),
      ADR1 => VCC,
      ADR2 => cntBytes(1),
      ADR3 => cntBytes(0),
      O => N107_pack_2
    );
  SDAout_mux000316_130_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux000316_130,
      O => SDAout_mux000316_130_0
    );
  SDAout_mux000316 : X_LUT4
    generic map(
      INIT => X"0505",
      LOC => "SLICE_X67Y40"
    )
    port map (
      ADR0 => cntBytes(0),
      ADR1 => VCC,
      ADR2 => cntBytes(1),
      ADR3 => VCC,
      O => SDAout_mux000316_130
    );
  sregIn_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn_and0000,
      O => sregIn_and0000_0
    );
  sregIn_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_mux00008_122,
      O => SCLout_mux00008_122_0
    );
  SCLout_mux00008 : X_LUT4
    generic map(
      INIT => X"FBFF",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => cntSCL(7),
      ADR1 => cntSCL(0),
      ADR2 => state_FSM_FFd2_235,
      ADR3 => cntSCL(2),
      O => SCLout_mux00008_122
    );
  NACK_and00007_95_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => NACK_and00007_95,
      O => NACK_and00007_95_0
    );
  NACK_and00007_95_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => N75,
      O => N75_0
    );
  sclEnd_cmp_eq00001_SW0 : X_LUT4
    generic map(
      INIT => X"FBFF",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => cntSCL(1),
      ADR1 => state_FSM_FFd3_239,
      ADR2 => FIFO_Empty_OBUF_980,
      ADR3 => cntSCL(6),
      O => N75
    );
  cntBytes_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cntBytes1,
      O => cntBytes_1_DXMUX_3666
    );
  cntBytes_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => RdNotWr_and0000_pack_2,
      O => RdNotWr_and0000
    );
  cntBytes_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => cntBytes_1_CLKINV_3649
    );
  cntBytes_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => cntBytes_not0001_151_0,
      O => cntBytes_1_CEINV_3648
    );
  RdNotWr_and00001 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Go_IBUF_999,
      ADR3 => state_FSM_FFd5_243,
      O => RdNotWr_and0000_pack_2
    );
  sregIn_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(0),
      O => sregIn_1_DXMUX_3686
    );
  sregIn_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAin,
      O => sregIn_1_DYMUX_3680
    );
  sregIn_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregIn_1_CLKINV_3678
    );
  sregIn_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn_and0000_0,
      O => sregIn_1_CEINV_3677
    );
  NACK_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => NACK_OBUF_BYINV_3699,
      O => NACK_OBUF_DYMUX_3700
    );
  NACK_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => NACK_OBUF_BYINV_3699
    );
  NACK_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd6_245,
      O => NACK_OBUF_SRINV_3698
    );
  NACK_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NACK_OBUF_CLKINV_3697
    );
  NACK_OBUF_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => NACK_and0000,
      O => NACK_OBUF_CEINV_3696
    );
  sregIn_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(2),
      O => sregIn_3_DXMUX_3721
    );
  sregIn_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(1),
      O => sregIn_3_DYMUX_3715
    );
  sregIn_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregIn_3_CLKINV_3713
    );
  sregIn_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn_and0000_0,
      O => sregIn_3_CEINV_3712
    );
  FIFO_Empty_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Empty_OBUF_BYINV_3734,
      O => FIFO_Empty_OBUF_DYMUX_3735
    );
  FIFO_Empty_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => FIFO_Empty_OBUF_BYINV_3734
    );
  FIFO_Empty_OBUF_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_or0000,
      O => FIFO_Empty_OBUF_SRINV_3733
    );
  FIFO_Empty_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => FIFO_Empty_OBUF_CLKINV_3732
    );
  FIFO_Empty_OBUF_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_iEmpty_and0000,
      O => FIFO_Empty_OBUF_CEINV_3731
    );
  sregIn_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(4),
      O => sregIn_5_DXMUX_3756
    );
  sregIn_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(3),
      O => sregIn_5_DYMUX_3750
    );
  sregIn_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregIn_5_CLKINV_3748
    );
  sregIn_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn_and0000_0,
      O => sregIn_5_CEINV_3747
    );
  sregIn_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(6),
      O => sregIn_7_DXMUX_3776
    );
  sregIn_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn(5),
      O => sregIn_7_DYMUX_3770
    );
  sregIn_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => sregIn_7_CLKINV_3768
    );
  sregIn_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => sregIn_and0000_0,
      O => sregIn_7_CEINV_3767
    );
  N80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => N80,
      O => N80_0
    );
  i_FIFO_DoPush40_SW1 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X64Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => FIFO_Full_OBUF_1006,
      ADR3 => Reset_IBUF_1002,
      O => N80
    );
  i_FIFO_iEmpty_or00001 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => N79_0,
      ADR1 => sclEnd_0,
      ADR2 => N80_0,
      ADR3 => i_FIFO_DoPush13_164_0,
      O => i_FIFO_iEmpty_or0000
    );
  SDAout_mux000325_133_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_mux000325_133,
      O => SDAout_mux000325_133_0
    );
  SDAout_mux000325_133_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  sregOut_not000111 : X_LUT4
    generic map(
      INIT => X"FFEF",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => cntBits(2),
      ADR1 => cntBits(1),
      ADR2 => cntBits(3),
      ADR3 => cntBits(0),
      O => N01_pack_1
    );
  cntSCL_2 : X_SFF
    generic map(
      LOC => "SLICE_X65Y31",
      INIT => '0'
    )
    port map (
      I => cntSCL_2_DXMUX_1232,
      CE => VCC,
      CLK => cntSCL_2_CLKINV_1193,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_2_SRINV_1194,
      O => cntSCL(2)
    );
  cntSCL_5 : X_SFF
    generic map(
      LOC => "SLICE_X65Y32",
      INIT => '0'
    )
    port map (
      I => cntSCL_4_DYMUX_1267,
      CE => VCC,
      CLK => cntSCL_4_CLKINV_1245,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_4_SRINV_1246,
      O => cntSCL(5)
    );
  SDAout_mux0003139 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X65Y25"
    )
    port map (
      ADR0 => cntSCL(1),
      ADR1 => VCC,
      ADR2 => cntSCL(4),
      ADR3 => VCC,
      O => SDAout_mux0003139_128
    );
  i_FIFO_Mram_RAM6_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y33"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR4,
      I => FIFO_DO_5_OBUF_DIG_MUX_3328,
      CLK => FIFO_DO_5_OBUF_CLKINV_3326,
      WE => FIFO_DO_5_OBUF_SRINV_3320,
      O => FIFO_DO_5_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM6_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y33"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR4,
      I => FIFO_DO_5_OBUF_DIF_MUX_3341,
      CLK => FIFO_DO_5_OBUF_CLKINV_3326,
      WE => FIFO_DO_5_OBUF_SRINV_3320,
      O => FIFO_DO_5_OBUF_3353
    );
  i_FIFO_Mram_RAM7_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y36"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR4,
      I => FIFO_DO_6_OBUF_DIG_MUX_3376,
      CLK => FIFO_DO_6_OBUF_CLKINV_3374,
      WE => FIFO_DO_6_OBUF_SRINV_3368,
      O => FIFO_DO_6_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM7_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y36"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR4,
      I => FIFO_DO_6_OBUF_DIF_MUX_3389,
      CLK => FIFO_DO_6_OBUF_CLKINV_3374,
      WE => FIFO_DO_6_OBUF_SRINV_3368,
      O => FIFO_DO_6_OBUF_3401
    );
  cntSCL_4 : X_SFF
    generic map(
      LOC => "SLICE_X65Y32",
      INIT => '0'
    )
    port map (
      I => cntSCL_4_DXMUX_1284,
      CE => VCC,
      CLK => cntSCL_4_CLKINV_1245,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_4_SRINV_1246,
      O => cntSCL(4)
    );
  cntSCL_6 : X_SFF
    generic map(
      LOC => "SLICE_X65Y33",
      INIT => '0'
    )
    port map (
      I => cntSCL_6_DXMUX_1329,
      CE => VCC,
      CLK => cntSCL_6_CLKINV_1296,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntSCL_6_SRINV_1297,
      O => cntSCL(6)
    );
  i_FIFO_Mram_RAM3_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y24"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_RADR2,
      RADR2 => i_FIFO_addrWr(2),
      RADR3 => i_FIFO_addrWr(3),
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_WADR2,
      WADR2 => i_FIFO_addrWr(2),
      WADR3 => i_FIFO_addrWr(3),
      I => FIFO_DO_2_OBUF_DIG_MUX_3160,
      CLK => FIFO_DO_2_OBUF_CLKINV_3158,
      WE => FIFO_DO_2_OBUF_SRINV_3152,
      O => FIFO_DO_2_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM3_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y24"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_WADR2,
      WADR2 => i_FIFO_addrWr(2),
      WADR3 => i_FIFO_addrWr(3),
      I => FIFO_DO_2_OBUF_DIF_MUX_3173,
      CLK => FIFO_DO_2_OBUF_CLKINV_3158,
      WE => FIFO_DO_2_OBUF_SRINV_3152,
      O => FIFO_DO_2_OBUF_3185
    );
  i_FIFO_Mram_RAM4_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y26"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR4,
      I => FIFO_DO_3_OBUF_DIG_MUX_3208,
      CLK => FIFO_DO_3_OBUF_CLKINV_3206,
      WE => FIFO_DO_3_OBUF_SRINV_3200,
      O => FIFO_DO_3_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM4_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y26"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR4,
      I => FIFO_DO_3_OBUF_DIF_MUX_3221,
      CLK => FIFO_DO_3_OBUF_CLKINV_3206,
      WE => FIFO_DO_3_OBUF_SRINV_3200,
      O => FIFO_DO_3_OBUF_3233
    );
  i_FIFO_Mram_RAM5_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y41"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR4,
      I => FIFO_DO_4_OBUF_DIG_MUX_3256,
      CLK => FIFO_DO_4_OBUF_CLKINV_3254,
      WE => FIFO_DO_4_OBUF_SRINV_3248,
      O => FIFO_DO_4_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM5_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y41"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR4,
      I => FIFO_DO_4_OBUF_DIF_MUX_3269,
      CLK => FIFO_DO_4_OBUF_CLKINV_3254,
      WE => FIFO_DO_4_OBUF_SRINV_3248,
      O => FIFO_DO_4_OBUF_3281
    );
  sregOut_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y35",
      INIT => '0'
    )
    port map (
      I => sregOut_5_DXMUX_1803,
      CE => sregOut_5_CEINV_1786,
      CLK => sregOut_5_CLKINV_1787,
      SET => GND,
      RST => GND,
      O => sregOut(5)
    );
  sregOut_mux0000_6_1 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X67Y37"
    )
    port map (
      ADR0 => sregOut(5),
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => Address_6_IBUF_992,
      O => sregOut_mux0000_6_1_227
    );
  sregOut_6 : X_FF
    generic map(
      LOC => "SLICE_X67Y37",
      INIT => '0'
    )
    port map (
      I => sregOut_6_DXMUX_1837,
      CE => sregOut_6_CEINV_1820,
      CLK => sregOut_6_CLKINV_1821,
      SET => GND,
      RST => GND,
      O => sregOut(6)
    );
  sregOut_mux0000_7_1 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X67Y36"
    )
    port map (
      ADR0 => sregOut(6),
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => Address_7_IBUF_995,
      O => sregOut_mux0000_7_1_230
    );
  sregOut_7 : X_FF
    generic map(
      LOC => "SLICE_X67Y36",
      INIT => '0'
    )
    port map (
      I => sregOut_7_DXMUX_1871,
      CE => sregOut_7_CEINV_1854,
      CLK => sregOut_7_CLKINV_1855,
      SET => GND,
      RST => GND,
      O => sregOut(7)
    );
  sregOut_mux0000_1_1 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => sregOut(0),
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => Address_1_IBUF_979,
      O => sregOut_mux0000_1_1_212
    );
  sregOut_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y34",
      INIT => '0'
    )
    port map (
      I => sregOut_1_DXMUX_1905,
      CE => sregOut_1_CEINV_1888,
      CLK => sregOut_1_CLKINV_1889,
      SET => GND,
      RST => GND,
      O => sregOut(1)
    );
  SDAout_mux00032041 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X64Y27"
    )
    port map (
      ADR0 => SDAout_mux000358_O,
      ADR1 => SDAout_mux0003431_137_0,
      ADR2 => SDAout_mux0003180_131_0,
      ADR3 => SDAout_125,
      O => SDAout_mux0003204
    );
  SDAout : X_SFF
    generic map(
      LOC => "SLICE_X64Y27",
      INIT => '1'
    )
    port map (
      I => SDAout_125_DXMUX_1938,
      CE => VCC,
      CLK => SDAout_125_CLKINV_1922,
      SET => GND,
      RST => GND,
      SSET => SDAout_125_SRINV_1923,
      SRST => GND,
      O => SDAout_125
    );
  i_FIFO_DoPop : X_LUT4
    generic map(
      INIT => X"0E1F",
      LOC => "SLICE_X66Y27"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => RdNotWr_96,
      ADR2 => N65,
      ADR3 => N64,
      O => i_FIFO_DoPop_161
    );
  sregOut_mux0000_2_1 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X67Y35"
    )
    port map (
      ADR0 => Address_2_IBUF_982,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => Go_IBUF_999,
      ADR3 => sregOut(1),
      O => sregOut_mux0000_2_1_215
    );
  sregOut_2 : X_FF
    generic map(
      LOC => "SLICE_X67Y35",
      INIT => '0'
    )
    port map (
      I => sregOut_2_DXMUX_1651,
      CE => sregOut_2_CEINV_1634,
      CLK => sregOut_2_CLKINV_1635,
      SET => GND,
      RST => GND,
      O => sregOut(2)
    );
  sregOut_mux0000_3_1 : X_LUT4
    generic map(
      INIT => X"DF80",
      LOC => "SLICE_X67Y43"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => Address_3_IBUF_984,
      ADR2 => Go_IBUF_999,
      ADR3 => sregOut(2),
      O => sregOut_mux0000_3_1_218
    );
  sregOut_3 : X_FF
    generic map(
      LOC => "SLICE_X67Y43",
      INIT => '0'
    )
    port map (
      I => sregOut_3_DXMUX_1685,
      CE => sregOut_3_CEINV_1668,
      CLK => sregOut_3_CLKINV_1669,
      SET => GND,
      RST => GND,
      O => sregOut(3)
    );
  i_FIFO_DoPop_SW3_G : X_LUT4
    generic map(
      INIT => X"BBB3",
      LOC => "SLICE_X67Y24"
    )
    port map (
      ADR0 => N65,
      ADR1 => i_FIFO_iEmpty_and000067_184_0,
      ADR2 => RdNotWr_96,
      ADR3 => state_FSM_FFd5_243,
      O => N90
    );
  i_FIFO_DoPop_SW4_G : X_LUT4
    generic map(
      INIT => X"FF37",
      LOC => "SLICE_X67Y27"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => i_FIFO_iEmpty_and000067_184_0,
      ADR2 => RdNotWr_96,
      ADR3 => N65,
      O => N92
    );
  sregOut_mux0000_4_1 : X_LUT4
    generic map(
      INIT => X"F870",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => Go_IBUF_999,
      ADR2 => sregOut(3),
      ADR3 => Address_4_IBUF_988,
      O => sregOut_mux0000_4_1_221
    );
  sregOut_4 : X_FF
    generic map(
      LOC => "SLICE_X66Y38",
      INIT => '0'
    )
    port map (
      I => sregOut_4_DXMUX_1769,
      CE => sregOut_4_CEINV_1752,
      CLK => sregOut_4_CLKINV_1753,
      SET => GND,
      RST => GND,
      O => sregOut(4)
    );
  sregOut_mux0000_5_1 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => sregOut(4),
      ADR1 => Go_IBUF_999,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => Address_5_IBUF_990,
      O => sregOut_mux0000_5_1_224
    );
  sregOut_not0001_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X65Y34"
    )
    port map (
      ADR0 => N01,
      ADR1 => SDAout_mux0003425_136,
      ADR2 => SDAout_mux0003412_135,
      ADR3 => state_FSM_FFd3_239,
      O => N61
    );
  SDAout_mux0003112 : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "SLICE_X64Y28"
    )
    port map (
      ADR0 => cntSCL(2),
      ADR1 => cntSCL(5),
      ADR2 => cntSCL(3),
      ADR3 => SDAout_mux0003107_O,
      O => SDAout_mux0003112_127
    );
  i_FIFO_iFull_or00001 : X_LUT4
    generic map(
      INIT => X"ABFB",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => Reset_IBUF_1002,
      ADR1 => N65,
      ADR2 => N69_0,
      ADR3 => N64,
      O => i_FIFO_iFull_or0000
    );
  i_FIFO_DoPush13 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X66Y28"
    )
    port map (
      ADR0 => cntBits(2),
      ADR1 => cntBits(1),
      ADR2 => cntBits(3),
      ADR3 => i_FIFO_DoPush13_SW0_O,
      O => i_FIFO_DoPush13_164
    );
  SDAout_mux0003180 : X_LUT4
    generic map(
      INIT => X"FEBA",
      LOC => "SLICE_X64Y29"
    )
    port map (
      ADR0 => SDAout_mux000393_141_0,
      ADR1 => state_FSM_FFd4_241,
      ADR2 => SDAout_mux0003157_O,
      ADR3 => SDAout_mux0003112_127_0,
      O => SDAout_mux0003180_131
    );
  SDAout_mux0003431 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X65Y39"
    )
    port map (
      ADR0 => state_FSM_FFd1_233,
      ADR1 => SDAout_mux000325_133_0,
      ADR2 => state_FSM_FFd3_239,
      ADR3 => SDAout_mux000337_O,
      O => SDAout_mux0003431_137
    );
  SDAout_mux0003426 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X64Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SDAout_mux0003412_135,
      ADR2 => SDAout_mux0003425_136,
      ADR3 => VCC,
      O => N14
    );
  state_FSM_FFd1_In_SW0 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X64Y38"
    )
    port map (
      ADR0 => state_FSM_FFd3_239,
      ADR1 => RdNotWr_96,
      ADR2 => state_FSM_FFd1_233,
      ADR3 => N12,
      O => N59
    );
  SDAout_mux00038 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X64Y33"
    )
    port map (
      ADR0 => state_FSM_FFd2_235,
      ADR1 => cntSCL(0),
      ADR2 => N111,
      ADR3 => cntSCL(5),
      O => SDAout_mux00038_139
    );
  SDAout_mux000393 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => cntSCL(0),
      ADR1 => cntSCL(6),
      ADR2 => cntSCL(7),
      ADR3 => SDAout_mux000388_O,
      O => SDAout_mux000393_141
    );
  state_FSM_FFd3_In : X_LUT4
    generic map(
      INIT => X"EACC",
      LOC => "SLICE_X65Y36"
    )
    port map (
      ADR0 => state_FSM_FFd4_241,
      ADR1 => state_FSM_FFd3_239,
      ADR2 => state_FSM_FFd3_In_SW0_O,
      ADR3 => sclEnd_0,
      O => state_FSM_FFd3_In_240
    );
  state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X65Y36",
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd3_239_DXMUX_2235,
      CE => VCC,
      CLK => state_FSM_FFd3_239_CLKINV_2218,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FSM_FFd3_239_SRINV_2219,
      O => state_FSM_FFd3_239
    );
  sclEnd_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X64Y30"
    )
    port map (
      ADR0 => N71_0,
      ADR1 => cntSCL(1),
      ADR2 => cntSCL(6),
      ADR3 => N15,
      O => sclEnd
    );
  i_FIFO_iEmpty_and0000102 : X_LUT4
    generic map(
      INIT => X"0A22",
      LOC => "SLICE_X67Y25"
    )
    port map (
      ADR0 => i_FIFO_iEmpty_and0000102_SW0_O,
      ADR1 => N84,
      ADR2 => N85,
      ADR3 => N64,
      O => i_FIFO_iEmpty_and0000
    );
  i_FIFO_DoPush40_SW0 : X_LUT4
    generic map(
      INIT => X"AFAA",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => Reset_IBUF_1002,
      ADR1 => VCC,
      ADR2 => FIFO_Full_OBUF_1006,
      ADR3 => i_FIFO_DoPush0_163,
      O => N79
    );
  sregOut_not0001 : X_LUT4
    generic map(
      INIT => X"FEDC",
      LOC => "SLICE_X66Y34"
    )
    port map (
      ADR0 => sclEnd_0,
      ADR1 => RdNotWr_and0000,
      ADR2 => N61_0,
      ADR3 => sregOut_not0001_SW1_O,
      O => sregOut_not0001_232
    );
  i_FIFO_addrWr_2 : X_SFF
    generic map(
      LOC => "SLICE_X64Y25",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrWr_3_DYMUX_2360,
      CE => i_FIFO_addrWr_3_CEINV_2349,
      CLK => i_FIFO_addrWr_3_CLKINV_2350,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrWr_3_SRINV_2351,
      O => i_FIFO_addrWr(2)
    );
  i_FIFO_Result_3_11 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X64Y25"
    )
    port map (
      ADR0 => i_FIFO_addrWr(1),
      ADR1 => i_FIFO_addrWr(0),
      ADR2 => i_FIFO_addrWr(2),
      ADR3 => i_FIFO_addrWr(3),
      O => i_FIFO_Result_3_1
    );
  i_FIFO_addrWr_3 : X_SFF
    generic map(
      LOC => "SLICE_X64Y25",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrWr_3_DXMUX_2373,
      CE => i_FIFO_addrWr_3_CEINV_2349,
      CLK => i_FIFO_addrWr_3_CLKINV_2350,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrWr_3_SRINV_2351,
      O => i_FIFO_addrWr(3)
    );
  i_FIFO_addrRd_2 : X_SFF
    generic map(
      LOC => "SLICE_X64Y24",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrRd_3_DYMUX_2403,
      CE => i_FIFO_addrRd_3_CEINV_2392,
      CLK => i_FIFO_addrRd_3_CLKINV_2393,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrRd_3_SRINV_2394,
      O => i_FIFO_addrRd(2)
    );
  i_FIFO_Result_3_2 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X64Y24"
    )
    port map (
      ADR0 => i_FIFO_addrRd(2),
      ADR1 => i_FIFO_addrRd(0),
      ADR2 => i_FIFO_addrRd(1),
      ADR3 => i_FIFO_addrRd(3),
      O => i_FIFO_Result(3)
    );
  i_FIFO_addrRd_3 : X_SFF
    generic map(
      LOC => "SLICE_X64Y24",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrRd_3_DXMUX_2416,
      CE => i_FIFO_addrRd_3_CEINV_2392,
      CLK => i_FIFO_addrRd_3_CLKINV_2393,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrRd_3_SRINV_2394,
      O => i_FIFO_addrRd(3)
    );
  i_FIFO_Mram_RAM1_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y32"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR4,
      I => FIFO_DO_0_OBUF_DIF_MUX_3020,
      CLK => FIFO_DO_0_OBUF_CLKINV_3005,
      WE => FIFO_DO_0_OBUF_SRINV_2999,
      O => FIFO_DO_0_OBUF_3032
    );
  SDAout_mux000332_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X64Y32"
    )
    port map (
      ADR0 => cntSCL(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cntSCL(5),
      O => N71
    );
  SCLout_mux0000721 : X_LUT4
    generic map(
      INIT => X"CCC0",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SCLout_116,
      ADR2 => SCLout_mux000021_118,
      ADR3 => SCLout_mux00008_122_0,
      O => SCLout_mux000072
    );
  SCLout : X_SFF
    generic map(
      LOC => "SLICE_X67Y28",
      INIT => '1'
    )
    port map (
      I => SCLout_116_DXMUX_3087,
      CE => VCC,
      CLK => SCLout_116_CLKINV_3070,
      SET => GND,
      RST => GND,
      SSET => SCLout_116_SRINV_3071,
      SRST => GND,
      O => SCLout_116
    );
  i_FIFO_Mram_RAM2_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y29"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR4,
      I => FIFO_DO_1_OBUF_DIG_MUX_3112,
      CLK => FIFO_DO_1_OBUF_CLKINV_3110,
      WE => FIFO_DO_1_OBUF_SRINV_3104,
      O => FIFO_DO_1_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM2_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y29"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR4,
      I => FIFO_DO_1_OBUF_DIF_MUX_3125,
      CLK => FIFO_DO_1_OBUF_CLKINV_3110,
      WE => FIFO_DO_1_OBUF_SRINV_3104,
      O => FIFO_DO_1_OBUF_3137
    );
  cntBytes_0 : X_FF
    generic map(
      LOC => "SLICE_X66Y37",
      INIT => '0'
    )
    port map (
      I => cntBytes_0_DYMUX_2441,
      CE => cntBytes_0_CEINV_2432,
      CLK => cntBytes_0_CLKINV_2433,
      SET => GND,
      RST => GND,
      O => cntBytes(0)
    );
  i_FIFO_DoPop_SW2 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => RdNotWr_96,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => VCC,
      O => N69
    );
  state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y29",
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd1_233_DYMUX_2475,
      CE => VCC,
      CLK => state_FSM_FFd1_233_CLKINV_2466,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FSM_FFd1_233_SRINV_2467,
      O => state_FSM_FFd1_233
    );
  cntBits_or00001 : X_LUT4
    generic map(
      INIT => X"BBAA",
      LOC => "SLICE_X65Y29"
    )
    port map (
      ADR0 => state_FSM_FFd4_241,
      ADR1 => N01,
      ADR2 => VCC,
      ADR3 => sclEnd_0,
      O => cntBits_or0000
    );
  state_FSM_FFd2_In26 : X_LUT4
    generic map(
      INIT => X"0C0E",
      LOC => "SLICE_X65Y35"
    )
    port map (
      ADR0 => state_FSM_FFd2_In2_237_0,
      ADR1 => state_FSM_FFd2_In12_236_0,
      ADR2 => N01,
      ADR3 => N12,
      O => state_FSM_FFd2_In26_238
    );
  state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X65Y35",
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd2_235_DYMUX_2511,
      CE => state_FSM_FFd2_235_CEINV_2501,
      CLK => state_FSM_FFd2_235_CLKINV_2502,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FSM_FFd2_235_SRINV_2503,
      O => state_FSM_FFd2_235
    );
  NACK_and000022 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X65Y35"
    )
    port map (
      ADR0 => N15,
      ADR1 => N01,
      ADR2 => N87_0,
      ADR3 => NACK_and00007_95_0,
      O => NACK_and0000
    );
  state_FSM_FFd4 : X_SFF
    generic map(
      LOC => "SLICE_X64Y34",
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd4_241_DYMUX_2543,
      CE => VCC,
      CLK => state_FSM_FFd4_241_CLKINV_2534,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => state_FSM_FFd4_241_SRINV_2535,
      O => state_FSM_FFd4_241
    );
  cntSCL_or00001 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => sclEnd_0,
      ADR1 => VCC,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => VCC,
      O => cntSCL_or0000
    );
  state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"CE0A",
      LOC => "SLICE_X67Y26"
    )
    port map (
      ADR0 => state_FSM_FFd5_243,
      ADR1 => state_FSM_FFd2_235,
      ADR2 => Go_IBUF_999,
      ADR3 => sclEnd_0,
      O => state_FSM_FFd5_In1_244
    );
  state_FSM_FFd5 : X_SFF
    generic map(
      LOC => "SLICE_X67Y26",
      INIT => '0'
    )
    port map (
      I => state_FSM_FFd5_243_DYMUX_2580,
      CE => VCC,
      CLK => state_FSM_FFd5_243_CLKINV_2570,
      SET => GND,
      RST => GND,
      SSET => state_FSM_FFd5_243_REVUSED_2581,
      SRST => state_FSM_FFd5_243_SRINV_2571,
      O => state_FSM_FFd5_243
    );
  DI_0_1 : X_LUT4
    generic map(
      INIT => X"CCAC",
      LOC => "SLICE_X67Y26"
    )
    port map (
      ADR0 => sregIn(0),
      ADR1 => FIFO_DI_0_IBUF_981,
      ADR2 => RdNotWr_96,
      ADR3 => state_FSM_FFd5_243,
      O => DI(0)
    );
  sregOut_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y42",
      INIT => '0'
    )
    port map (
      I => sregOut_0_DYMUX_2615,
      CE => sregOut_0_CEINV_2606,
      CLK => sregOut_0_CLKINV_2607,
      SET => GND,
      RST => GND,
      O => sregOut(0)
    );
  cntBytes_not0001 : X_LUT4
    generic map(
      INIT => X"AEAA",
      LOC => "SLICE_X67Y42"
    )
    port map (
      ADR0 => RdNotWr_and0000,
      ADR1 => state_FSM_FFd1_233,
      ADR2 => N55_0,
      ADR3 => sclEnd_0,
      O => cntBytes_not0001_151
    );
  cntBits_2 : X_SFF
    generic map(
      LOC => "SLICE_X64Y39",
      INIT => '0'
    )
    port map (
      I => cntBits_3_DYMUX_2650,
      CE => cntBits_3_CEINV_2639,
      CLK => cntBits_3_CLKINV_2640,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntBits_3_SRINV_2641,
      O => cntBits(2)
    );
  Mcount_cntBits_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X64Y39"
    )
    port map (
      ADR0 => cntBits(3),
      ADR1 => cntBits(0),
      ADR2 => cntBits(1),
      ADR3 => cntBits(2),
      O => Result(3)
    );
  cntBits_3 : X_SFF
    generic map(
      LOC => "SLICE_X64Y39",
      INIT => '0'
    )
    port map (
      I => cntBits_3_DXMUX_2663,
      CE => cntBits_3_CEINV_2639,
      CLK => cntBits_3_CLKINV_2640,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntBits_3_SRINV_2641,
      O => cntBits(3)
    );
  i_FIFO_iFull_and000076 : X_LUT4
    generic map(
      INIT => X"9090",
      LOC => "SLICE_X65Y28"
    )
    port map (
      ADR0 => i_FIFO_Result_3_1_0,
      ADR1 => i_FIFO_addrRd(3),
      ADR2 => i_FIFO_iFull_and000071_189,
      ADR3 => VCC,
      O => i_FIFO_iFull_and000076_190
    );
  i_FIFO_iEmpty_and000058 : X_LUT4
    generic map(
      INIT => X"6999",
      LOC => "SLICE_X65Y26"
    )
    port map (
      ADR0 => i_FIFO_addrRd(2),
      ADR1 => i_FIFO_addrWr(2),
      ADR2 => i_FIFO_addrRd(0),
      ADR3 => i_FIFO_addrRd(1),
      O => i_FIFO_iEmpty_and000058_183
    );
  DI_1_1 : X_LUT4
    generic map(
      INIT => X"F0B8",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => sregIn(1),
      ADR1 => RdNotWr_96,
      ADR2 => FIFO_DI_1_IBUF_983,
      ADR3 => state_FSM_FFd5_243,
      O => DI(1)
    );
  state_FSM_FFd2_In2 : X_LUT4
    generic map(
      INIT => X"EAEA",
      LOC => "SLICE_X65Y27"
    )
    port map (
      ADR0 => state_FSM_FFd1_233,
      ADR1 => RdNotWr_96,
      ADR2 => state_FSM_FFd3_239,
      ADR3 => VCC,
      O => state_FSM_FFd2_In2_237
    );
  i_FIFO_addrWr_1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y24",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrWr_0_DYMUX_2789,
      CE => i_FIFO_addrWr_0_CEINV_2777,
      CLK => i_FIFO_addrWr_0_CLKINV_2778,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrWr_0_SRINV_2779,
      O => i_FIFO_addrWr(1)
    );
  i_FIFO_iEmpty_and000067 : X_LUT4
    generic map(
      INIT => X"3CC3",
      LOC => "SLICE_X65Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => i_FIFO_addrRd(1),
      ADR2 => i_FIFO_addrRd(0),
      ADR3 => i_FIFO_addrWr(1),
      O => i_FIFO_iEmpty_and000067_184
    );
  i_FIFO_addrWr_0 : X_SFF
    generic map(
      LOC => "SLICE_X65Y24",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrWr_0_DXMUX_2804,
      CE => i_FIFO_addrWr_0_CEINV_2777,
      CLK => i_FIFO_addrWr_0_CLKINV_2778,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrWr_0_SRINV_2779,
      O => i_FIFO_addrWr(0)
    );
  Mcount_cntBytes_xor_3_1 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X66Y42"
    )
    port map (
      ADR0 => ReadCnt_3_IBUF_1012,
      ADR1 => Go_IBUF_999,
      ADR2 => state_FSM_FFd5_243,
      ADR3 => N109,
      O => Mcount_cntBytes3
    );
  cntBytes_3 : X_FF
    generic map(
      LOC => "SLICE_X66Y42",
      INIT => '0'
    )
    port map (
      I => cntBytes_3_DXMUX_2838,
      CE => cntBytes_3_CEINV_2822,
      CLK => cntBytes_3_CLKINV_2823,
      SET => GND,
      RST => GND,
      O => cntBytes(3)
    );
  i_FIFO_iFull : X_SFF
    generic map(
      LOC => "SLICE_X67Y32",
      INIT => '0'
    )
    port map (
      I => FIFO_Full_OBUF_DYMUX_2852,
      CE => FIFO_Full_OBUF_CEINV_2848,
      CLK => FIFO_Full_OBUF_CLKINV_2849,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FIFO_Full_OBUF_SRINV_2850,
      O => FIFO_Full_OBUF_1006
    );
  DI_2_1 : X_LUT4
    generic map(
      INIT => X"BA8A",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => FIFO_DI_2_IBUF_987,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => RdNotWr_96,
      ADR3 => sregIn(2),
      O => DI(2)
    );
  i_FIFO_Result_1_1 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X65Y22"
    )
    port map (
      ADR0 => i_FIFO_addrRd(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => i_FIFO_addrRd(1),
      O => i_FIFO_Result(1)
    );
  i_FIFO_addrRd_1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y22",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrRd_0_DYMUX_2902,
      CE => i_FIFO_addrRd_0_CEINV_2890,
      CLK => i_FIFO_addrRd_0_CLKINV_2891,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrRd_0_SRINV_2892,
      O => i_FIFO_addrRd(1)
    );
  i_FIFO_addrRd_0 : X_SFF
    generic map(
      LOC => "SLICE_X65Y22",
      INIT => '0'
    )
    port map (
      I => i_FIFO_addrRd_0_DXMUX_2909,
      CE => i_FIFO_addrRd_0_CEINV_2890,
      CLK => i_FIFO_addrRd_0_CLKINV_2891,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => i_FIFO_addrRd_0_SRINV_2892,
      O => i_FIFO_addrRd(0)
    );
  DI_6_1 : X_LUT4
    generic map(
      INIT => X"BA8A",
      LOC => "SLICE_X67Y23"
    )
    port map (
      ADR0 => FIFO_DI_6_IBUF_997,
      ADR1 => state_FSM_FFd5_243,
      ADR2 => RdNotWr_96,
      ADR3 => sregIn(6),
      O => DI(6)
    );
  state_FSM_FFd2_In12 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X66Y23"
    )
    port map (
      ADR0 => state_FSM_FFd3_239,
      ADR1 => RdNotWr_96,
      ADR2 => FIFO_Empty_OBUF_980,
      ADR3 => VCC,
      O => state_FSM_FFd2_In12_236
    );
  state_FSM_FFd6 : X_SFF
    generic map(
      LOC => "SLICE_X64Y23",
      INIT => '1'
    )
    port map (
      I => state_FSM_FFd6_245_DYMUX_2970,
      CE => VCC,
      CLK => state_FSM_FFd6_245_CLKINV_2967,
      SET => GND,
      RST => GND,
      SSET => state_FSM_FFd6_245_SRINV_2968,
      SRST => GND,
      O => state_FSM_FFd6_245
    );
  RdNotWr : X_FF
    generic map(
      LOC => "SLICE_X66Y39",
      INIT => '0'
    )
    port map (
      I => RdNotWr_96_DYMUX_2982,
      CE => RdNotWr_96_CEINV_2979,
      CLK => RdNotWr_96_CLKINV_2980,
      SET => GND,
      RST => GND,
      O => RdNotWr_96
    );
  i_FIFO_Mram_RAM1_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y32"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR4,
      I => FIFO_DO_0_OBUF_DIG_MUX_3007,
      CLK => FIFO_DO_0_OBUF_CLKINV_3005,
      WE => FIFO_DO_0_OBUF_SRINV_2999,
      O => FIFO_DO_0_OBUF_G_RAMOUT
    );
  NACK_12 : X_SFF
    generic map(
      LOC => "SLICE_X64Y22",
      INIT => '0'
    )
    port map (
      I => NACK_OBUF_DYMUX_3700,
      CE => NACK_OBUF_CEINV_3696,
      CLK => NACK_OBUF_CLKINV_3697,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => NACK_OBUF_SRINV_3698,
      O => NACK_OBUF_1013
    );
  sregIn_2 : X_FF
    generic map(
      LOC => "SLICE_X67Y21",
      INIT => '0'
    )
    port map (
      I => sregIn_3_DYMUX_3715,
      CE => sregIn_3_CEINV_3712,
      CLK => sregIn_3_CLKINV_3713,
      SET => GND,
      RST => GND,
      O => sregIn(2)
    );
  sregIn_3 : X_FF
    generic map(
      LOC => "SLICE_X67Y21",
      INIT => '0'
    )
    port map (
      I => sregIn_3_DXMUX_3721,
      CE => sregIn_3_CEINV_3712,
      CLK => sregIn_3_CLKINV_3713,
      SET => GND,
      RST => GND,
      O => sregIn(3)
    );
  i_FIFO_iEmpty : X_SFF
    generic map(
      LOC => "SLICE_X66Y25",
      INIT => '1'
    )
    port map (
      I => FIFO_Empty_OBUF_DYMUX_3735,
      CE => FIFO_Empty_OBUF_CEINV_3731,
      CLK => FIFO_Empty_OBUF_CLKINV_3732,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FIFO_Empty_OBUF_SRINV_3733,
      O => FIFO_Empty_OBUF_980
    );
  sregIn_4 : X_FF
    generic map(
      LOC => "SLICE_X66Y20",
      INIT => '0'
    )
    port map (
      I => sregIn_5_DYMUX_3750,
      CE => sregIn_5_CEINV_3747,
      CLK => sregIn_5_CLKINV_3748,
      SET => GND,
      RST => GND,
      O => sregIn(4)
    );
  sregIn_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y20",
      INIT => '0'
    )
    port map (
      I => sregIn_5_DXMUX_3756,
      CE => sregIn_5_CEINV_3747,
      CLK => sregIn_5_CLKINV_3748,
      SET => GND,
      RST => GND,
      O => sregIn(5)
    );
  sregIn_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y22",
      INIT => '0'
    )
    port map (
      I => sregIn_7_DYMUX_3770,
      CE => sregIn_7_CEINV_3767,
      CLK => sregIn_7_CLKINV_3768,
      SET => GND,
      RST => GND,
      O => sregIn(6)
    );
  sregIn_7 : X_FF
    generic map(
      LOC => "SLICE_X66Y22",
      INIT => '0'
    )
    port map (
      I => sregIn_7_DXMUX_3776,
      CE => sregIn_7_CEINV_3767,
      CLK => sregIn_7_CLKINV_3768,
      SET => GND,
      RST => GND,
      O => sregIn(7)
    );
  i_FIFO_Mram_RAM8_SLICEM_G : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y40"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR4,
      I => FIFO_DO_7_OBUF_DIG_MUX_3424,
      CLK => FIFO_DO_7_OBUF_CLKINV_3422,
      WE => FIFO_DO_7_OBUF_SRINV_3416,
      O => FIFO_DO_7_OBUF_G_RAMOUT
    );
  i_FIFO_Mram_RAM8_SLICEM_F : X_RAMD16
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y40"
    )
    port map (
      RADR0 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR1,
      RADR1 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR2,
      RADR2 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR3,
      RADR3 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR4,
      WADR0 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR1,
      WADR1 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR2,
      WADR2 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR3,
      WADR3 => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR4,
      I => FIFO_DO_7_OBUF_DIF_MUX_3437,
      CLK => FIFO_DO_7_OBUF_CLKINV_3422,
      WE => FIFO_DO_7_OBUF_SRINV_3416,
      O => FIFO_DO_7_OBUF_3449
    );
  cntBytes_not0001_SW0 : X_LUT4
    generic map(
      INIT => X"DFFF",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => cntBits(1),
      ADR1 => cntBits(3),
      ADR2 => cntBits(2),
      ADR3 => cntBits(0),
      O => N55
    );
  cntBits_0 : X_SFF
    generic map(
      LOC => "SLICE_X65Y37",
      INIT => '0'
    )
    port map (
      I => cntBits_1_DYMUX_3476,
      CE => cntBits_1_CEINV_3465,
      CLK => cntBits_1_CLKINV_3466,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntBits_1_SRINV_3467,
      O => cntBits(0)
    );
  Mcount_cntBits_xor_1_11 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X65Y37"
    )
    port map (
      ADR0 => cntBits(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cntBits(0),
      O => Result(1)
    );
  cntBits_1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y37",
      INIT => '0'
    )
    port map (
      I => cntBits_1_DXMUX_3491,
      CE => cntBits_1_CEINV_3465,
      CLK => cntBits_1_CLKINV_3466,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cntBits_1_SRINV_3467,
      O => cntBits(1)
    );
  SCLout_mux000063 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X64Y36"
    )
    port map (
      ADR0 => cntSCL(5),
      ADR1 => N15,
      ADR2 => cntSCL(6),
      ADR3 => SCLout_mux000061_119,
      O => SCLout_mux000063_120
    );
  i_FIFO_iFull_and000096 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => i_FIFO_iFull_and000048_188_0,
      ADR2 => i_FIFO_DoPush,
      ADR3 => i_FIFO_iFull_and000076_190_0,
      O => i_FIFO_iFull_and0000
    );
  Mcount_cntBytes_xor_2_1 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X66Y43"
    )
    port map (
      ADR0 => ReadCnt_2_IBUF_1010,
      ADR1 => Go_IBUF_999,
      ADR2 => N107,
      ADR3 => state_FSM_FFd5_243,
      O => Mcount_cntBytes2
    );
  cntBytes_2 : X_FF
    generic map(
      LOC => "SLICE_X66Y43",
      INIT => '0'
    )
    port map (
      I => cntBytes_2_DXMUX_3573,
      CE => cntBytes_2_CEINV_3556,
      CLK => cntBytes_2_CLKINV_3557,
      SET => GND,
      RST => GND,
      O => cntBytes(2)
    );
  sregIn_and00001 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => cntSCL(5),
      ADR1 => cntSCL(0),
      ADR2 => N111,
      ADR3 => state_FSM_FFd1_233,
      O => sregIn_and0000
    );
  NACK_and00007 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => cntSCL(6),
      ADR1 => state_FSM_FFd3_239,
      ADR2 => SDAin,
      ADR3 => cntSCL(1),
      O => NACK_and00007_95
    );
  Mcount_cntBytes_xor_1_11 : X_LUT4
    generic map(
      INIT => X"ACA3",
      LOC => "SLICE_X67Y38"
    )
    port map (
      ADR0 => ReadCnt_1_IBUF_1008,
      ADR1 => cntBytes(0),
      ADR2 => RdNotWr_and0000,
      ADR3 => cntBytes(1),
      O => Mcount_cntBytes1
    );
  cntBytes_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y38",
      INIT => '0'
    )
    port map (
      I => cntBytes_1_DXMUX_3666,
      CE => cntBytes_1_CEINV_3648,
      CLK => cntBytes_1_CLKINV_3649,
      SET => GND,
      RST => GND,
      O => cntBytes(1)
    );
  sregIn_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y22",
      INIT => '0'
    )
    port map (
      I => sregIn_1_DYMUX_3680,
      CE => sregIn_1_CEINV_3677,
      CLK => sregIn_1_CLKINV_3678,
      SET => GND,
      RST => GND,
      O => sregIn(0)
    );
  sregIn_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y22",
      INIT => '0'
    )
    port map (
      I => sregIn_1_DXMUX_3686,
      CE => sregIn_1_CEINV_3677,
      CLK => sregIn_1_CLKINV_3678,
      SET => GND,
      RST => GND,
      O => sregIn(1)
    );
  SDAout_mux000325 : X_LUT4
    generic map(
      INIT => X"F1F0",
      LOC => "SLICE_X65Y38"
    )
    port map (
      ADR0 => cntBytes(2),
      ADR1 => cntBytes(3),
      ADR2 => N01,
      ADR3 => SDAout_mux000316_130_0,
      O => SDAout_mux000325_133
    );
  cntSCL_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cntSCL(1),
      ADR3 => VCC,
      O => cntSCL_0_G
    );
  cntSCL_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cntSCL(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cntSCL_2_F
    );
  cntSCL_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cntSCL(3),
      ADR3 => VCC,
      O => cntSCL_2_G
    );
  cntSCL_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cntSCL(4),
      ADR3 => VCC,
      O => cntSCL_4_F
    );
  cntSCL_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cntSCL(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cntSCL_4_G
    );
  cntSCL_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cntSCL(6),
      ADR3 => VCC,
      O => cntSCL_6_F
    );
  FIFO_Empty_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Empty_OBUF_980,
      O => FIFO_Empty_O
    );
  SDA_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDAout_125,
      O => SDA_T
    );
  SDA_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => SDA_OUTPUT_OFF_O1INV_1397,
      O => SDA_O
    );
  SDA_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => SDA_OUTPUT_OFF_O1INV_1397
    );
  Busy_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD115",
      PATHPULSE => 638 ps
    )
    port map (
      I => state_FSM_FFd5_243,
      O => Busy_O
    );
  SCL_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCLout_116,
      O => SCL_T
    );
  SCL_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => SCL_OUTPUT_OFF_O1INV_1469,
      O => SCL_O
    );
  SCL_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => SCL_OUTPUT_OFF_O1INV_1469
    );
  FIFO_DO_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_0_OBUF_0,
      O => FIFO_DO_0_O
    );
  FIFO_DO_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_1_OBUF_0,
      O => FIFO_DO_1_O
    );
  FIFO_Full_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_Full_OBUF_1006,
      O => FIFO_Full_O
    );
  FIFO_DO_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_2_OBUF_0,
      O => FIFO_DO_2_O
    );
  FIFO_DO_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_3_OBUF_0,
      O => FIFO_DO_3_O
    );
  FIFO_DO_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_4_OBUF_0,
      O => FIFO_DO_4_O
    );
  NACK_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => NACK_OBUF_1013,
      O => NACK_O
    );
  FIFO_DO_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_5_OBUF_0,
      O => FIFO_DO_5_O
    );
  FIFO_DO_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_6_OBUF_0,
      O => FIFO_DO_6_O
    );
  FIFO_DO_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 638 ps
    )
    port map (
      I => FIFO_DO_7_OBUF_0,
      O => FIFO_DO_7_O
    );
  N84_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X67Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N84_G
    );
  N85_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X67Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N85_G
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM6_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM6_SLICEM_F_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM7_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM7_SLICEM_F_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM3_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM3_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM4_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM4_SLICEM_F_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM5_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM5_SLICEM_F_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_F_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM2_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM2_SLICEM_F_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM1_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM1_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_G_WADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrRd(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_RADR4
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(0),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR1
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(1),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR2
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(2),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR3
    );
  NlwBufferBlock_i_FIFO_Mram_RAM8_SLICEM_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => i_FIFO_addrWr(3),
      O => NlwBufferSignal_i_FIFO_Mram_RAM8_SLICEM_F_WADR4
    );
  NlwBlock_I2C_Master_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_I2C_Master_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

