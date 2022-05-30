library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

entity gift is
	port(	signal vert_sync								: in std_logic;
			signal pixel_row, pixel_column			: in std_logic_vector(9 DOWNTO 0);
			signal gift_display 							: out std_logic; 
			signal gift_x_pos_output 					: out std_logic_vector(10 DOWNTO 0);  
			signal score_ones_out, score_tens_out 	: out std_logic_vector(5 downto 0) := "110000"	);
end entity gift;


architecture behavior of gift is

signal gift_size, gift_y_size, gift_y_pos : std_logic_vector(9 downto 0);
signal gift_x_pos 								: std_logic_vector(10 downto 0);
--signal gift_enable	gift y size too							: std_logic;
		
begin

	-- declare size and position
	gift_size <= CONV_STD_LOGIC_VECTOR(4,10);
	gift_x_pos <= CONV_STD_LOGIC_VECTOR(250,11);
	gift_y_pos <= CONV_STD_LOGIC_VECTOR(25,10);

 
display_gift : process(vert_sync)
 begin
		if ((pixel_column + gift_size >= gift_x_pos) and (pixel_column <= gift_x_pos + gift_size) and (pixel_row + gift_size >= gift_y_pos) and (pixel_row <= gift_y_pos + gift_size)) 
		then gift_display <= '1'; 
		end if; 
		
	end process display_gift;
end behavior;

