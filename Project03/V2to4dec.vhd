----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:17 04/20/2021 
-- Design Name: 
-- Module Name:    V2to4dec - V2to4dec_s 
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
use IEEE.STD_LOGIC_1164.ALL;		-- library declarationS
library UNISIM;
use UNISIM.VComponents.all;

entity v2to4dec is					-- entity declaration
    Port ( EN : in  STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end v2to4dec;

architecture V2to4dec_arch of v2to4dec is
	signal I1_L, I0_L: STD_LOGIC;
	component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
	component AND3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
	U1: INV port map (I0,I0_L);			-- Invert gates
	U2: INV port map (I1,I1_L);
	U3: AND3 port map (EN,I1_L,I0_L,Y0);		-- AND gates
	U4: AND3 port map (EN,I1_L,I0,Y1);
	U5: AND3 port map (EN,I1,I0_L,Y2);
	U6: AND3 port map (EN,I1,I0,Y3);
end v2to4dec_arch;

