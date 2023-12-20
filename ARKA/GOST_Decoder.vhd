library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GOST_Decoder is
    Port ( x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC;
           y4 : out  STD_LOGIC;
           y5 : out  STD_LOGIC;
           y6 : out  STD_LOGIC;
           y7 : out  STD_LOGIC);
end GOST_Decoder;

architecture Behavioral of GOST_Decoder is
	signal x0x1x2 : std_logic_vector(0 to 2);
	signal y0_y7 : std_logic_vector(0 to 7);
begin
	process (x0,x1,x2) is
	begin
		x0x1x2(0) <= x0;
		x0x1x2(1) <= x1;
		x0x1x2(2) <= x2;
	end process;

	process (x0x1x2) is
	begin
		case x0x1x2 is
			when "000" =>
				y0_y7 <= "00000001";
			when "001" =>
				y0_y7 <= "00000010";
			when "010" =>
				y0_y7 <= "00000100";
			when "011" =>
				y0_y7 <= "00001000";
			when "100" =>
				y0_y7 <= "00010000";
			when "101" =>
				y0_y7 <= "00100000";
			when "110" =>
				y0_y7 <= "01000000";
			when "111" =>
				y0_y7 <= "10000000";
			when others =>
				y0_y7 <= (others => '0');
		end case;
	end process;
	
	process (y0_y7) is
	begin
		y0 <= y0_y7(0);
		y1 <= y0_y7(1);
		y2 <= y0_y7(2);
		y3 <= y0_y7(3);
		y4 <= y0_y7(4);
		y5 <= y0_y7(5);
		y6 <= y0_y7(6);
		y7 <= y0_y7(7);
	end process;
end Behavioral;