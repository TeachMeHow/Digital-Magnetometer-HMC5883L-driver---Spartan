----------------------------------------------
-- Modul odczytujacy jeden bajt
-- z pierwszego rejestru zawierajacego UUID(?)
-- magnetometru
----------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

----------------------------------------------
-- Porty zaczynajace sie na I2C_
-- powinny zostac podpiete do I2C_Master
----------------------------------------------
entity register_reader is
	port( I2C_Go : out STD_LOGIC;
			I2C_Address :out STD_LOGIC_VECTOR (7 downto 0);
			I2C_ReadCnt : out STD_LOGIC_VECTOR (3 downto 0);
			I2C_FIFO_Pop : out STD_LOGIC;
			I2C_FIFO_Push : out STD_LOGIC;
			I2C_FIFO_DI : out STD_LOGIC_VECTOR (7 downto 0);
			Reset : in STD_LOGIC;
			Clk : in STD_LOGIC;
			I2C_FIFO_DO : in STD_LOGIC_VECTOR (7 downto 0);
			I2C_Busy : in STD_LOGIC;
			LED : out STD_LOGIC_VECTOR(7 downto 0));
			
end register_reader;

architecture Behavioral of register_reader is

   type t_state is ( sReset, sPush, sGo1, sWait1,
                     sGo2, sWait2, sEnd
                     );
   signal state, next_state : t_state;

begin
	
	-- Proces odpowiedzialny za resetowanie modulu
	-- oraz zmiane stanu modulu
	process( Clk )
   begin
      if rising_edge( Clk ) then
         if Reset = '1' then
            state <= sReset;
         else
            state <= next_state;
         end if;
      end if;
   end process;

	-- Proces odpowiedzialny za ustalenie nastepnego stanu
	-- Na podstawie stanu biezacego
   process(state, I2C_Busy)
   begin
      next_state <= state;  -- domyslne zachowanie

      case state is

         when sReset =>
            next_state <= sPush;
         when sPush =>
            next_state <= sGo1;
         when sGo1 => 
            next_state <= sWait1;
         when sWait1 =>
            if I2C_Busy = '0' then 
               next_state <= sGo2;
            end if;
         when sGo2 =>
            next_state <= sWait2;
         when sWait2 =>
            if I2C_Busy = '0' then 
               next_state <= sEnd;
            end if;
			when sEnd =>
				next_state	<= sEnd;

      end case;
   end process;
	
	-- Ustalenie wartosci sygnalow na wyjsciu na podstawie
	-- aktualnego stanu modulu
	I2C_Go <= '1' when (state = sGo1 or state = sGo2) else '0';
	I2C_Address <= X"3c" when state = sGo1 else
						X"3d" when state = sGo2 else
						X"00";
	I2C_ReadCnt <= X"1" when state = sGo2 else X"0";
	I2C_FIFO_Push <= '1' when state = sPush else '0';
	I2C_FIFO_DI <= X"0A" when state = sPush else X"00";
	LED <= I2C_FIFO_DO when state = sEnd else X"00";
end Behavioral;