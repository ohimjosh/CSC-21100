--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:36:07 05/17/2021
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project05/combination_lock_4b_tb.vhd
-- Project Name:  Project05
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: combination_lock_4b
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
ENTITY combination_lock_4b_tb IS
END combination_lock_4b_tb;
 
ARCHITECTURE behavior OF combination_lock_4b_tb IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT combination_lock_4b
    PORT(
         CLK : IN  std_logic;
         X : IN  std_logic;
         HINT : OUT  std_logic;
         UNLK : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal CLK : std_logic := '0';
   signal X : std_logic := '0';
 	--Outputs
   signal HINT : std_logic;
   signal UNLK : std_logic;
   -- Clock period definitions
   constant CLK_period : time := 20 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: combination_lock_4b PORT MAP (
          CLK => CLK,
          X => X,
          HINT => HINT,
          UNLK => UNLK
        );
   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		X <= '0'; wait for 2.5*CLK_period;
		-- first attempt "1011" --
		X <= '1'; wait for CLK_period;
		X <= '0'; wait for CLK_period;
		X <= '1'; wait for CLK_period;
		X <= '1'; wait for CLK_period;
		-- reset --
		X <= '0'; wait for 2*CLK_period;
		-- second attempt "1010" --
		X <= '1'; wait for CLK_period;
		X <= '0'; wait for CLK_period;
		X <= '1'; wait for CLK_period;
		X <= '0'; wait for CLK_period;
		-- reset --
		X <= '0'; wait for 2*CLK_period;
		-- third attempt "100" --
		X <= '1'; wait for CLK_period;
		X <= '0'; wait for CLK_period;
		X <= '0'; wait for CLK_period;
		-- reset --
		X <= '0'; wait for 2*CLK_period;
		-- second attempt "11" --
		X <= '1'; wait for CLK_period;
		X <= '1'; wait for CLK_period;
		-- reset --
		X <= '0'; wait for 2*CLK_period;
      wait;
   end process;
END;
