----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:09 04/21/2021 
-- Design Name: 
-- Module Name:    adder1b - adder1b_arch 
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

entity adder1b is						-- entitity delcaration
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           S : out  STD_LOGIC;
           COUT : out  STD_LOGIC);
end adder1b;
architecture adder1b_arch of adder1b is
signal X_AND_CIN,Y_AND_CIN,X_Y,X_XOR_Y:STD_LOGIC;

component XOR2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR3 port (I0,I1,I2: in STD_LOGIC; O: out STD_LOGIC); end component;

begin
	U1: XOR2 port map (X,Y,X_XOR_Y);					-- XOR gate
	U2: AND2 port map (X,CIN,X_AND_CIN);			-- AND gate
	U3: AND2 port map (Y,CIN,Y_AND_CIN);
	U4: AND2 port map (X,Y,X_Y);
	U5: XOR2 port map (X_XOR_Y,CIN,S);
	U6: OR3 port map (X_AND_CIN,Y_AND_CIN,X_Y,COUT);		--OR gate
end adder1b_arch;

