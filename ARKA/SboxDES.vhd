library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SboxDES is
    Port ( c : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC);
end SboxDES;

architecture Behavioral of SboxDES is

begin
	y1 <= ((not c) and x2) or (c and (not x1) and x2) or (c and x1 and (not x2));
	y2 <= ((not c) and (not x1)) or (c and x2);
end Behavioral;