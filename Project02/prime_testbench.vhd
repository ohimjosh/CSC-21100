--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:10:08 03/26/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project02/prime_testbench.vhd
-- Project Name:  Project02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: prime
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;									
 
ENTITY prime_testbench IS
END prime_testbench;
 
ARCHITECTURE behavior OF prime_testbench IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT prime
    PORT(													
         N : IN  std_logic_vector(3 downto 0);
         F : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal N : std_logic_vector(3 downto 0) := (others => '0');
 	--Outputs
   signal F : std_logic;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: prime PORT MAP (
          N => N,
          F => F
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.	
      -- insert stimulus here 
		N <= "0000"; wait for 10 ns;
		N <= "0001"; wait for 10 ns;
		N <= "0010"; wait for 10 ns;
		N <= "0011"; wait for 10 ns;
		N <= "0100"; wait for 10 ns;
		N <= "0101"; wait for 10 ns;
		N <= "0110"; wait for 10 ns;
		N <= "0111"; wait for 10 ns;
		N <= "1000"; wait for 10 ns;
		N <= "1001"; wait for 10 ns;
		N <= "1010"; wait for 10 ns;
		N <= "1011"; wait for 10 ns;
		N <= "1100"; wait for 10 ns;
		N <= "1101"; wait for 10 ns;
		N <= "1110"; wait for 10 ns;
		N <= "1111"; wait for 10 ns;
      wait;
   end process;
END;
