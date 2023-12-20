--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LFSR.vhf
-- /___/   /\     Timestamp : 11/11/2023 20:36:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl C:/ff/S_box_gost/LFSR.vhf -w C:/ff/S_box_gost/LFSR.sch
--Design Name: LFSR
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

entity M2_1_MXILINX_LFSR is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_LFSR;

architecture BEHAVIORAL of M2_1_MXILINX_LFSR is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LFSR is
   port ( clk        : in    std_logic; 
          clk_enable : in    std_logic; 
          data_in    : in    std_logic; 
          is_init    : in    std_logic; 
          lfsr_init  : in    std_logic; 
          data_out   : out   std_logic; 
          lfsr_out   : out   std_logic);
end LFSR;

architecture BEHAVIORAL of LFSR is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_11        : std_logic;
   signal XLXN_12        : std_logic;
   signal XLXN_14        : std_logic;
   signal XLXN_15        : std_logic;
   signal lfsr_out_DUMMY : std_logic;
   component M2_1_MXILINX_LFSR
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   lfsr_out <= lfsr_out_DUMMY;
   XLXI_1 : M2_1_MXILINX_LFSR
      port map (D0=>XLXN_11,
                D1=>lfsr_init,
                S0=>is_init,
                O=>XLXN_12);
   
   XLXI_2 : FDE
      port map (C=>clk,
                CE=>clk_enable,
                D=>XLXN_14,
                Q=>XLXN_15);
   
   XLXI_3 : FDE
      port map (C=>clk,
                CE=>clk_enable,
                D=>XLXN_12,
                Q=>XLXN_14);
   
   XLXI_4 : FDE
      port map (C=>clk,
                CE=>clk_enable,
                D=>XLXN_15,
                Q=>lfsr_out_DUMMY);
   
   XLXI_5 : XOR2
      port map (I0=>lfsr_out_DUMMY,
                I1=>XLXN_14,
                O=>XLXN_11);
   
   XLXI_6 : XOR2
      port map (I0=>data_in,
                I1=>lfsr_out_DUMMY,
                O=>data_out);
   
end BEHAVIORAL;


