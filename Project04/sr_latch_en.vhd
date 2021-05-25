----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:31 05/06/2021 
-- Design Name: 
-- Module Name:    sr_latch_en - sr_latch_en_arch 
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

entity sr_latch_en is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end sr_latch_en;

architecture sr_latch_en_arch of sr_latch_en is
component NAND2 port(I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component s1r1_latch port(R_L, S_L: in STD_LOGIC; Q,QN : out STD_LOGIC); end component;
signal S_C, R_C: STD_LOGIC;

begin
	U1:NAND2 port map (S, C, S_C);
	U2:NAND2 port map (R, C, R_C);
	U3: s1r1_latch port map (S_C, R_C, Q, QN);
end sr_latch_en_arch;

