--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:13:32 12/10/2024
-- Design Name:   
-- Module Name:   /home/ise/PartageVM/TP_Elargoubi/TP2/test_add16b.vhd
-- Project Name:  TP2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add16b
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
 
ENTITY test_add16b IS
END test_add16b;
 
ARCHITECTURE behavior OF test_add16b IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add16b
    PORT(
         A16 : IN  std_logic_vector(15 downto 0);
         B16 : IN  std_logic_vector(15 downto 0);
         Cin_16 : IN  std_logic;
         S16 : OUT  std_logic_vector(15 downto 0);
         Cout_16 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A16 : std_logic_vector(15 downto 0) := (others => '0');
   signal B16 : std_logic_vector(15 downto 0) := (others => '0');
   signal Cin_16 : std_logic := '0';

 	--Outputs
   signal S16 : std_logic_vector(15 downto 0);
   signal Cout_16 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add16b PORT MAP (
          A16 => A16,
          B16 => B16,
          Cin_16 => Cin_16,
          S16 => S16,
          Cout_16 => Cout_16
        );



    A16 <= X"0000" after 0 ns, X"000F" after 350 ns, X"0F0F" after 700 ns, X"FFFF" after 1050 ns;
    B16 <= X"0000" after 0 ns, X"0001" after 350 ns, X"F0F0" after  700 ns, X"0001" after 1050 ns;
    Cin_16 <= '0' after 0 ns, '1' after 750 ns;


   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      --wait;
   --end process;

END;
