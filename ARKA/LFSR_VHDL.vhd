library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LFSR_VHDL is
    Port ( lfsr_init : in  STD_LOGIC;
           is_init   : in  STD_LOGIC;
           clk       : in  STD_LOGIC;
           data_in   : in  STD_LOGIC;
           data_out  : out  STD_LOGIC);
end LFSR_VHDL;

architecture Behavioral of LFSR_VHDL is
	signal out_m2       : std_logic;
	signal out_xor      : std_logic;
	signal fde1_to_fde2 : std_logic;
	signal fde2_to_fde3 : std_logic;
	signal out_lfsr     : std_logic;
begin
	--m2_1
	process (is_init, lfsr_init, out_xor) is
	begin
		if is_init='0' then out_m2<=out_xor;
		else out_m2<=lfsr_init;
		end if;
	end process;

	--fde1
	process (clk) is
	begin
		if (clk'event and clk='1') then
			fde1_to_fde2<=out_m2;
		end if;
	end process;

	--fde2
	process (clk) is
	begin
		if (clk'event and clk='1') then
			fde2_to_fde3<=fde1_to_fde2;
		end if;
	end process;

	--fde3
	process (clk) is
	begin
		if (clk'event and clk='1') then
			out_lfsr<=fde2_to_fde3;
		end if;
	end process;
	
	--xor lfsr
	process (fde1_to_fde2, out_lfsr) is
	begin
		out_xor<=(fde1_to_fde2 xor out_lfsr);
	end process;

	--xor data
	process (data_in, out_lfsr) is
	begin
		data_out<=(data_in xor out_lfsr);
	end process;

end Behavioral;