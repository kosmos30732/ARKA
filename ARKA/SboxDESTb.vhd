LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SboxDESTb IS
END SboxDESTb;
 
ARCHITECTURE behavior OF SboxDESTb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SboxDES
    PORT(
         c : IN  std_logic;
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal c : std_logic := '0';
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';

 	--Outputs
   signal y1 : std_logic;
   signal y2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SboxDES PORT MAP (
          c => c,
          x1 => x1,
          x2 => x2,
          y1 => y1,
          y2 => y2
        );
   -- Stimulus process
   stim_proc: process
   begin		
      c <= '0'; x1 <= '0'; x2 <= '0';
		wait for 20 ns;
      c <= '0'; x1 <= '0'; x2 <= '1';
		wait for 20 ns;
      c <= '0'; x1 <= '1'; x2 <= '0';
		wait for 20 ns;
      c <= '0'; x1 <= '1'; x2 <= '1';
		wait for 20 ns;
      c <= '1'; x1 <= '0'; x2 <= '0';
		wait for 20 ns;
      c <= '1'; x1 <= '0'; x2 <= '1';
		wait for 20 ns;
      c <= '1'; x1 <= '1'; x2 <= '0';
		wait for 20 ns;
      c <= '1'; x1 <= '1'; x2 <= '1';
		wait for 20 ns;
   end process;
END;