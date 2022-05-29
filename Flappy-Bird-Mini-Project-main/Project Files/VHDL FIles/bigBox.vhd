LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY box IS
	PORT
		( clk 						: IN std_logic;
		  pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  red, green, blue 			: OUT std_logic);		
END box;

architecture behavior of box is

SIGNAL box_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL box_y_pos, box_x_pos	: std_logic_vector(9 DOWNTO 0);

BEGIN           

size <= CONV_STD_LOGIC_VECTOR(8,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
box_x_pos <= CONV_STD_LOGIC_VECTOR(200,10);
box_y_pos <= CONV_STD_LOGIC_VECTOR(350,10);


box_on <= '1' when ( ('0' & box_x_pos <= pixel_column + size) and ('0' & pixel_column <= box_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & box_y_pos <= pixel_row + size) and ('0' & pixel_row <= box_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';


-- Colours for pixel data on video signal
-- Keeping background white and square in red
Red <=  '1';
-- Turn off Green and Blue when displaying square
Green <= not box_on;
Blue <=  not box_on;

END behavior;

