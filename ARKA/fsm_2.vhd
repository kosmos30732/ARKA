library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_2 is
    Port ( clk 	: in  STD_LOGIC;
           x 		: in  STD_LOGIC;
			  enable : in  STD_LOGIC;
           y 		: out STD_LOGIC;
			  data_out : out STD_LOGIC);
end fsm_2;
architecture Behavioral of fsm_2 is
	type state_type is (s1, s2, s3, s4);
	signal state: state_type;
	signal f_0 : state_type;
	signal f_1 : state_type;
	signal y_0 : STD_LOGIC;
	signal y_1 : STD_LOGIC;
begin
	--func 0
	process(clk) is
	begin
		if (rising_edge(clk) and enable='1') then
			case state is
				when s1 =>
					if x='0' then
						f_0 <= s2; y_0 <= '1';
					elsif x='1' then
						f_0 <= s4; y_0 <= '0';
					end if;
				when s2 =>
					if x='0' then
						f_0 <= s3; y_0 <= '1';
					elsif x='1' then
						f_0 <= s3; y_0 <= '1';
					end if;
				when s3 =>
					if x='0' then
						f_0 <= s4; y_0 <= '0';
					elsif x='1' then
						f_0 <= s2; y_0 <= '0';
					end if;
				when s4 =>
					if x='0' then
						f_0 <= s1; y_0 <= '1';
					elsif x='1' then
						f_0 <= s1; y_0 <= '0';
					end if;
			end case;
		end if;
	end process;

	--func 1
	process(clk) is
	begin
		if (rising_edge(clk) and enable='1') then
			case state is
				when s1 =>
					if x='0' then
						f_1 <= s2; y_1 <= '1';
					elsif x='1' then
						f_1 <= s4; y_1 <= '0';
					end if;
				when s2 =>
					if x='0' then
						f_1 <= s4; y_1 <= '0';
					elsif x='1' then
						f_1 <= s1; y_1 <= '1';
					end if;
				when s3 =>
					if x='0' then
						f_1 <= s4; y_1 <= '1';
					elsif x='1' then
						f_1 <= s2; y_1 <= '0';
					end if;
				when s4 =>
					if x='0' then
						f_1 <= s3; y_1 <= '0';
					elsif x='1' then
						f_1 <= s3; y_1 <= '1';
					end if;
			end case;
		end if;
	end process;
	
	process(f_0, f_1) is
	begin
		if (enable='1') then
			case state is
				when s1 =>
					if x='0' then
						state <= f_0; y <= y_0; data_out<= x xor y_0;
					elsif x='1' then
						state <= f_0; y <= y_0; data_out<= x xor y_0;
					end if;
				when s2 =>
					if x='0' then
						state <= f_1; y <= y_1; data_out<= x xor y_1;
					elsif x='1' then
						state <= f_0; y <= y_0; data_out<= x xor y_0;
					end if;
				when s3 =>
					if x='0' then
						state <= f_1; y <= y_1; data_out<= x xor y_1;
					elsif x='1' then
						state <= f_1; y <= y_1; data_out<= x xor y_1;
					end if;
				when s4 =>
					if x='0' then
						state <= f_1; y <= y_1; data_out<= x xor y_1;
					elsif x='1' then
						state <= f_0; y <= y_0; data_out<= x xor y_0;
					end if;
			end case;
		else
			state <= s1;
		end if;
	end process;
end Behavioral;