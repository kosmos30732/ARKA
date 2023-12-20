--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SboxGOSTsch.vhf
-- /___/   /\     Timestamp : 10/29/2023 01:10:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/ff/S_box_gost/SboxGOSTsch.vhf -w C:/ff/S_box_gost/SboxGOSTsch.sch
--Design Name: SboxGOSTsch
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SboxGOSTsch is
   port ( x1 : in    std_logic; 
          x2 : in    std_logic; 
          x3 : in    std_logic; 
          y1 : out   std_logic; 
          y2 : out   std_logic; 
          y3 : out   std_logic);
end SboxGOSTsch;

architecture BEHAVIORAL of SboxGOSTsch is
   signal XLXN_63 : std_logic;
   signal XLXN_66 : std_logic;
   signal XLXN_67 : std_logic;
   signal XLXN_68 : std_logic;
   signal XLXN_69 : std_logic;
   signal XLXN_70 : std_logic;
   signal XLXN_71 : std_logic;
   signal XLXN_72 : std_logic;
   component GOST_Decoder
      port ( x0 : in    std_logic; 
             x1 : in    std_logic; 
             x2 : in    std_logic; 
             y0 : out   std_logic; 
             y1 : out   std_logic; 
             y2 : out   std_logic; 
             y3 : out   std_logic; 
             y4 : out   std_logic; 
             y5 : out   std_logic; 
             y6 : out   std_logic; 
             y7 : out   std_logic);
   end component;
   
   component GOST_Coder
      port ( y0 : in    std_logic; 
             y1 : in    std_logic; 
             y2 : in    std_logic; 
             y3 : in    std_logic; 
             y4 : in    std_logic; 
             y5 : in    std_logic; 
             y6 : in    std_logic; 
             y7 : in    std_logic; 
             x0 : out   std_logic; 
             x1 : out   std_logic; 
             x2 : out   std_logic);
   end component;
   
begin
   XLXI_1 : GOST_Decoder
      port map (x0=>x1,
                x1=>x2,
                x2=>x3,
                y0=>XLXN_72,
                y1=>XLXN_71,
                y2=>XLXN_70,
                y3=>XLXN_69,
                y4=>XLXN_68,
                y5=>XLXN_67,
                y6=>XLXN_66,
                y7=>XLXN_63);
   
   XLXI_2 : GOST_Coder
      port map (y0=>XLXN_63,
                y1=>XLXN_72,
                y2=>XLXN_66,
                y3=>XLXN_71,
                y4=>XLXN_67,
                y5=>XLXN_70,
                y6=>XLXN_68,
                y7=>XLXN_69,
                x0=>y1,
                x1=>y2,
                x2=>y3);
   
end BEHAVIORAL;


