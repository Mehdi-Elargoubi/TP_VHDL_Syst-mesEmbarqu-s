--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:04:12 12/10/2024
-- Design Name:   
-- Module Name:   /home/ise/PartageVM/TP_Elargoubi/TP1/test_compteur.vhd
-- Project Name:  TP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: compteur
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
 
ENTITY test_compteur IS
END test_compteur;
 
ARCHITECTURE behavior OF test_compteur IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compteur
    PORT(
         clock : IN  std_logic;
         hold : IN  std_logic;
         load_count : IN  std_logic;
         chargement : IN  std_logic_vector(7 downto 0);
         load_limit : IN  std_logic;
         sel_limit : IN  std_logic;
         limite1 : IN  std_logic_vector(7 downto 0);
         limite2 : IN  std_logic_vector(7 downto 0);
         sortie : OUT  std_logic_vector(7 downto 0);
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal hold : std_logic := '0';
   signal load_count : std_logic := '0';
   signal chargement : std_logic_vector(7 downto 0) := "00000000";
   signal load_limit : std_logic := '0';
   signal sel_limit : std_logic := '0';
   signal limite1 : std_logic_vector(7 downto 0) := "00000101";
   signal limite2 : std_logic_vector(7 downto 0) := "00001010";

 	--Outputs
   signal sortie : std_logic_vector(7 downto 0);
   signal overflow : std_logic;

   -- Clock period definitions
   -- constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compteur PORT MAP (
          clock => clock,
          hold => hold,
          load_count => load_count,
          chargement => chargement,
          load_limit => load_limit,
          sel_limit => sel_limit,
          limite1 => limite1,
          limite2 => limite2,
          sortie => sortie,
          overflow => overflow
        );

   -- Clock process definitions
   clock_process :process
   begin
		while true loop
			clock <= '0';
			wait for 10 ns;
			clock <= '1';
			wait for 10 ns;
		end loop;
   end process;
 
 
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 50 ns;	
		
		-- test du maintient de la valeur
		hold <= '1';
		wait for 40 ns;
		hold <= '0';
		
		-- test de chargelment direct
		load_count <= '1';
		chargement <= "00000110";
		wait for 20 ns;
		load_count <= '0';
		
		-- tester le limit
		load_limit <= '1';
		sel_limit <= '1';
		wait for 20 ns;
		load_limit <= '0';

      wait;
   end process;

END;
