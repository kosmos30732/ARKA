LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY SboxDESsch_SboxDESsch_sch_tb IS
END SboxDESsch_SboxDESsch_sch_tb;
ARCHITECTURE behavioral OF SboxDESsch_SboxDESsch_sch_tb IS 

   COMPONENT SboxDESsch
   PORT( in_c	:	IN	STD_LOGIC; 
          in_x1	:	IN	STD_LOGIC; 
          in_x2	:	IN	STD_LOGIC; 
          out_y1	:	OUT	STD_LOGIC; 
          out_y2	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL in_c	:	STD_LOGIC;
   SIGNAL in_x1	:	STD_LOGIC;
   SIGNAL in_x2	:	STD_LOGIC;
   SIGNAL out_y1	:	STD_LOGIC;
   SIGNAL out_y2	:	STD_LOGIC;

BEGIN

   UUT: SboxDESsch PORT MAP(
		in_c => in_c, 
		in_x1 => in_x1, 
		in_x2 => in_x2, 
		out_y1 => out_y1, 
		out_y2 => out_y2
   );

   tb : PROCESS
   BEGIN
      in_c <= '0'; in_x1 <= '0'; in_x2 <= '0';
		wait for 20 ns;
      in_c <= '0'; in_x1 <= '0'; in_x2 <= '1';
		wait for 20 ns;
      in_c <= '0'; in_x1 <= '1'; in_x2 <= '0';
		wait for 20 ns;
      in_c <= '0'; in_x1 <= '1'; in_x2 <= '1';
		wait for 20 ns;
      in_c <= '1'; in_x1 <= '0'; in_x2 <= '0';
		wait for 20 ns;
      in_c <= '1'; in_x1 <= '0'; in_x2 <= '1';
		wait for 20 ns;
      in_c <= '1'; in_x1 <= '1'; in_x2 <= '0';
		wait for 20 ns;
      in_c <= '1'; in_x1 <= '1'; in_x2 <= '1';
		wait for 20 ns;
   END PROCESS;
END;