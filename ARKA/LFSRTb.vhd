LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY LFSR_LFSR_sch_tb IS
END LFSR_LFSR_sch_tb;
ARCHITECTURE behavioral OF LFSR_LFSR_sch_tb IS 

   COMPONENT LFSR
   PORT( lfsr_init	:	IN	STD_LOGIC; 
          is_init	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          clk_enable	:	IN	STD_LOGIC; 
          lfsr_out	:	OUT	STD_LOGIC; 
          data_in	:	IN	STD_LOGIC; 
          data_out	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL lfsr_init	:	STD_LOGIC;
   SIGNAL is_init	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC:= '1';
   SIGNAL clk_enable	:	STD_LOGIC;
   SIGNAL lfsr_out	:	STD_LOGIC;
   SIGNAL data_in	:	STD_LOGIC;
   SIGNAL data_out	:	STD_LOGIC;

	constant clockfrequency	: integer := 100e6; -- 100 MHz
	constant clockperiod		: time    := 1000 ms / clockfrequency;

BEGIN

   UUT: LFSR PORT MAP(
		lfsr_init => lfsr_init, 
		is_init => is_init, 
		clk => clk, 
		clk_enable => clk_enable, 
		lfsr_out => lfsr_out, 
		data_in => data_in, 
		data_out => data_out
   );
	
	clk <= not clk after clockperiod / 2;

   tb : PROCESS
   BEGIN
		clk_enable <= '1';
		is_init <= '1';
		lfsr_init <= '1';
		wait for 10 ns;
		lfsr_init <= '0';
		wait for 10 ns;
		lfsr_init <= '1';
		wait for 10 ns;
		is_init <= '0';
		data_in <= '0';
      WAIT;
   END PROCESS;
END;