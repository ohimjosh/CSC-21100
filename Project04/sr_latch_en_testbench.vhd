--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:29:45 05/06/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project04/sr_latch_en_testbench.vhd
-- Project Name:  Project04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_latch_en
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
ENTITY sr_latch_en_testbench IS
END sr_latch_en_testbench;
 
ARCHITECTURE behavior OF sr_latch_en_testbench IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT sr_latch_en
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         C : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_latch_en PORT MAP (
          S => S,
          R => R,
          C => C,
          Q => Q,
          QN => QN
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- c is asserted
		S <= '0'; R <= '1'; C <= '1';
      wait for 50 ns;
		S <= '0'; R <= '0'; C <= '1';
      wait for 50 ns;
		S <= '1'; R <= '0'; C <= '1';
      wait for 50 ns;
		S <= '0'; R <= '0'; C <= '1';
      wait for 50 ns;

		-- c is negated
		S <= '0'; R <= '1'; C <= '0';
      wait for 50 ns;
		S <= '0'; R <= '0'; C <= '0';
      wait for 50 ns;
		S <= '1'; R <= '0'; C <= '0';
      wait for 50 ns;
		S <= '0'; R <= '0'; C <= '0';
      wait for 50 ns;	
		S <= '1'; R <= '1'; C <= '0';
      wait for 50 ns;	

		-- c is again asserted
		S <= '1'; R <= '1'; C <= '1';
      wait for 50 ns;

      wait;
   end process;
END;
