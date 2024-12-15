--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:10:31 12/10/2024
-- Design Name:   
-- Module Name:   /home/ise/PartageVM/TP_Elargoubi/TP2/test4b_gene.vhd
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
 
ENTITY test4b_gene IS
END test4b_gene;
 
ARCHITECTURE behavior OF test4b_gene IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add4b
    PORT(
         A4 : IN  std_logic_vector(3 downto 0);
         B4 : IN  std_logic_vector(3 downto 0);
         Cin_4 : IN  std_logic;
         S4 : OUT  std_logic_vector(3 downto 0);
         Cout_4 : OUT  std_logic
        );
    END COMPONENT;
    
	 COMPONENT GENE IS
		generic (val_init, val_fin, increment: integer;
		delta_t:time);
		port (sortie: out std_logic_vector(3 downto 0)); 
	 end COMPONENT;

	COMPONENT CLOCK IS
		generic (DEMI_PERIODE: time); 
		port (SORTIE: out std_logic); 
	end COMPONENT;

   --Inputs
   signal A4 : std_logic_vector(3 downto 0) := (others => '0');
   signal B4 : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin_4 : std_logic := '0';

 	--Outputs
   signal S4 : std_logic_vector(3 downto 0);
   signal Cout_4 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add4b PORT MAP (
          A4 => A4,
          B4 => B4,
          Cin_4 => Cin_4,
          S4 => S4,
          Cout_4 => Cout_4
        );

   -- Clock process definitions
 
GENE1: GENE generic map(0, 15, 1, 20 ns) PORT MAP (A4);
GENE2: GENE generic map(0, 15, 1, 20 ns) PORT MAP (B4);
HORLOGE : CLOCK generic map (60 ns) PORT MAP (Cin_4);
END;
