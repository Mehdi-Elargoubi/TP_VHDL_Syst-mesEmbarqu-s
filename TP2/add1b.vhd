----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:23:00 11/22/2024 
-- Design Name: 
-- Module Name:    add1b - Behavioral 
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

entity add1b is
generic(tp_prop : time := 2 ns);
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end add1b;

architecture Behavioral of add1b is

begin
	S <= A XOR B XOR Cin after tp_prop;
	Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin) after tp_prop;

	--S <= A XOR B XOR Cin;
	--Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin);

end Behavioral;



