library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_1 is
    Port ( clk 	: in  STD_LOGIC;
			  start_state : in  integer range 1 to 4;
           reset 	: in  STD_LOGIC;
           x 		: in  STD_LOGIC;
           y 		: out  STD_LOGIC);
end fsm_1;

architecture Behavioral of fsm_1 is
	type state_type is (s1, s2, s3, s4);
	signal state: state_type;
begin
	process(clk, reset) is
	begin
		if (reset='1') then 
			case start_state is
				when 1 =>
					state <= s1;
				when 2 =>
					state <= s2;
				when 3 =>
					state <= s3;
				when 4 =>
					state <= s4;
			end case;
		elsif rising_edge(clk) then
			case state is
				when s1 => 
					if x='0' then
						state <= s2; y <= '1';
					elsif x='1' then
						state <= s4; y <= '0';
					end if;
				when s2 => 
					if x='0' then
						state <= s4; y <= '0';
					elsif x='1' then
						state <= s3; y <= '1';
					end if;
				when s3 => 
					if x='0' then
						state <= s4; y <= '1';
					elsif x='1' then
						state <= s2; y <= '0';
					end if;
				when s4 => 
					if x='0' then
						state <= s3; y <= '0';
					elsif x='1' then
						state <= s1; y <= '0';
					end if;
			end case;
		end if;
	end process;
end Behavioral;