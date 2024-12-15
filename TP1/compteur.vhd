----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:36 12/10/2024 
-- Design Name: 
-- Module Name:    compteur - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;  -- Inclusion du package pour unsigned et signed

entity compteur is
    PORT (
        clock : in std_logic;
        hold : in std_logic;
        load_count : in std_logic;
        chargement : in std_logic_vector(7 downto 0);
        load_limit : in std_logic;
        sel_limit : in std_logic;
        limite1 : in std_logic_vector(7 downto 0);
        limite2 : in std_logic_vector(7 downto 0);
        sortie : out std_logic_vector(7 downto 0);
        overflow : out std_logic
    );
end compteur;

architecture Arch of compteur is
    signal compteur_valeur : std_logic_vector(7 downto 0) := "00000000";
    signal limite_active : std_logic_vector(7 downto 0);
begin
    process(clock)
    begin
        if rising_edge(clock) then
            if hold = '1' then
                compteur_valeur <= compteur_valeur;
            elsif load_count = '1' then
                compteur_valeur <= chargement;
            else
                -- Conversion de compteur_valeur en unsigned pour effectuer l'addition
                if unsigned(compteur_valeur) = unsigned(limite_active) then
                    compteur_valeur <= (others => '0');  -- Remise à zéro si égal
                    overflow <= '1';
                else
                    -- Effectuer l'addition (incrémenter compteur_valeur de 1)
                    compteur_valeur <= std_logic_vector(unsigned(compteur_valeur) + 1);
                    overflow <= '0';
                end if;
            end if;
        end if;
    end process;

    process(load_limit, sel_limit, limite1, limite2)
    begin
        if load_limit = '1' then
            if sel_limit = '1' then
                limite_active <= limite1;
            else
                limite_active <= limite2;
            end if;
        end if;
    end process;

end Arch;
