library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CRC is
    Port ( clk 		: in   STD_LOGIC;
           file_in   : in   STD_LOGIC;
           file_name : in   INTEGER RANGE 0 to 63;
           work_mode : in   INTEGER RANGE 0 to 3;
           out_crc   : out  STD_LOGIC);
end CRC;

architecture Behavioral of CRC is
	COMPONENT RAM
	PORT(
		clk 		: IN  std_logic;
		data_in  : IN  std_logic_vector(0 to 3);
		r_addr   : IN  INTEGER RANGE 0 to 63;
		w_addr   : IN  INTEGER RANGE 0 to 63;
		mode_w   : IN  std_logic;          
		data_out : OUT std_logic_vector(0 to 3)
		);
	END COMPONENT;
	
	signal data_in  : std_logic_vector(0 to 3);
	signal r_addr	 : INTEGER RANGE 0 to 63;
	signal w_addr	 : INTEGER RANGE 0 to 63;
	signal mode_w	 : std_logic;
	signal data_out : std_logic_vector(0 to 3);
	
	signal out_xor 	  : std_logic;
	signal fde0_to_fde1 : std_logic;
	signal fde1_to_fde2 : std_logic;
	signal fde2_to_fde3 : std_logic;
	signal in_lfsr 	  : std_logic;
	signal out_lfsr 	  : std_logic;
	
begin
	Inst_RAM: RAM PORT MAP(
		clk => clk,
		data_in => data_in,
		data_out => data_out,
		r_addr => r_addr,
		w_addr => w_addr,
		mode_w => mode_w
	);

	r_addr <= file_name;
	--crc swithcher
	process (work_mode, file_in, out_xor) is
		variable file_crc : std_logic_vector(0 to 3);
	begin
		case work_mode is
			when 0 =>
				in_lfsr <= file_in;
			when 1 =>
				in_lfsr <= out_xor;
			when 2 =>
				file_crc(0) := fde0_to_fde1;
				file_crc(1) := fde1_to_fde2;
				file_crc(2) := fde2_to_fde3;
				file_crc(3) := out_lfsr;
				
				mode_w <= '1';
				w_addr <= file_name;
				data_in <= file_crc;
			when 3 =>
				file_crc(0) := fde0_to_fde1;
				file_crc(1) := fde1_to_fde2;
				file_crc(2) := fde2_to_fde3;
				file_crc(3) := out_lfsr;
				
				if file_crc = data_out then
					out_crc <= '1';
				else
					out_crc <= '0';
				end if;
		end case;
	end process;
	
	--fde0
	process (clk) is
	begin
		if (clk'event and clk='1') then
			fde0_to_fde1<=in_lfsr;
		end if;
	end process;
	
	--fde1
	process (clk) is
	begin
		if (clk'event and clk='1') then
			fde1_to_fde2<=fde0_to_fde1;
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
	
	--xor
	process (fde0_to_fde1, out_lfsr, file_in) is
	begin
		if (work_mode = 1) then
			out_xor <= (fde0_to_fde1 xor out_lfsr xor file_in);
		end if;
	end process;
end Behavioral;