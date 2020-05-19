library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_SIGNED.all;

entity dispalytext is
	port(	
			clk, rom_mux : in std_logic;

			pixel_row, pixel_column : in std_logic_vector(9 downto 0);
			
			character_address :  out std_logic_vector(5 downto 0);
			
			font_row : out std_logic_vector(2 downto 0);
			font_col : out std_logic_vector(2 downto 0);

			red, green, blue : out std_logic
			);
end entity;

architecture bhv of dispalytext is
    begin
        process(clk, pixel_row, pixel_column)
        begin
            if rising_edge(clk) then
					if ((128 <= pixel_row) and (pixel_row < 192) and (128 <= pixel_column) and (pixel_column < 512)) then -- FLOPPY
						font_col <= pixel_column(5 downto 3);
						font_row <= pixel_row(5 downto 3);
						if ((128 <= pixel_row) and (pixel_row < 192) and (128 <= pixel_column) and (pixel_column < 192)) then 
							character_address <= conv_std_logic_vector(6,6); -- F
							red <= rom_mux;
							green <= '0';
							blue <= '0';
						elsif ((128 <= pixel_row) and (pixel_row < 192) and (192 <= pixel_column) and (pixel_column < 256)) then 
							character_address <= conv_std_logic_vector(12,6); -- L
							red <= rom_mux;
							green <= rom_mux;
							blue <= '0';
						elsif ((128 <= pixel_row) and (pixel_row < 192) and (256 <= pixel_column) and (pixel_column < 320)) then 
							character_address <= conv_std_logic_vector(15,6); -- O
							red <= '0';
							green <= rom_mux;
							blue <= '0';
						elsif ((128 <= pixel_row) and (pixel_row < 192) and (320 <= pixel_column) and (pixel_column < 384)) then 
							character_address <= conv_std_logic_vector(16,6); -- P
							red <= '0';
							green <= rom_mux;
							blue <= rom_mux;
						elsif ((128 <= pixel_row) and (pixel_row < 192) and (384 <= pixel_column) and (pixel_column < 448)) then 
							character_address <= conv_std_logic_vector(16,6); -- P
							red <= '0';
							green <= '0';
							blue <= rom_mux;
						elsif ((128 <= pixel_row) and (pixel_row < 192) and (448 <= pixel_column) and (pixel_column < 512)) then 
							character_address <= conv_std_logic_vector(25,6); -- Y
							red <= rom_mux;
							green <= '0';
							blue <= rom_mux;
						else
							red <= '0';
							green <= '0';
							blue <= '0';
						end if;
                end if;
            end if;
        end process;
end bhv;