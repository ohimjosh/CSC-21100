----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:12 04/21/2021 
-- Design Name: 
-- Module Name:    adder4b - adder4b_arch 
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
use IEEE.NUMERIC_STD.ALL;				--library declaration
library UNISIM;
use UNISIM.VComponents.all;

entity adder4b is							--entity declaration
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC);
end adder4b;

architecture adder4b_arch of adder4b is
signal C1,C2,C3:STD_LOGIC;
component adder1b port (X, Y, CIN: in STD_LOGIC; COUT, S: out STD_LOGIC); end component;

begin
	LABEL1: adder1b
		port map ( 	X=>X(0) ,
						Y=>Y(0) ,
						CIN=>CIN,
						COUT=>C1,
						S=>S(0));
	LABEL2: adder1b
		port map ( 	X=>X(1) ,
						Y=>Y(1) ,
						CIN=>C1,
						COUT=>C2,
						S=>S(1));
	LABEL3: adder1b
		port map ( 	X=>X(2) ,
						Y=>Y(2) ,
						CIN=>C2,
						COUT=>C3,
						S=>S(2));
	LABEL4: adder1b
		port map ( 	X=>X(3) ,
						Y=>Y(3) ,
						CIN=>C3,
						COUT=>COUT,
						S=>S(3));
end adder4b_arch;

