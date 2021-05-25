----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:35 03/26/2021 
-- Design Name: 
-- Module Name:    Inhibit - Inhibit_arch 
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

entity Inhibit is						-- variable declaration
    Port ( X : in  BIT;
           Y : in  BIT;
           Z : out  BIT);
end Inhibit;

architecture Inhibit_arch of Inhibit is

begin
	Z <= '1' when X= '1' and Y='0' else '0';
end Inhibit_arch;

