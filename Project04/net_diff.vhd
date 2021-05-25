----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:52 05/08/2021 
-- Design Name: 
-- Module Name:    net_diff - net_diff_arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity net_diff is
    Port ( CLK_L : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end net_diff;

architecture net_diff_arch of net_diff is
signal CLK, Q1: STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component d_latch port (C, D : in STD_LOGIC; Q, QN : out STD_LOGIC); end component;

begin
	U0: INV port map(CLK_L,CLK);
	L1: d_latch port map (CLK_L, D, Q1);
	L2: d_latch port map (CLK, Q1, Q,Qn);
end net_diff_arch;

