LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fsmTb IS
END fsmTb;
 
ARCHITECTURE behavior OF fsmTb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm_1
    PORT(
         clk : IN  std_logic;
			start_state : in  integer range 1 to 4;
         reset : IN  std_logic;
         x : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '1';
   signal reset : std_logic := '0';
   signal x : std_logic;
	signal start_state : integer range 1 to 4;

 	--Outputs
   signal y : std_logic;

  	constant ClockFrequency	: integer := 100e6; -- 100 MHz
	constant ClockPeriod		: time    := 1000 ms / ClockFrequency;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm_1 PORT MAP (
          clk => clk,
			 start_state => start_state,
          reset => reset,
          x => x,
          y => y
        );

	clk <= not clk after ClockPeriod / 2;
   
	process
   begin
		--out: 11000100
		x<='U';
		start_state <= 1;
		reset <='1';
		wait for 10 ns;
		reset <='0';
		x<='0'; 			
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='1';
		wait for 20 ns;
		
		
		x<='U';
		start_state <= 3;
		reset <='1';
		wait for 10 ns;
		
		--out: 0001110100
		reset <='0';
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='0';
		wait for 10 ns;
		x<='1';
		wait for 10 ns;
		x<='1';
		wait;
   end process;
END;