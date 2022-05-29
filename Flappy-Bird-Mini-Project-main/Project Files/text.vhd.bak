library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all 

ENTITY TEXT_DISPLAY IS  
	PORT(
	   pixel_row, pixel_col : IN std_logic_vector (9 DOWNTO 0);-- (10DOWNTO0)? 
		sw0 : IN std_logic;
		ones_score, tens_score : IN std_logic_vector(3 DOWNTO 0)
		enable: IN std_logic;
		clock_25Mhz : IN std_logic;

		
	    );
END ENTITY TEXT_DISPLAY;

ARCHITECTURE BEHAVIOUR OF TEXT_DISPLAY IS

	COMPONENT char_rom 
		port{
		character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		rom_mux_output		:	OUT STD_LOGIC
		}
		
	 END COMPONENT;
	 
		SIGNAL select_font_row, select_font_col : std_logic_vector (2 DOWNTO 0);
		SIGNAL char_address : std_logic_vector (5 DOWNTO 0);
		SIGNAL char_data_int : std_logic;
		
		
BEGIN 
		char_data:char_rom 
			port map(
				character_address => char_address,
				font_row=> select_font_row,
				font_col=> select_font_col,
				clock => clock_25Mhz, 
				rom_mux_output => char_data_int
				);
			
				
