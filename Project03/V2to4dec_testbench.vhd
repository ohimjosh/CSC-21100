--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:06:01 04/20/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project03/V2to4dec_testbench.vhd
-- Project Name:  Project03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: V2to4dec
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
USE ieee.std_logic_1164.ALL;		-- library declaration
ENTITY V2to4dec_testbench IS
END V2to4dec_testbench;
 
ARCHITECTURE behavior OF V2to4dec_testbench IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT v2to4dec
    PORT(
         EN : IN  std_logic;
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
	signal EN : std_logic := '0';
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;

BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: v2to4dec PORT MAP (
          EN => EN,
          I0 => I0,
          I1 => I1,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
     
      -- insert stimulus here
		EN <= '0';
		I1 <= '0'; I0 <= '0'; wait for 10 ns;
		I1 <= '0'; I0 <= '1'; wait for 10 ns;
		I1 <= '1'; I0 <= '0'; wait for 10 ns;
		I1 <= '1'; I0 <= '1'; wait for 10 ns;
		EN <= '1';
		I1 <= '0'; I0 <= '0'; wait for 10 ns;
		I1 <= '0'; I0 <= '1'; wait for 10 ns;
		I1 <= '1'; I0 <= '0'; wait for 10 ns;
		I1 <= '1'; I0 <= '1'; wait for 10 ns;
		
      wait;
   end process;

END;
