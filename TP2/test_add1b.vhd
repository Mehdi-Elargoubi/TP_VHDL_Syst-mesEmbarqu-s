--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:48:32 11/22/2024
-- Design Name:   
-- Module Name:   /home/ise/PartageVM/TP_Elargoubi/TP2/test_add1b.vhd
-- Project Name:  TP2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add1b
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
 
ENTITY test_add1b IS
END test_add1b;
 
ARCHITECTURE behavior OF test_add1b IS 
  
    COMPONENT add1b
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add1b PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );
	
	A <= '0' after 0 ns, '0' after 10 ns,'1' after 20 ns,'1' after 30 ns, '0' after 40 ns, '0' after 50 ns,'1' after 60 ns, '1' after 70 ns;
	B <= '0' after 0 ns, '1' after 10 ns,'0' after 20 ns,'1' after 30 ns, '0' after 40 ns, '1' after 50 ns,'0' after 60 ns, '1' after 70 ns;
	Cin <= '0' after 0 ns, '0' after 10 ns,'0' after 20 ns,'0' after 30 ns, '1' after 40 ns, '1' after 50 ns,'1' after 60 ns, '1' after 70 ns;
END;
