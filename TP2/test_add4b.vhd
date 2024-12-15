--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:00:22 11/22/2024
-- Design Name:   
-- Module Name:   /home/ise/PartageVM/TP_Elargoubi/TP2/test_add4b.vhd
-- Project Name:  TP2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add4b
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
 
ENTITY test_add4b IS
END test_add4b;
 
ARCHITECTURE behavior OF test_add4b IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add4b
    PORT(
         A4, B4 : IN  std_logic_vector(3 downto 0);
         Cin_4 : IN  std_logic;
         S4 : OUT  std_logic_vector(3 downto 0);
         Cout_4 : OUT  std_logic
        );
    END COMPONENT;
    

	 --Inputs
   signal A4 : std_logic_vector(3 downto 0) := (others => '0');
   signal B4 : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin_4 : std_logic := '0';

 	--Outputs
   signal S4 : std_logic_vector(3 downto 0);
   signal Cout_4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add4b PORT MAP (
          A4 => A4,
          B4 => B4,
          Cin_4 => Cin_4,
          S4 => S4,
          Cout_4 => Cout_4
        );

		  A4 <= "1010" after 0 ns, "0010" after 500 ns, "0100" after 1000 ns, "0110" after 1500 ns, "1000" after 2000 ns, "1010" after 2500 ns, "1100" after 3000 ns, "1110" after 3500 ns;
		  B4 <= "0101" after 0 ns, "0011" after 500 ns, "0101" after 1000 ns, "0111" after 1500 ns, "1001" after 2000 ns, "1011" after 2500 ns, "1101" after 3000 ns, "1111" after 3500 ns;
		  
		  --A4 <= "0000" after 0 ns, "0010" after 200 ns, "0100" after 400 ns, "0110" after 600 ns, "1000" after 800 ns, "1010" after 1000 ns, "1100" after 1200 ns, "1110" after 1400 ns;
		  --B4 <= "0000" after 0 ns, "0011" after 300 ns, "0101" after 500 ns, "0111" after 700 ns, "1001" after 900 ns, "1011" after 1100 ns, "1101" after 1300 ns, "1111" after 1500 ns;
		  Cin_4 <= '0' after 0 ns, '1' after 750 ns;
		  

END;
