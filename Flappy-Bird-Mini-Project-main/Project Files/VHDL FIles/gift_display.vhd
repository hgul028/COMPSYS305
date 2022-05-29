library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

entity bouncy_gift is
	PORT
		( 
		SIGNAL vert_sync, collision: IN std_logic;
		SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL gift_display : OUT std_logic; 
		SIGNAL gift_x_pos_output : OUT std_logic_vector(10 DOWNTO 0);  
		SIGNAL score_ones_out, score_tens_out : OUT std_logic_vector(5 downto 0) := "110000");
end entity bouncy_gift;


architecture behavior of bouncy_gift is

SIGNAL gift_size, gift_y_size,gift_y_pos : std_logic_vector(9 downto 0);
SIGNAL gift_x_pos : std_logic_vector(10 downto 0);
SIGNAL gift_on					: std_logic;
		
BEGIN   
	-- gift size and initial position 
	gift_size <= CONV_STD_LOGIC_VECTOR(4,10);
	gift_x_pos <= CONV_STD_LOGIC_VECTOR(250,11);
	gift_y_pos <= CONV_STD_LOGIC_VECTOR(25,10);

 
display_gift : process(vert_sync)
 begin
    if ((pixel_column + gift_size >= gift_x_pos) 
		and (pixel_column <= gift_x_pos + gift_size) 	
		and (pixel_row + gift_size >= gift_y_pos) 
		and (pixel_row <= gift_y_pos + gift_size)) then 
				gift_display <= '1'; 
			
	 end if; 
end process display_gift;	 

END behavior;

