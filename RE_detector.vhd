library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RE_detector is
    port (X, clk: in std_logic;
        Y: out std_logic);
end entity;

architecture Bhv of RE_detector is
    begin
        process(clk, X)
            variable Z : std_logic := '0';
        begin
            if rising_edge(clk) then
                if Z /= X and X = '1' then
                    Y <= X;
                    Z := X;
                elsif Z = '1' and X = '0' then
                    Y <= '0';
                    Z := '0';
                end if;
            end if;
        end process;
end architecture Bhv;


