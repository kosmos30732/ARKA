library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SboxGOST is
    Port ( x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC);
end SboxGOST;

architecture Behavioral of SboxGOST is
	signal x1x2x3 : std_logic_vector(0 to 2);
	signal y1y2y3 : std_logic_vector(0 to 2);
	signal midle : std_logic_vector(0 to 7);
begin
	process (x1,x2,x3) is
	begin
		x1x2x3(0) <= x1;
		x1x2x3(1) <= x2;
		x1x2x3(2) <= x3;
	end process;

	process (x1x2x3) is
	begin
		case x1x2x3 is
			when "000" =>
				midle <= "00000001";
			when "001" =>
				midle <= "00000010";
			when "010" =>
				midle <= "00000100";
			when "011" =>
				midle <= "00001000";
			when "100" =>
				midle <= "00010000";
			when "101" =>
				midle <= "00100000";
			when "110" =>
				midle <= "01000000";
			when "111" =>
				midle <= "10000000";
			when others =>
				midle <= (others => '0');
		end case;
	end process;
	
	process (midle) is
	begin
		case midle is
			when "00000001" =>
				y1y2y3 <= "111";
			when "00000010" =>
				y1y2y3 <= "101";
			when "00000100" =>
				y1y2y3 <= "011";
			when "00001000" =>
				y1y2y3 <= "001";
			when "00010000" =>
				y1y2y3 <= "000";
			when "00100000" =>
				y1y2y3 <= "010";
			when "01000000" =>
				y1y2y3 <= "100";
			when "10000000" =>
				y1y2y3 <= "110";
			when others =>
				y1y2y3 <= (others => '0');
		end case;
	end process;
	
	process (y1y2y3) is
	begin
		y1 <= y1y2y3(0);
		y2 <= y1y2y3(1);
		y3 <= y1y2y3(2);
	end process;
end Behavioral;