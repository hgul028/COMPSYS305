library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_SIGNED.all; 
use IEEE.NUMERIC_STD.all; 



ENTITY text_display is 
	PORT(
		clock_25Mhz : IN STD_LOGIC;
		pixel_row, pixel_column: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		ones_score, tens_score:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		gameState : in std_LOGIC_VECTOR(1 DOWNTO 0);
		over_text_on : OUT STD_LOGIC;
		output_text : OUT STD_LOGIC	
	  );
END ENTITY text_display;



ARCHITECTURE BEHAVIOUR of text_display is

	COMPONENT char_rom
		PORT 
			(
				character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
				font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				clock				: 	IN STD_LOGIC ;
				rom_mux_output		:OUT STD_LOGIC
			);
			
	end COMPONENT;

	SIGNAL score_display : std_logic_vector(5 downto 0);
	SIGNAL output_score  : STD_LOGIC := '0';
 
	
	

BEGIN							
--
--		over_text_on <= '1' when (output_score = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(335,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(320,10) 
--		and pixel_row <= CONV_STD_LOGIC_VECTOR(45,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(30,10)) and gameState = "00" else'0';

		over_text_on <= '1' when (output_score = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) 
		and pixel_row <= CONV_STD_LOGIC_VECTOR(30,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(15,10)) and (gameState = "01" or gameState = "10") else'0';
		
		
	score_display <= 
--					CONV_STD_LOGIC_VECTOR(19,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(302,10) else --"S"
				--	CONV_STD_LOGIC_VECTOR(19,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(19,6) else --"S"
				--CONV_STD_LOGIC_VECTOR(19,6) when ((pixel_column >= CONV_STD_LOGIC_VECTOR(302,10) and pixel_column <= CONV_STD_LOGIC_VECTOR(334,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(46,10) and pixel_row <= CONV_STD_LOGIC_VECTOR(62,10))) else -- S
					
				
--					CONV_STD_LOGIC_VECTOR(3,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(318,10) else --"C"
--					CONV_STD_LOGIC_VECTOR(15,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(334,10) else --"O"
--					CONV_STD_LOGIC_VECTOR(18,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(350,10) else --"R"
--					CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(366,10) else --"E"
					--CONV_STD_LOGIC_VECTOR(58,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(382,10) else --":"
					ones_score when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(320,10)else 							--"ones_score"
					tens_score when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(304,10) else 							--"tens_score"
					--"100000" when pixel_column <= CONV_STD_LOGIC_VECTOR(414,10) else									--" space 
					
			
					-- for tens
					CONV_STD_LOGIC_VECTOR(48,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110000" else --"0"
					CONV_STD_LOGIC_VECTOR(49,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110001" else --"1"
			      CONV_STD_LOGIC_VECTOR(50,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110010" else --"2"
					CONV_STD_LOGIC_VECTOR(51,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110011" else --"3"
					CONV_STD_LOGIC_VECTOR(52,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110100" else --"4"
					CONV_STD_LOGIC_VECTOR(53,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110101" else --"5"
					CONV_STD_LOGIC_VECTOR(54,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110110" else-- "6"
					CONV_STD_LOGIC_VECTOR(55,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "110111" else --"7"
					CONV_STD_LOGIC_VECTOR(56,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "111000" else--"8"
					CONV_STD_LOGIC_VECTOR(57,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(320,10) AND tens_score = "111001" else --"9"
					
					
					
						-- for ones  
					CONV_STD_LOGIC_VECTOR(48,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110000" else --"0"
					CONV_STD_LOGIC_VECTOR(49,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110001" else --"1"
			      CONV_STD_LOGIC_VECTOR(50,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110010" else --"2"
					CONV_STD_LOGIC_VECTOR(51,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110011" else --"3"
					CONV_STD_LOGIC_VECTOR(52,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110100" else --"4"
					CONV_STD_LOGIC_VECTOR(53,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110101" else --"5"
					CONV_STD_LOGIC_VECTOR(54,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110110" else-- "6"
					CONV_STD_LOGIC_VECTOR(55,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "110111" else --"7"
					CONV_STD_LOGIC_VECTOR(56,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "111000" else--"8"
					CONV_STD_LOGIC_VECTOR(57,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(336,10) AND ones_score = "111001" --"9"
					
					
					;

	
		scoretext : char_rom PORT MAP(
							character_address => score_display,
							font_row=>pixel_row(3 downto 1),
							font_col=>pixel_column(3 downto 1),
							clock => clock_25Mhz,
							rom_mux_output =>output_score
							);

	output_text <= output_score;

END ARCHITECTURE;
