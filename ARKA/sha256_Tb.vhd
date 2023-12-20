LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sha256_Tb IS
END sha256_Tb;
 
ARCHITECTURE behavior OF sha256_Tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sha256
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         ready : OUT  std_logic;
         update : IN  std_logic;
         word_input : IN  std_logic_vector(7 downto 0);
         hash_output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';
   signal update : std_logic := '0';
   signal word_input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ready : std_logic;
   signal hash_output : std_logic_vector(15 downto 0);

   -- Clock period definitions
	signal clk : std_logic;
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sha256 PORT MAP (
          clk => clk,
          reset => reset,
          enable => enable,
          ready => ready,
          update => update,
          word_input => word_input,
          hash_output => hash_output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      wait for clk_period * 2;
		
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period;
		
		enable <= '1';
		update <= '1';
		word_input <= x"13";
		wait until ready = '1';
		word_input <= x"43";
		wait until ready = '1';
		word_input <= x"ab";
		wait until ready = '1';
		word_input <= x"bc";
		wait until ready = '1';
		update <= '0';
		enable <= '0';
		wait;
   end process;
END;