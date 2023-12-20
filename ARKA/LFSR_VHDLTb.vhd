LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LFSR_VHDLTb IS
END LFSR_VHDLTb;
 
ARCHITECTURE behavior OF LFSR_VHDLTb IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT LFSR_VHDL
    PORT(
         lfsr_init : IN  std_logic;
         is_init   : IN  std_logic;
         clk       : IN  std_logic;
         data_in   : IN  std_logic;
         data_out  : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal lfsr_init : std_logic;
   signal is_init   : std_logic;
   signal clk       : std_logic :='1';
   signal data_in   : std_logic;

 	--Outputs
   signal data_out  : std_logic;

   -- Clock period definitions
	constant clockfrequency	: integer := 100e6; -- 100 MHz
	constant clockperiod		: time    := 1000 ms / clockfrequency;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LFSR_VHDL PORT MAP (
          lfsr_init => lfsr_init,
          is_init => is_init,
          clk => clk,
          data_in => data_in,
          data_out => data_out
        );
		  
	clk <= not clk after clockperiod / 2;
	
   -- Stimulus process
   stim_proc: process
   begin		
		is_init <= '1';
		lfsr_init <= '1';
		wait for 10 ns;
		lfsr_init <= '0';
		wait for 10 ns;
		lfsr_init <= '1';
		wait for 10 ns;
		is_init <= '0';
		data_in <= '0';
      wait;
   end process;
END;