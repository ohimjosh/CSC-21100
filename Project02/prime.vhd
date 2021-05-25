----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:34 03/26/2021 
-- Design Name: 
-- Module Name:    prime - prime1_arch 
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
use IEEE.STD_LOGIC_1164.ALL;			-- library delcaration
library UNISIM;
use UNISIM.VComponents.all;

entity prime is							-- entity declaration
    Port ( N : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC);
end prime;

architecture prime1_arch of prime is
signal N3_L, N2_L, N1_L: STD_LOGIC;
signal N3L_N0, N3L_N2L_N1, N2L_N1_N0, N2_N1L_N0:STD_LOGIC;
component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component; -- invert gate
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;			-- AND gates
component AND3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR4 port (I0, I1, I2, I3: in STD_LOGIC; O: out STD_LOGIC); end component;

begin
	U1: INV port map (N(3), N3_L);				-- Invert gates
	U2: INV port map (N(2), N2_L);
	U3: INV port map (N(1), N1_L);
	U4: AND2 port map (N3_L, N(0), N3L_N0);						-- AND gates
	U5: AND3 port map (N3_L, N2_L, N(1), N3L_N2L_N1);
	U6: AND3 port map (N2_L, N(1), N(0), N2L_N1_N0);
	U7: AND3 port map (N(2), N1_L, N(0), N2_N1L_N0);
	U8: OR4 port map (N3L_N0, N3L_N2L_N1, N2L_N1_N0, N2_N1L_N0, F);	-- OR gates
end prime1_arch;

