library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_SIGNED.all; 
use  IEEE.NUMERIC_STD.all; 



ENTITY digits is 
	PORT(
		clock_25Mhz 					: IN STD_LOGIC;
		pixel_row, pixel_column		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		digit_one, digit_two			: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		gameState 						: IN std_LOGIC_VECTOR(1 DOWNTO 0);		
		over_text 						: OUT STD_LOGIC;
		return_text 					: OUT STD_LOGIC	
	  );
END ENTITY digits;



ARCHITECTURE BEHAVIOUR of digits is

	COMPONENT char_rom
		PORT 
			(
				character_address		:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
				font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				clock						: 	IN STD_LOGIC ;
				rom_mux_output			:	OUT STD_LOGIC
			);
			
	end COMPONENT;

	SIGNAL score_display : std_logic_vector(5 downto 0);
	SIGNAL return_score  : STD_LOGIC := '0';
 
	
	

BEGIN							

		over_text_on <= '1' when (return_score = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) 
		and pixel_row <= CONV_STD_LOGIC_VECTOR(30,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(15,10)) and (gameState = "01" or gameState = "10") else'0';
		
		
		score_display <= 

					digit_one when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(320,10)else
					digit_two when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) else 
								

					-- Tens
					CONV_STD_LOGIC_VECTOR(48,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110000" else 	--"0"
					CONV_STD_LOGIC_VECTOR(49,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110001" else 	--"1"
			      CONV_STD_LOGIC_VECTOR(50,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110010" else 	--"2"
					CONV_STD_LOGIC_VECTOR(51,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110011" else 	--"3"
					CONV_STD_LOGIC_VECTOR(52,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110100" else 	--"4"
					CONV_STD_LOGIC_VECTOR(53,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110101" else 	--"5"
					CONV_STD_LOGIC_VECTOR(54,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110110" else	--"6"
					CONV_STD_LOGIC_VECTOR(55,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "110111" else 	--"7"
					CONV_STD_LOGIC_VECTOR(56,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "111000" else	--"8"
					CONV_STD_LOGIC_VECTOR(57,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND digit_two = "111001" else 	--"9"
					
					
					-- Ones  
					CONV_STD_LOGIC_VECTOR(48,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110000" else 	--"0"
					CONV_STD_LOGIC_VECTOR(49,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110001" else 	--"1"
			      CONV_STD_LOGIC_VECTOR(50,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110010" else 	--"2"
					CONV_STD_LOGIC_VECTOR(51,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110011" else 	--"3"
					CONV_STD_LOGIC_VECTOR(52,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110100" else 	--"4"
					CONV_STD_LOGIC_VECTOR(53,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110101" else 	--"5"
					CONV_STD_LOGIC_VECTOR(54,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110110" else	--"6"
					CONV_STD_LOGIC_VECTOR(55,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "110111" else 	--"7"
					CONV_STD_LOGIC_VECTOR(56,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "111000" else	--"8"
					CONV_STD_LOGIC_VECTOR(57,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND digit_one = "111001" 			--"9"
					
					
					;

	
		scoretext : char_rom PORT MAP(
							character_address => score_display,
							font_row=>pixel_row(3 downto 1),
							font_col=>pixel_column(3 downto 1),
							clock => clock_25Mhz,
							rom_mux_output =>return_score
							);

	return_text <= return_score;

END ARCHITECTURE;
