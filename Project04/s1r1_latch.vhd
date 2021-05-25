----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:25:34 05/06/2021 
-- Design Name: 
-- Module Name:    s1r1_latch - Behavioral 
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
library UNISIM;			-- library declaration
use UNISIM.VComponents.all;

entity s1r1_latch is						-- entity declaration
    Port ( R_L : in  STD_LOGIC;
           S_L : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end s1r1_latch;

architecture s1r1_latch_arch of s1r1_latch is
component OR2B2 port(I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
signal Q_1, QN_1: STD_LOGIC;

begin
	U1: OR2B2 port map(R_L, Q_1, QN_1);
	U2: OR2B2 port map(S_L, QN_1, Q_1);
	Q <= Q_1;
	QN <= QN_1;

end s1r1_latch_arch;

