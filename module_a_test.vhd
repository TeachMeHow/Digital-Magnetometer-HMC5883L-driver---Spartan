--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:10:11 04/13/2019
-- Design Name:   
-- Module Name:   /home/imarobot/compas-test/module_a_test.vhd
-- Project Name:  compas-test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: module_a
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
 
ENTITY module_a_test IS
END module_a_test;
 
ARCHITECTURE behavior OF module_a_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT module_a
    PORT(
         Clock : IN  std_logic;
         Data : IN  std_logic_vector(7 downto 0);
         Address : IN  std_logic_vector(7 downto 0);
         SDA : INOUT  std_logic;
         SCL : INOUT  std_logic;
         Busy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Data : std_logic_vector(7 downto 0) := (others => '0');
   signal Address : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal SDA : std_logic;
   signal SCL : std_logic;

 	--Outputs
   signal Busy : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: module_a PORT MAP (
          Clock => Clock,
          Data => Data,
          Address => Address,
          SDA => SDA,
          SCL => SCL,
          Busy => Busy
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Data <= x"01";
		Address <= x"3c";
      wait;
   end process;

END;
