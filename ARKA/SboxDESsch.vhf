--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SboxDESsch.vhf
-- /___/   /\     Timestamp : 10/28/2023 22:37:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/ff/S_box_gost/SboxDESsch.vhf -w C:/ff/S_box_gost/SboxDESsch.sch
--Design Name: SboxDESsch
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

entity SboxDESsch is
   port ( in_c   : in    std_logic; 
          in_x1  : in    std_logic; 
          in_x2  : in    std_logic; 
          out_y1 : out   std_logic; 
          out_y2 : out   std_logic);
end SboxDESsch;

architecture BEHAVIORAL of SboxDESsch is
   attribute BOX_TYPE   : string ;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_18 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : INV
      port map (I=>in_c,
                O=>XLXN_8);
   
   XLXI_2 : INV
      port map (I=>in_x1,
                O=>XLXN_6);
   
   XLXI_3 : INV
      port map (I=>in_x2,
                O=>XLXN_7);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_8,
                I1=>in_x2,
                O=>XLXN_14);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_8,
                I1=>XLXN_6,
                O=>XLXN_13);
   
   XLXI_6 : AND2
      port map (I0=>in_c,
                I1=>in_x2,
                O=>XLXN_12);
   
   XLXI_7 : AND3
      port map (I0=>in_c,
                I1=>in_x1,
                I2=>XLXN_7,
                O=>XLXN_11);
   
   XLXI_8 : AND3
      port map (I0=>in_c,
                I1=>XLXN_6,
                I2=>in_x2,
                O=>XLXN_18);
   
   XLXI_9 : OR2
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                O=>out_y2);
   
   XLXI_10 : OR3
      port map (I0=>XLXN_18,
                I1=>XLXN_11,
                I2=>XLXN_14,
                O=>out_y1);
   
end BEHAVIORAL;


