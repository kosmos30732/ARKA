library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GOST_Coder is
    Port ( y0 : in  STD_LOGIC;
           y1 : in  STD_LOGIC;
           y2 : in  STD_LOGIC;
           y3 : in  STD_LOGIC;
           y4 : in  STD_LOGIC;
           y5 : in  STD_LOGIC;
           y6 : in  STD_LOGIC;
           y7 : in  STD_LOGIC;
           x0 : out  STD_LOGIC;
           x1 : out  STD_LOGIC;
           x2 : out  STD_LOGIC);
end GOST_Coder;

architecture Behavioral of GOST_Coder is
	signal x0x1x2 : std_logic_vector(0 to 2);
	signal y0_y7 : std_logic_vector(0 to 7);
begin
	process (y0,y1,y2,y3,y4,y5,y6,y7) is
	begin
		y0_y7(0) <= y0;
		y0_y7(1) <= y1;
		y0_y7(2) <= y2;
		y0_y7(3) <= y3;
		y0_y7(4) <= y4;
		y0_y7(5) <= y5;
		y0_y7(6) <= y6;
		y0_y7(7) <= y7;
	end process;
	
	process (y0_y7) is
	begin
		case y0_y7 is
			when "00000001" =>
				x0x1x2 <= "000";
			when "00000010" =>
				x0x1x2 <= "001";
			when "00000100" =>
				x0x1x2 <= "010";
			when "00001000" =>
				x0x1x2 <= "011";
			when "00010000" =>
				x0x1x2 <= "100";
			when "00100000" =>
				x0x1x2 <= "101";
			when "01000000" =>
				x0x1x2 <= "110";
			when "10000000" =>
				x0x1x2 <= "111";
			when others =>
				x0x1x2 <= (others => '0');
		end case;
	end process;
	
	process (x0x1x2) is
	begin
		x0 <= x0x1x2(0);
		x1 <= x0x1x2(1);
		x2 <= x0x1x2(2);
	end process;
end Behavioral;