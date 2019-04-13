--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : register_reader_i2c.vhf
-- /___/   /\     Timestamp : 04/13/2019 19:51:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/sergio/Xilinx/Digital-Magnetometer-HMC5883L-driver---Spartan/register_reader_i2c.vhf -w /home/sergio/Xilinx/Digital-Magnetometer-HMC5883L-driver---Spartan/register_reader_i2c.sch
--Design Name: register_reader_i2c
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity register_reader_i2c is
   port ( Clk        : in    std_logic; 
          Reset      : in    std_logic; 
          FIFO_Empty : out   std_logic; 
          FIFO_Full  : out   std_logic; 
          LED        : out   std_logic_vector (7 downto 0); 
          NACK       : out   std_logic; 
          SCL        : inout std_logic; 
          SDA        : inout std_logic);
end register_reader_i2c;

architecture BEHAVIORAL of register_reader_i2c is
   signal XLXN_1     : std_logic;
   signal XLXN_2     : std_logic;
   signal XLXN_3     : std_logic;
   signal XLXN_4     : std_logic_vector (7 downto 0);
   signal XLXN_5     : std_logic_vector (3 downto 0);
   signal XLXN_6     : std_logic_vector (7 downto 0);
   signal XLXN_7     : std_logic_vector (7 downto 0);
   signal XLXN_8     : std_logic;
   component I2C_Master
      port ( Go         : in    std_logic; 
             Address    : in    std_logic_vector (7 downto 0); 
             ReadCnt    : in    std_logic_vector (3 downto 0); 
             SDA        : inout std_logic; 
             SCL        : inout std_logic; 
             FIFO_Pop   : in    std_logic; 
             FIFO_Push  : in    std_logic; 
             FIFO_DI    : in    std_logic_vector (7 downto 0); 
             FIFO_Empty : out   std_logic; 
             FIFO_Full  : out   std_logic; 
             FIFO_DO    : out   std_logic_vector (7 downto 0); 
             Reset      : in    std_logic; 
             Clk        : in    std_logic; 
             Busy       : out   std_logic; 
             NACK       : out   std_logic);
   end component;
   
   component register_reader
      port ( Reset         : in    std_logic; 
             Clk           : in    std_logic; 
             I2C_Busy      : in    std_logic; 
             I2C_FIFO_DO   : in    std_logic_vector (7 downto 0); 
             I2C_Go        : out   std_logic; 
             I2C_FIFO_Pop  : out   std_logic; 
             I2C_FIFO_Push : out   std_logic; 
             I2C_Address   : out   std_logic_vector (7 downto 0); 
             I2C_ReadCnt   : out   std_logic_vector (3 downto 0); 
             I2C_FIFO_DI   : out   std_logic_vector (7 downto 0); 
             LED           : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : I2C_Master
      port map (Address(7 downto 0)=>XLXN_4(7 downto 0),
                Clk=>Clk,
                FIFO_DI(7 downto 0)=>XLXN_6(7 downto 0),
                FIFO_Pop=>XLXN_2,
                FIFO_Push=>XLXN_3,
                Go=>XLXN_1,
                ReadCnt(3 downto 0)=>XLXN_5(3 downto 0),
                Reset=>Reset,
                Busy=>XLXN_8,
                FIFO_DO(7 downto 0)=>XLXN_7(7 downto 0),
                FIFO_Empty=>FIFO_Empty,
                FIFO_Full=>FIFO_Full,
                NACK=>NACK,
                SCL=>SCL,
                SDA=>SDA);
   
   XLXI_2 : register_reader
      port map (Clk=>Clk,
                I2C_Busy=>XLXN_8,
                I2C_FIFO_DO(7 downto 0)=>XLXN_7(7 downto 0),
                Reset=>Reset,
                I2C_Address(7 downto 0)=>XLXN_4(7 downto 0),
                I2C_FIFO_DI(7 downto 0)=>XLXN_6(7 downto 0),
                I2C_FIFO_Pop=>XLXN_2,
                I2C_FIFO_Push=>XLXN_3,
                I2C_Go=>XLXN_1,
                I2C_ReadCnt(3 downto 0)=>XLXN_5(3 downto 0),
                LED(7 downto 0)=>LED(7 downto 0));
   
end BEHAVIORAL;


