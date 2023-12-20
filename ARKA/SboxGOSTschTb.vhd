LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY SboxGOSTsch_SboxGOSTsch_sch_tb IS
END SboxGOSTsch_SboxGOSTsch_sch_tb;
ARCHITECTURE behavioral OF SboxGOSTsch_SboxGOSTsch_sch_tb IS 

   COMPONENT SboxGOSTsch
   PORT( x1	:	IN	STD_LOGIC; 
          x2	:	IN	STD_LOGIC; 
          x3	:	IN	STD_LOGIC; 
          y1	:	OUT	STD_LOGIC; 
          y2	:	OUT	STD_LOGIC; 
          y3	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL x1	:	STD_LOGIC;
   SIGNAL x2	:	STD_LOGIC;
   SIGNAL x3	:	STD_LOGIC;
   SIGNAL y1	:	STD_LOGIC;
   SIGNAL y2	:	STD_LOGIC;
   SIGNAL y3	:	STD_LOGIC;

BEGIN

   UUT: SboxGOSTsch PORT MAP(
		x1 => x1, 
		x2 => x2, 
		x3 => x3, 
		y1 => y1, 
		y2 => y2, 
		y3 => y3
   );

   tb : PROCESS
   BEGIN
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
   END PROCESS;
END;