LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SboxGOSTTb IS
END SboxGOSTTb;
 
ARCHITECTURE behavior OF SboxGOSTTb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SboxGOST
    PORT(
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         x3 : IN  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic;
         y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';
   signal x3 : std_logic := '0';

 	--Outputs
   signal y1 : std_logic;
   signal y2 : std_logic;
   signal y3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: SboxGOST PORT MAP (
          x1 => x1,
          x2 => x2,
          x3 => x3,
          y1 => y1,
          y2 => y2,
          y3 => y3
        );
   -- Stimulus process
   stim_proc: process
   begin		
      x1 <= '0'; x2 <= '0'; x3 <= '0';
		wait for 20 ns;
      x1 <= '0'; x2 <= '0'; x3 <= '1';
		wait for 20 ns;
      x1 <= '0'; x2 <= '1'; x3 <= '0';
		wait for 20 ns;
      x1 <= '0'; x2 <= '1'; x3 <= '1';
		wait for 20 ns;
      x1 <= '1'; x2 <= '0'; x3 <= '0';
		wait for 20 ns;
      x1 <= '1'; x2 <= '0'; x3 <= '1';
		wait for 20 ns;
      x1 <= '1'; x2 <= '1'; x3 <= '0';
		wait for 20 ns;
      x1 <= '1'; x2 <= '1'; x3 <= '1';
		wait for 20 ns;
   end process;
END;