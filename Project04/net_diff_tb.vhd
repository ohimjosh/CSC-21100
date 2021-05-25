--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:09:03 05/08/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project04/net_diff_tb.vhd
-- Project Name:  Project04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: net_diff
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
ENTITY net_diff_tb IS
END net_diff_tb;
 
ARCHITECTURE behavior OF net_diff_tb IS 
    -- Component Declaration for the Unit Under Test (UUT)
	COMPONENT net_diff
   PORT( D, CLK_L : IN std_logic;
         Q, QN : OUT std_logic);
		  
	END COMPONENT;
	signal D, CLK_L, Q, QN : std_logic;
	signal CLK: std_logic := '0';
   -- Clock period definitions
   constant CLK_period : time := 100 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: net_diff PORT MAP (
          D => D,
			 CLK_L => CLK_L,
          Q => Q,
          QN => QN
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	CLK_L <= CLK;
 
   -- tb process
   tb: process
   begin		
      D <= '0'; wait for 70 ns;
		D <= '1'; wait for 50 ns;
		D <= '0'; wait for 50 ns;
		D <= '1'; wait for 10 ns;
		D <= '0'; wait for 50 ns;
		D <= '1'; wait for 50 ns;
		D <= '0'; wait for 100 ns;
		D <= '1'; wait for 100 ns;
		D <= '0'; wait for 70 ns;
		D <= '0';

      wait;	-- will wait forever
   end process;
	-- END TEST BENCH
END;
