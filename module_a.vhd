----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:04 04/13/2019 
-- Design Name: 
-- Module Name:    module_a - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module_a is
    Port ( Clock : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (7 downto 0);
           Address : in  STD_LOGIC_VECTOR (7 downto 0);
           SDA : inout  STD_LOGIC;
           SCL : inout  STD_LOGIC;
           Busy : out  STD_LOGIC);
end module_a;

architecture Behavioral of module_a is
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
	 
	 constant reset_period : integer := 20;
	 type stateType is (sSetup, sReset, sRead, sWrite);
	 signal reset_clk_counter : integer := reset_period;
	 signal presState : stateType := sSetup;
	 signal iNACK, iFIFO_Pop, iReset, iGo, iFIFO_Empty, iFIFO_Push, iFIFO_Full : std_logic;
	 signal iFIFO_DO: std_logic_vector(7 downto 0);
	 signal iReadCnt : std_logic_vector(3 downto 0);
	 
begin
	i2c: I2C_Master
		PORT MAP (
		SDA => SDA,
		SCL => SCL,
		Clk => Clock,
		NACK => iNACK,
		FIFO_Pop => iFIFO_Pop,
		Reset => iReset,
		Go => iGo,
		Busy => Busy,
		FIFO_Empty => iFIFO_Empty,
		FIFO_Push => iFIFO_Push,
		FIFO_Full => iFIFO_Full,
		FIFO_DO => iFIFO_DO,
		Address => Address,
		FIFO_DI => Data,
		ReadCnt => iReadCnt
		);
		
		process(Clock)
		begin
			if rising_edge(Clock) then
				if presState = sSetup then
					SDA <= 'H';
					SCL <= 'H';
					presState <= sReset;
				elsif presState = sReset then
					reset_clk_counter <= reset_clk_counter - 1;
					if reset_clk_counter = 0 then
						presState <= sRead;
					end if;
				elsif presState = sRead then
					iFIFO_Push <= '1'; 
					presState <= sWrite;
				elsif presState = sWrite then
					iFIFO_Push <= '0';
					iGo <= '1';
				end if;
			end if;
		end process;
		
		iReset <= '1' when presState = sReset else '0';
	
		
	
		

end Behavioral;

