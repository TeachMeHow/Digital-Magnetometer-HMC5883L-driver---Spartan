--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:59:34 04/05/2019
-- Design Name:   
-- Module Name:   /home/imarobot/compas-test/x.vhd
-- Project Name:  compas-test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: I2C_Master
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY x IS
END x;
 
ARCHITECTURE behavior OF x IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT I2C_Master
    PORT(
         SDA : INOUT  std_logic;
         SCL : INOUT  std_logic;
         Clk : IN  std_logic;
         NACK : OUT  std_logic;
         FIFO_Pop : IN  std_logic;
         Reset : IN  std_logic;
         Go : IN  std_logic;
         Busy : OUT  std_logic;
         FIFO_Empty : OUT  std_logic;
         FIFO_Push : IN  std_logic;
         FIFO_Full : OUT  std_logic;
         FIFO_DO : OUT  std_logic_vector(7 downto 0);
         Address : IN  std_logic_vector(7 downto 0);
         FIFO_DI : IN  std_logic_vector(7 downto 0);
         ReadCnt : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal FIFO_Pop : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Go : std_logic := '0';
   signal FIFO_Push : std_logic := '0';
   signal Address : std_logic_vector(7 downto 0) := (others => '0');
   signal FIFO_DI : std_logic_vector(7 downto 0) := (others => '0');
   signal ReadCnt : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal SDA : std_logic;
   signal SCL : std_logic;

 	--Outputs
   signal NACK : std_logic;
   signal Busy : std_logic;
   signal FIFO_Empty : std_logic;
   signal FIFO_Full : std_logic;
   signal FIFO_DO : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: I2C_Master PORT MAP (
          SDA => SDA,
          SCL => SCL,
          Clk => Clk,
          NACK => NACK,
          FIFO_Pop => FIFO_Pop,
          Reset => Reset,
          Go => Go,
          Busy => Busy,
          FIFO_Empty => FIFO_Empty,
          FIFO_Push => FIFO_Push,
          FIFO_Full => FIFO_Full,
          FIFO_DO => FIFO_DO,
          Address => Address,
          FIFO_DI => FIFO_DI,
          ReadCnt => ReadCnt
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
