library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (0 to 3);
           data_out : out  STD_LOGIC_VECTOR (0 to 3);
           r_addr : in  INTEGER RANGE 0 to 63;
           w_addr : in  INTEGER RANGE 0 to 63;
           mode_w : in  STD_LOGIC);
end RAM;

architecture Behavioral of RAM is
	type mem is array (0 to 63) of STD_LOGIC_VECTOR (0 to 3);
	signal mem_block : mem;
begin
	process (clk) is
	begin
		if (clk'event and clk='1') then
			if (mode_w = '1') then
				mem_block(w_addr) <= data_in;
			end if;
			data_out <= mem_block(r_addr);
		end if;
	end process;
end Behavioral;