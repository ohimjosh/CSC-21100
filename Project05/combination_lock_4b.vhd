----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:34 05/17/2021 
-- Design Name: 
-- Module Name:    combination_lock_4b - combination_arch 
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

entity combination_lock_4b is
    Port ( CLK : in  STD_LOGIC;
           X : in  STD_LOGIC;
           HINT : out  STD_LOGIC;
           UNLK : out  STD_LOGIC);
end combination_lock_4b;

architecture combination_arch of combination_lock_4b is
signal X_L, Q1, Q1_L, Q0, Q0_L, D1, D0 : STD_LOGIC;
signal Q1L_Q0_XL, Q1_Q0L_X : STD_LOGIC;
signal Q1_X, Q0_X,X_Q0L : STD_LOGIC; 

component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component FD
	generic( INIT : bit := '0');
	port ( C : in STD_LOGIC;
			 D : in STD_LOGIC;
			 Q : out STD_LOGIC);
end component;

begin
	U0: INV port map (X, X_L);
	U1: AND3 port map (Q1_L, Q0, X_L, Q1L_Q0_XL);
	U2: AND3 port map (Q1, Q0_L, X, Q1_Q0L_X);
	U3: OR2 port map (Q1L_Q0_XL, Q1_Q0L_X, D1);
	U4: AND2 port map (Q0_L ,X, D0);
	U5: INV port map (Q1, Q1_L);
	U6: INV port map (Q0, Q0_L);
	U7: AND3 port map (X, Q1, Q0, UNLK);
	DFF1: FD port map (
		C => CLK,
		D => D1, 
		Q => Q1);
	DFF0: FD port map (
		C => CLK,
		D => D0, 
		Q => Q0);
	U8: AND3 port map (Q1_L, Q0, X_L, Q1L_Q0_XL);
	U9: AND2 port map (Q0 ,X, Q0_X);
	U10: AND2 port map (X , Q0_L, X_Q0L);
	U11: OR3 port map (Q1L_Q0_XL, Q0_X, X_Q0L, HINT);
end combination_arch;

