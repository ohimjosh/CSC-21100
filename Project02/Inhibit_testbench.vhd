--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:10:06 03/26/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project02/Inhibit_testbench.vhd
-- Project Name:  Project02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Inhibit
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
ENTITY Inhibit_testbench IS
END Inhibit_testbench;
ARCHITECTURE structural OF Inhibit_testbench IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Inhibit
    PORT(X : IN  BIT;
         Y : IN  BIT;
         Z : OUT  BIT);
    END COMPONENT;
    signal X, Y, Z: BIT;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Inhibit PORT MAP (X, Y, Z);
   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		X <= '0'; Y <= '0';				-- test 1
		wait for 20 ns;
		X <= '0'; Y <= '1';				-- test 2
		wait for 20 ns;
		X <= '1'; Y <= '0';				-- test 3
		wait for 20 ns;
		X <= '1'; Y <= '1';				-- test 4
      wait;
   end process;
END;
