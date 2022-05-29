library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_SIGNED.all; 
use  IEEE.NUMERIC_STD.all; 



ENTITY levels is 
	PORT(
		clock_25Mhz 					: IN STD_LOGIC;
		pixel_row, pixel_column		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		gameState 						: IN std_LOGIC_VECTOR(1 DOWNTO 0);
		gameLevel 						: IN std_logic_vector(1 downto 0);		
		over_text 						: OUT STD_LOGIC;
		return_text 					: OUT STD_LOGIC	
	  );
END ENTITY levels;



ARCHITECTURE BEHAVIOUR of levels is

	COMPONENT char_rom
		PORT 
			(
				character_address		:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
				font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				clock						: 	IN STD_LOGIC ;
				rom_mux_output			: 	OUT STD_LOGIC
			);
			
	end COMPONENT;

	SIGNAL score_display : std_logic_vector(5 downto 0);
	SIGNAL return_score  : STD_LOGIC := '0';
	SIGNAL levels 		 	: std_logic_vector(5 downto 0); 
 
	
BEGIN							
	 
--LEVEL OVER TEXT--
		over_text <= '1' when (return_score = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(415,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(255,10) 
		and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(46,10)) else'0';

--LEVEL OVER DISPLAY TEXT--		
	levels <= 
					
					--LEVELS
					CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(271,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"L"
					CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(287,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"E"
					CONV_STD_LOGIC_VECTOR(22,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(303,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"V"
					CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(319,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"E"
					CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(335,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"L"					
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(351,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"space"
					CONV_STD_LOGIC_VECTOR(48,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and gameLevel = "00" else --"0" Change to 1
					CONV_STD_LOGIC_VECTOR(49,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and gameLevel = "01" else --"1" Change to 2
					CONV_STD_LOGIC_VECTOR(50,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and gameLevel = "10" else --"2" Change to 3
					CONV_STD_LOGIC_VECTOR(51,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(367,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) and gameLevel = "11" else --"3" Change to 4
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(383,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10)	else --"space"
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(399,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) else --"space"
					CONV_STD_LOGIC_VECTOR(32,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(415,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10) --"space" 
				;
		
		scoretext : char_rom PORT MAP(
							character_address => levels,
							font_row=>pixel_row(3 downto 1),
							font_col=>pixel_column(3 downto 1),
							clock => clock_25Mhz,
							rom_mux_output =>return_score
							);

	return_text <= return_score;

END ARCHITECTURE;