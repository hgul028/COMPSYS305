library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_SIGNED.all; 
use IEEE.NUMERIC_STD.all; 



entity score_text_display is

	port(	clock_25Mhz 				: in std_logic;
			pixel_row, pixel_column	: in std_logic_vector (9 downto 0);
			ones_score, tens_score	: in std_logic_vector(5 downto 0);
			gameState 					: in std_logic_vector(1 downto 0);
			over_text_on 				: out std_logic;
			output_text 				: out std_logic	);
			
end entity score_text_display;



architecture behaviour of score_text_display is

	component char_rom
		port (	character_address		:	in std_logic_vector (5 downto 0);
					font_row, font_col	:	in std_logic_vector (2 downto 0);
					clock						: 	in std_logic ;
					rom_mux_output			:	out std_logic	);
			
	end component;

	signal score_display : std_logic_vector(5 downto 0);
	signal output_score  : std_logic := '0';
 
	
	

begin							
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

	
		scoretext : char_rom port map(	character_address => score_display,
													font_row=>pixel_row(3 downto 1),
													font_col=>pixel_column(3 downto 1),
													clock => clock_25Mhz,
													rom_mux_output =>output_score	);

	output_text <= output_score;

end architecture;
