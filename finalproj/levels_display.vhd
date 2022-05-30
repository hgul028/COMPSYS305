library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_SIGNED.all; 
use IEEE.NUMERIC_STD.all; 



entity levels_display is 

	port(	clock_25Mhz 				: in std_logic;
			pixel_row, pixel_column	: in std_logic_vector(9 downto 0);
			ones_score, tens_score	: in std_logic_vector(5 downto 0);
			gameState 					: in std_logic_vector(1 downto 0);
			levelOut 					: in std_logic_vector(1 downto 0);
			over_text_on 				: out std_logic;
			output_text 				: out std_logic	);
			
end entity levels_display;



architecture behaviour of levels_display is

	component char_rom
		port (  	character_address		: in std_logic_vector (5 downto 0);
					font_row, font_col	: in std_logic_vector (2 downto 0);
					clock						: in std_logic ;
					rom_mux_output			: out std_logic	);
			
	end component;

	signal score_display : std_logic_vector(5 downto 0);
	signal output_score  : std_logic := '0';
	signal levels_display : std_logic_vector(5 downto 0); 
 
	
begin							
	 
--LEVEL OVER TEXT--
		over_text_on <= '1' when (output_score = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(415,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(255,10) 
		and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(46,10)) else'0';

--LEVEL OVER DISPLAY TEXT--		
	levels_display <= 
					
					--"LEVEL 1"--
					CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(271,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"L"
					CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(287,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"E"
					CONV_STD_LOGIC_VECTOR(22,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(303,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"V"
					CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(319,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"E"
					CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(335,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"L"					
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(351,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"space"
					CONV_STD_LOGIC_VECTOR(48,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and levelOut = "00" else --"0"
					CONV_STD_LOGIC_VECTOR(49,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and levelOut = "01" else --"1"
					CONV_STD_LOGIC_VECTOR(50,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and levelOut = "10" else --"2"
					CONV_STD_LOGIC_VECTOR(51,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and levelOut = "11" else --"3"
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(383,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)else --"space"
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(399,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) else --"space"
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(415,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) --"space" 


				;
		
		scoretext : char_rom port map(
							character_address => levels_display,
							font_row=>pixel_row(3 downto 1),
							font_col=>pixel_column(3 downto 1),
							clock => clock_25Mhz,
							rom_mux_output =>output_score
							);

	output_text <= output_score;

end architecture;