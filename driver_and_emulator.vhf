--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : driver_and_emulator.vhf
-- /___/   /\     Timestamp : 04/15/2019 11:03:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/imarobot/compas-test/driver_and_emulator.vhf -w /home/imarobot/compas-test/driver_and_emulator.sch
--Design Name: driver_and_emulator
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

entity driver_and_emulator is
   port ( Address : in    std_logic_vector (7 downto 0); 
          Clock   : in    std_logic; 
          Data    : in    std_logic_vector (7 downto 0); 
          Busy    : out   std_logic; 
          inByte  : out   std_logic_vector (7 downto 0); 
          SCL     : out   std_logic; 
          SDA     : out   std_logic);
end driver_and_emulator;

architecture BEHAVIORAL of driver_and_emulator is
   signal SCL_DUMMY : std_logic;
   signal SDA_DUMMY : std_logic;
   component module_a
      port ( Clock   : in    std_logic; 
             Data    : in    std_logic_vector (7 downto 0); 
             Address : in    std_logic_vector (7 downto 0); 
             SDA     : out   std_logic; 
             SCL     : out   std_logic; 
             Busy    : out   std_logic);
   end component;
   
   component magnetometer_emulator
      port ( SDA    : in    std_logic; 
             SCL    : in    std_logic; 
             inByte : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   SCL <= SCL_DUMMY;
   SDA <= SDA_DUMMY;
   XLXI_2 : module_a
      port map (Address(7 downto 0)=>Address(7 downto 0),
                Clock=>Clock,
                Data(7 downto 0)=>Data(7 downto 0),
                Busy=>Busy,
                SCL=>SCL_DUMMY,
                SDA=>SDA_DUMMY);
   
   XLXI_3 : magnetometer_emulator
      port map (SCL=>SCL_DUMMY,
                SDA=>SDA_DUMMY,
                inByte(7 downto 0)=>inByte(7 downto 0));
   
end BEHAVIORAL;


