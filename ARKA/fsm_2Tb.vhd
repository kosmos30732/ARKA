--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:18:46 12/20/2023
-- Design Name:   
-- Module Name:   C:/ff/S_box_gost/fsm_2Tb.vhd
-- Project Name:  S_box_gost
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fsm_2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fsm_2Tb IS
END fsm_2Tb;
 
ARCHITECTURE behavior OF fsm_2Tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm_2
    PORT(
         clk : IN  std_logic;
         x : IN  std_logic;
         enable : IN  std_logic;
         y : OUT  std_logic;
         data_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '1';
   signal x : std_logic;
   signal enable : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   signal data_out : std_logic;

   -- Clock period definitions
  	constant ClockFrequency	: integer := 100e6; -- 100 MHz
	constant ClockPeriod		: time    := 1000 ms / ClockFrequency;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm_2 PORT MAP (
          clk => clk,
          x => x,
          enable => enable,
          y => y,
          data_out => data_out
        );
		  
	clk <= not clk after ClockPeriod / 2;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		enable <= '1';
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
		wait for 10 ns;
		enable <='0';
      wait;
   end process;
END;