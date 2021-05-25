--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:41:42 03/26/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project02/ex3_testbench.vhd
-- Project Name:  Project02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ex3_detector
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ex3_testbench IS
END ex3_testbench;
 
ARCHITECTURE behavior OF ex3_testbench IS 
 -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ex3_detector
    PORT(													
         E : IN  std_logic_vector(3 downto 0);
         F : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal E : std_logic_vector(3 downto 0) := (others => '0');
 	--Outputs
   signal F : std_logic;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: ex3_detector PORT MAP (
          E => E,
          F => F
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.	
      -- insert stimulus here 
		E <= "0000"; wait for 10 ns;
		E <= "0001"; wait for 10 ns;
		E <= "0010"; wait for 10 ns;
		E <= "0011"; wait for 10 ns;
		E <= "0100"; wait for 10 ns;
		E <= "0101"; wait for 10 ns;
		E <= "0110"; wait for 10 ns;
		E <= "0111"; wait for 10 ns;
		E <= "1000"; wait for 10 ns;
		E <= "1001"; wait for 10 ns;
		E <= "1010"; wait for 10 ns;
		E <= "1011"; wait for 10 ns;
		E <= "1100"; wait for 10 ns;
		E <= "1101"; wait for 10 ns;
		E <= "1110"; wait for 10 ns;
		E <= "1111"; wait for 10 ns;
      wait;
   end process;
END;
