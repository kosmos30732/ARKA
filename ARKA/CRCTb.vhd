LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CRCTb IS
END CRCTb;
 
ARCHITECTURE behavior OF CRCTb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CRC
    PORT(
         clk 		 : IN  std_logic;
         file_in   : IN  std_logic;
         file_name : IN  INTEGER RANGE 0 to 63;
         work_mode : IN  INTEGER RANGE 0 to 3;
         out_crc   : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk 		  : std_logic := '1';
   signal file_in   : std_logic;
   signal file_name : INTEGER RANGE 0 to 63;
   signal work_mode : INTEGER RANGE 0 to 3;

 	--Outputs
   signal out_crc : std_logic;

	constant clockfrequency	: integer := 100e6; -- 100 MHz
	constant clockperiod		: time    := 1000 ms / clockfrequency;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CRC PORT MAP (
          clk => clk,
          file_in => file_in,
          file_name => file_name,
          work_mode => work_mode,
          out_crc => out_crc
        );

   -- Clock process definitions
	clk <= not clk after clockperiod / 2;

   -- Stimulus process
   stim_proc: process
   begin		
      --init
		work_mode <= 0;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		
		--crc 0 file 11001
		file_name <= 0;
		work_mode <= 1;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		
		--save crc 0 file
		work_mode <= 2;
		wait for 50 ns;
		
		--init
		work_mode <= 0;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		
		work_mode <= 1;
		--crc 1 file 11001
		file_in <= '1';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		
		--check 0 and 1
		work_mode <= 3;
		wait for 50 ns;
		
		--init
		work_mode <= 0;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;
		
		work_mode <= 1;
		--crc 2 file 10001
		file_in <= '1';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '0';
		wait for 10 ns;
		file_in <= '1';
		wait for 10 ns;


		--check 0 and 2
		work_mode <= 3;
		wait for 50 ns;

   end process;
END;