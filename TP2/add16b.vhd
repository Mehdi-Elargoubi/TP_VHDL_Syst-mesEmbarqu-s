----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:04 12/10/2024 
-- Design Name: 
-- Module Name:    add16b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add16b is
    Port (
        A16     : in  STD_LOGIC_VECTOR(15 downto 0);
        B16     : in  STD_LOGIC_VECTOR(15 downto 0);
        Cin_16  : in  STD_LOGIC;
        S16     : out STD_LOGIC_VECTOR(15 downto 0);
        Cout_16 : out STD_LOGIC
    );
end add16b;

architecture Behavioral of add16b is
    Component add4b
        Port (
            A4     : in  STD_LOGIC_VECTOR(3 downto 0);
            B4     : in  STD_LOGIC_VECTOR(3 downto 0);
            Cin_4  : in  STD_LOGIC;
            S4     : out STD_LOGIC_VECTOR(3 downto 0);
            Cout_4 : out STD_LOGIC
        );
	 end Component;

    signal C : STD_LOGIC_VECTOR(4 downto 0); 

begin
    C(0) <= Cin_16;

    Res1 : add4b PORT MAP(A16(3 downto 0), B16(3 downto 0), C(0), S16(3 downto 0), C(1));
    Res2 : add4b PORT MAP(A16(7 downto 4), B16(7 downto 4), C(1), S16(7 downto 4), C(2));
    Res3 : add4b PORT MAP(A16(11 downto 8), B16(11 downto 8), C(2), S16(11 downto 8), C(3));
    Res4 : add4b PORT MAP(A16(15 downto 12), B16(15 downto 12), C(3), S16(15 downto 12), C(4));

    Cout_16 <= C(4);
end Behavioral;

