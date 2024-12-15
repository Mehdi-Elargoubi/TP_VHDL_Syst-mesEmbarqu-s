----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:12:39 11/22/2024 
-- Design Name: 
-- Module Name:    add4b - Behavioral 
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

entity add4b is
    Port (
        A4     : in  STD_LOGIC_VECTOR(3 downto 0);
        B4     : in  STD_LOGIC_VECTOR(3 downto 0);
        Cin_4  : in  STD_LOGIC;
        S4     : out STD_LOGIC_VECTOR(3 downto 0);
        Cout_4 : out STD_LOGIC
    );
end add4b;

architecture Behavioral of add4b is
	Component add1b
	generic(tp_prop : time := 2 ns);
	Port ( A, B, Cin : in  STD_LOGIC;
          S, Cout : out  STD_LOGIC
			  );
	end Component;
	signal C : STD_LOGIC_VECTOR(3 downto 0);

begin
		Res1 : add1b generic map(20 ns) PORT MAP( A4(0), B4(0), Cin_4, S4(0), C(1) );
		Res2 : add1b generic map(20 ns) PORT MAP( A4(1), B4(1), C(1), S4(1), C(2) );
		Res3 : add1b generic map(20 ns) PORT MAP( A4(2), B4(2), C(2), S4(2), C(3) );
		Res4 : add1b generic map(20 ns) PORT MAP( A4(3), B4(3), C(3), S4(3), Cout_4 );		
		
		--Res1 : add1b PORT MAP( A4(0), B4(0), Cin_4, S4(0), C(1) );
		--Res2 : add1b PORT MAP( A4(1), B4(1), C(1), S4(1), C(2) );
		--Res3 : add1b PORT MAP( A4(2), B4(2), C(2), S4(2), C(3) );
		--Res4 : add1b PORT MAP( A4(3), B4(3), C(3), S4(3), Cout_4 );

end Behavioral;





