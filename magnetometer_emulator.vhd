----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:08 04/14/2019 
-- Design Name: 
-- Module Name:    magnetometer_emulator - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity magnetometer_emulator is
    Port ( SDA : in  STD_LOGIC;
           SCL : in  STD_LOGIC;
			  inByte: out STD_LOGIC_VECTOR(7 downto 0)
--			  ;test : out STD_LOGIC
			  );
end magnetometer_emulator;

architecture Behavioral of magnetometer_emulator is
type stateType is (sIdle, sRec, sAck, sWri);
type bitState is (sBitStart, sBitEnd);
signal presBitState: bitState;
signal startBit, endBit : std_logic;
signal presState: stateType := sIdle;
signal bitCounter: integer;
signal byte: std_logic_vector(7 downto 0);
begin

-- change present state according to needs
process(SDA, SCL)
begin
	if SCL = 'H' or SCL = 'L' then
		if falling_edge(SDA) then
			bitCounter <= 0;
			presState <= sRec;
		elsif rising_edge(SDA) then
			presState <= sIdle;
		end if;
	end if;
	
	if falling_edge(SCL) and presState = sRec then
		bitCounter <= bitCounter + 1;
	end if;
	-- enter and exit sAck state
	if falling_edge(SCL) and presState = sRec and bitCounter = 8 then
		-- acknowledge NACK = 0;
		--SDA <= '0';
		presState <= sAck;
		bitCounter <= 0;
		inByte <= byte;
	end if;
	if rising_edge(SCL) and presState = sAck then
		presState <= sRec;
	end if;
end process;

process(SCL)
begin
	if presState = sRec then
		if rising_edge(SCL) then
			if startBit = endBit then
				byte <= byte(6 downto 0) & startBit;
			end if;
			presBitState <= sBitStart;
		elsif falling_edge(SCL) then
			presBitState <= sBitEnd;		
		end if;
	end if;
end process;
                                             
process(presBitState)
begin
	if presBitState = sBitStart then
		if SDA = '1' or SDA = 'H' then
			startBit <= '1';
		else
			startBit <= '0';
		end if;
	elsif presBitState = sBitEnd then
		if SDA = '1' or SDA = 'H' then
			endBit <= '1';
		else
			endBit <= '0';
		end if;

	end if;
end process;

		
	


end Behavioral;

