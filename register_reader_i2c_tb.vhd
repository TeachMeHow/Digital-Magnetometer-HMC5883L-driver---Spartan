-- Vhdl test bench created from schematic /home/sergio/Xilinx/Digital-Magnetometer-HMC5883L-driver---Spartan/register_reader_i2c.sch - Sat Apr 13 19:49:52 2019
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
ENTITY register_reader_i2c_register_reader_i2c_sch_tb IS
END register_reader_i2c_register_reader_i2c_sch_tb;
ARCHITECTURE behavioral OF register_reader_i2c_register_reader_i2c_sch_tb IS 

   COMPONENT register_reader_i2c
   PORT( Clk	:	IN	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          SDA	:	INOUT	STD_LOGIC; 
          SCL	:	INOUT	STD_LOGIC; 
          FIFO_Empty	:	OUT	STD_LOGIC; 
          FIFO_Full	:	OUT	STD_LOGIC; 
          NACK	:	OUT	STD_LOGIC; 
          LED	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL SDA	:	STD_LOGIC;
   SIGNAL SCL	:	STD_LOGIC;
   SIGNAL FIFO_Empty	:	STD_LOGIC;
   SIGNAL FIFO_Full	:	STD_LOGIC;
   SIGNAL NACK	:	STD_LOGIC;
   SIGNAL LED	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: register_reader_i2c PORT MAP(
		Clk => Clk, 
		Reset => Reset, 
		SDA => SDA, 
		SCL => SCL, 
		FIFO_Empty => FIFO_Empty, 
		FIFO_Full => FIFO_Full, 
		NACK => NACK, 
		LED => LED
   );

	Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		SDA <= 'H';
		SCL <= 'H';
      Reset <= '1';
      wait for 100 ns;	
		Reset <= '0';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
