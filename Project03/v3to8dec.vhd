----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:45 04/20/2021 
-- Design Name: 
-- Module Name:    v3to8dec - v3to8dec_s 
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
use IEEE.STD_LOGIC_1164.ALL;		-- library declaration
library UNISIM;
use UNISIM.VComponents.all;

entity v3to8dec is					-- entity declaration
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end v3to8dec;

architecture v3to8dec_arch of v3to8dec is

signal A2_L,EN_A2L,EN_A2:STD_LOGIC;


component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port (I0,I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component v2to4dec 						-- 2-to-4 decoder from Task 1
	port ( I0 : in		STD_LOGIC;
			 I1 : in		STD_LOGIC;
			 EN : in		STD_LOGIC;
			 Y3 : out	STD_LOGIC;
			 Y2 : out	STD_LOGIC;
			 Y1 : out	STD_LOGIC;
			 Y0 : out	STD_LOGIC);
end component;
			 
begin
	U1: INV port map(A(2),A2_L);				-- invert gates
	U2: AND2 port map(A2_L,EN,EN_A2L);
	U3: AND2 port map(A(2),EN,EN_A2);		-- AND gates
	DEC1: v2to4dec 								-- decoder 1
		port map(EN=>EN_A2L,
					I0=>A(0),
					I1=>A(1),
					Y0=>O(0),
					Y1=>O(1),
					Y2=>O(2),
					Y3=>O(3));
	
	DEC2: v2to4dec 									-- decoder 2
		port map(EN=>EN_A2,
					I0=>A(0),
					I1=>A(1),
					Y0=>O(4),
					Y1=>O(5),
					Y2=>O(6),
					Y3=>O(7));

end v3to8dec_arch;

