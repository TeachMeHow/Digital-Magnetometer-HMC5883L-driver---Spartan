-- Vhdl test bench created from schematic /home/imarobot/compas-test/driver_and_emulator.sch - Mon Apr 15 10:22:34 2019
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY driver_and_emulator_driver_and_emulator_sch_tb IS
END driver_and_emulator_driver_and_emulator_sch_tb;
ARCHITECTURE behavioral OF driver_and_emulator_driver_and_emulator_sch_tb IS 

   COMPONENT driver_and_emulator
   PORT( Clock	:	IN	STD_LOGIC; 
          Data	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Address	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Busy	:	OUT	STD_LOGIC; 
          inByte	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0);
			 SDA : out STD_LOGIC;
			 SCL : out STD_LOGIC);
   END COMPONENT;

   SIGNAL Clock	:	STD_LOGIC;
   SIGNAL Data	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Address	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Busy	:	STD_LOGIC;
   SIGNAL inByte	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL SDA : STD_LOGIC;
	SIGNAL SCL : STD_LOGIC;

   constant Clock_period : time := 10 ns;
BEGIN

   UUT: driver_and_emulator PORT MAP(
		Clock => Clock, 
		Data => Data, 
		Address => Address, 
		Busy => Busy, 
		inByte => inByte,
		SDA => SDA,
		SCL => SCL
   );

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
