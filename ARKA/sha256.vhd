library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.sha256_types.all;
use work.sha256_constants.all;
use work.sha256_functions.all;

entity sha256 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
			  
           ready : out  STD_LOGIC;
			  update : in STD_LOGIC;
			  
           word_input : in  STD_LOGIC_VECTOR (7 downto 0);
           hash_output : out  STD_LOGIC_VECTOR (15 downto 0)
			 );
end sha256;

architecture Behavioral of sha256 is
	-- The module's state machine:
	type state_type is (IDLE, BUSY, FINAL);
	signal state : state_type;
	
	signal cur_w : std_logic_vector(7 downto 0);
	
	-- Final hash values:
	signal h0, h1 : std_logic_vector(7 downto 0);

	-- Intermediate hash values:
	signal a, b : std_logic_vector(7 downto 0);

	-- Current iteration:
	signal current_iteration : std_logic_vector(2 downto 0);
begin
	hash_output <= h0 & h1;
	ready <= '1' when state = IDLE else '0';
	
	hasher: process(clk, reset, enable)
	begin
		if reset = '1' then
			reset_intermediate(h0, h1);
			current_iteration <= (others => '0');
			state <= IDLE;
		elsif (clk'event and clk='1' and enable = '1') then
			case state is
				when IDLE =>
					if update = '1' then
						a <= h0;
						b <= h1;
						cur_w <= word_input;
						current_iteration <= (others => '0');
						state <= BUSY;
					end if;
				when BUSY =>
					compress(a, b,
						cur_w,
						constants(index(current_iteration))
						);
					
					if current_iteration = b"111" then
						state <= FINAL;
					else
						current_iteration <= std_logic_vector(unsigned(current_iteration) + 1);
					end if;
				when FINAL =>
					h0 <= std_logic_vector(unsigned(a) + unsigned(h0));
					h1 <= std_logic_vector(unsigned(b) + unsigned(h1));
					state <= IDLE;
			end case;
		end if;
	end process hasher;

end Behavioral;