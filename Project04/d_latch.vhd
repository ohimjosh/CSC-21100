----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:15 05/06/2021 
-- Design Name: 
-- Module Name:    d_latch - d_latch_arch 
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

entity d_latch is
    Port ( C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end d_latch;

architecture d_latch_arch of d_latch is
signal D_L: STD_LOGIC;
component INV port(I: in STD_LOGIC; O: out STD_LOGIC); end component;
component sr_latch_en port(S, R, C: in STD_LOGIC; Q,QN : out STD_LOGIC); end component;

begin
	U0: INV port map (D, D_L);
	U1: sr_latch_en port map (D, D_L, C, Q, QN);


end d_latch_arch;

