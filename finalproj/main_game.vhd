library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY main_game IS
	PORT
		( 
		SIGNAL sw1, sw0, pb2, leftButton, rightButton, clk, vert_sync	: IN std_logic;
		SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		
		SIGNAL score_ones_out, score_tens_out : OUT std_logic_vector(5 downto 0) := "110000";
		
		SIGNAL textOutput 			: IN std_logic; 
		SIGNAL gameOverText		: IN std_logic; 
		SIGNAL select_game_mode : IN std_logic;  
		signal randNum				: IN std_logic_vector(7 downto 0);
		signal select_train_mode: IN std_logic;
		signal giftDisplay		: IN std_logic;
		signal levelsText			: IN std_logic;
		SIGNAL red, green, blue	: OUT std_logic; 
		SIGNAL mouseReset 			: OUT std_logic := '0'; 
		
	
		SIGNAL gameOver      		: OUT std_logic_vector(1 downto 0); 
		SIGNAL gameStart			: OUT std_logic_vector(1 downto 0); 
		SIGNAL lives_out 			: OUT std_logic_vector(3 downto 0);
		signal levelOut			: OUT std_logic_vector(1 downto 0)
		); 
		  
END main_game;

architecture behavior of main_game is

signal gift : std_logic;
signal giftYPos : std_logic_vector(9 downto 0);
signal giftXPos : std_logic_vector(10 downto 0)  := CONV_STD_LOGIC_VECTOR(700,11);
signal giftSize : std_logic_vector(9 downto 0);
SIGNAL giftXMotion	: std_logic_vector(10 DOWNTO 0);

SIGNAL ball_on					: std_logic;
SIGNAL eye1 : std_logic;
SIGNAL eye2 : std_logic;
SiGNAL eye1XPos				: std_logic_vector(10 DOWNTO 0);
SiGNAL eye2XPos				: std_logic_vector(10 DOWNTO 0);
SiGNAL mouthXPos				: std_logic_vector(10 DOWNTO 0);
SIGNAL eye1Size 				: std_logic_vector(9 DOWNTO 0);
SIGNAL mouthSize				: std_logic_vector(9 DOWNTO 0);
SIGNAL mouth					: std_logic;
SIGNAL background          : std_logic;
SIGNAL gameOverBackground  : std_logic;
SIGNAL mainMenuBackground  : std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);

SIGNAL pipeTop1				: std_logic;
SIGNAL pipeBot1				: std_logic;
SIGNAL pipeTop2				: std_logic;
SIGNAL pipeBot2				: std_logic;
SIGNAL pipeTop3				: std_logic;
SIGNAL pipeBot3				: std_logic;
SIGNAL pipeSpacing 			: std_logic_vector(9 DOWNTO 0);
SIGNAL pipeWidth 				: std_logic_vector(9 DOWNTO 0);
SIGNAL pipeTopGap 			: std_logic_vector(9 DOWNTO 0); 
SIGNAL pipeBotGap 			: std_logic_vector(9 DOWNTO 0); 
SiGNAL pipe1_x_pos			: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SiGNAL pipe2_x_pos			: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SIGNAL pipe_x_motion			: std_logic_vector(10 DOWNTO 0);
signal pipe1XLeft 				: std_logic_vector(10 downto 0) := pipe1_x_pos - pipeWidth - ball_x_pos - size - size;
signal pipe1XRight 			: std_logic_vector(10 downto 0) := pipe1_x_pos + pipeWidth - ball_x_pos;
signal pipe2XLeft 				: std_logic_vector(10 downto 0) := pipe2_x_pos - pipeWidth - ball_x_pos - size - size;
signal pipe2XRight 			: std_logic_vector(10 downto 0) := pipe2_x_pos + pipeWidth - ball_x_pos;


SIGNAL ones_score,tens_score : std_logic_vector(5 downto 0) := "110000";
SIGNAL totalScore : integer := 0;

-- NEW 
SIGNAL lives : std_logic_vector(3 DOWNTO 0) := "0011"; --3 

SIGNAL collision : std_logic := '0';
signal pipes : std_logic;

signal ballPadding : std_logic_vector(9 downto 0);
signal resetScore : std_logic_vector(5 downto 0) := "110000";

signal gameState : std_logic_vector(1 downto 0) := "00";

SIGNAL rand_num1: STD_LOGIC_VECTOR (7 DOWNTO 0):= "01111111";
SIGNAL rand_num_variable1: STD_LOGIC_VECTOR (6 DOWNTO 0):= "1111111";
signal temp1 : std_logic := '0';

SIGNAL rand_num2: STD_LOGIC_VECTOR (7 DOWNTO 0):= "01111111";
SIGNAL rand_num_variable2: STD_LOGIC_VECTOR (6 DOWNTO 0):= "0101010";
signal temp2 : std_logic := '0';

signal derpyBird : std_logic;

BEGIN

giftYPos <= CONV_STD_LOGIC_VECTOR(200,10);
giftSize <= CONV_STD_LOGIC_VECTOR(5,10);   

size <= CONV_STD_LOGIC_VECTOR(8,10);
eye1Size <= CONV_STD_LOGIC_VECTOR(1,10);
ball_x_pos <= CONV_STD_LOGIC_VECTOR(250,11);
eye1XPos <= CONV_STD_LOGIC_VECTOR(254,11);
eye2XPos <= CONV_STD_LOGIC_VECTOR(246,11);
mouthXPos <= CONV_STD_LOGIC_VECTOR(250,11);
mouthSize <= CONV_STD_LOGIC_VECTOR(2,10);

pipeSpacing <= CONV_STD_LOGIC_VECTOR(400,10);
pipeWidth <= CONV_STD_LOGIC_VECTOR(20,10);
pipeTopGap <= CONV_STD_LOGIC_VECTOR(170,10);
pipeBotGap <= CONV_STD_LOGIC_VECTOR(250,10);

ballPadding <= CONV_STD_LOGIC_VECTOR(3,10);

ball_on <= '1' when ( ('0' & pixel_column + size >= '0' & ball_x_pos) 
					and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and (pixel_row + size >= '0' & ball_y_pos) 
					and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			  '0';

eye1 <= '1' when ( ('0' & pixel_column + eye1Size >= '0' & eye1XPos) 
					and ('0' & pixel_column <= '0' & eye1XPos + eye1Size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and (pixel_row + eye1Size >= '0' & ball_y_pos - CONV_STD_LOGIC_VECTOR(2,10)) 
					and ('0' & pixel_row <= ball_y_pos + eye1Size - CONV_STD_LOGIC_VECTOR(2,10)) )  else	-- y_pos - size <= pixel_row <= y_pos + size
'0';

eye2 <= '1' when ( ('0' & pixel_column + eye1Size >= '0' & eye2XPos) 
					and ('0' & pixel_column <= '0' & eye2XPos + eye1Size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and (pixel_row + eye1Size >= '0' & ball_y_pos - CONV_STD_LOGIC_VECTOR(2,10)) 
					and ('0' & pixel_row <= ball_y_pos + eye1Size - CONV_STD_LOGIC_VECTOR(2,10)) )  else	-- y_pos - size <= pixel_row <= y_pos + size
'0';

mouth <= '1' when ( ('0' & pixel_column + mouthSize >= '0' & mouthXPos) 
					and ('0' & pixel_column <= '0' & mouthXPos + mouthSize) 	-- x_pos - size <= pixel_column <= x_pos + size
					and (pixel_row + mouthSize >= '0' & ball_y_pos + CONV_STD_LOGIC_VECTOR(3,10)) 
					and ('0' & pixel_row <= ball_y_pos + mouthSize + CONV_STD_LOGIC_VECTOR(3,10)) )  else	-- y_pos - size <= pixel_row <= y_pos + size
'0';

gift <= '1' when ( ('0' & pixel_column + giftSize >= '0' & giftXPos) 
					and ('0' & pixel_column <= '0' & giftXPos + giftSize) 	-- x_pos - size <= pixel_column <= x_pos + size
					and (pixel_row + giftSize >= '0' & giftYPos) 
					and ('0' & pixel_row <= giftYPos + giftSize))  else	-- y_pos - size <= pixel_row <= y_pos + size
'0';
			  
background <= '1' when (pixel_row >= 0 and pixel_row <= 479) or (pixel_column >= 0 and pixel_column <= 639) else
				  '0';

gameOverBackground <= '1' when (pixel_row >= 0 and pixel_row <= 479) or (pixel_column >= 0 and pixel_column <= 639) else
				  '0';
			
mainMenuBackground <= '1' when (pixel_row >= 0 and pixel_row <= 479) or (pixel_column >= 0 and pixel_column <= 639) else
				  '0';
			  
pipeBot1 <= '1' when ( pixel_row >= pipeTopGap + rand_num1 and pixel_row <= pipeBotGap + rand_num1) 
				else	-- y_pos - size <= pixel_row <= y_pos + size
			  '0';
			  
			  
pipeTop1 <= '0' when (( '1' & pixel_column + pipeWidth >= '1' & pipe1_x_pos) and 
							('1' & pixel_column <= '1' & pipe1_x_pos + pipeWidth))
							else	-- y_pos - size <= pixel_row <= y_pos + size
							'1';	
							
pipeBot2 <= '1' when ( pixel_row >= pipeTopGap + rand_num2 and pixel_row <= pipeBotGap + rand_num2) else	-- y_pos - size <= pixel_row <= y_pos + size
			  '0';	
			  
pipeTop2 <= '0' when (( '1' & pixel_column + pipeWidth >= '1' & pipe2_x_pos + pipeSpacing) and 
							('1' & pixel_column <= '1' & pipe2_x_pos + pipeSpacing + pipeWidth)) else	-- y_pos - size <= pixel_row <= y_pos + size
							'1';

pipes <= ((not pipeBot1 and not pipeTop1) or (not pipeBot2 and not pipeTop2));

derpyBird <= (not eye1 and not eye2 and not mouth);


Move_Ball: process (vert_sync)
variable tick : std_logic := '0';
variable incrementScore : std_logic := '0';
variable incrementScore2 : std_logic := '0';
variable collision : std_logic := '0';
variable currentLevel : std_logic_vector(1 downto 0) := "00";
variable giftCollision : std_logic := '0';

begin
		Red <= not mainMenuBackground;
		Green <= not mainMenuBackground or not select_train_mode;
		Blue <= not mainMenuBackground;
		
	
		-- Main menu selection of training mode
		if (gameState = "00" and sw0 = '1') then
			Red <= not mainMenuBackground or not select_game_mode;
			Green <= not mainMenuBackground;
			Blue <= not mainMenuBackground or not select_train_mode;
		end if;
		
		-- Main Menu selection of normal mode
		if (gameState = "00" and sw0 = '0') then
			Red <= not mainMenuBackground;
			Green <= not mainMenuBackground or not select_game_mode;
			Blue <= not mainMenuBackground or not select_game_mode;
		end if;
		
		-- Normal mode
		if (gameState = "01") then 
				Red <= derpyBird and (background or ball_on) and ((not pipes) or (gift) or (levelsText) or (textOutput));
				Green <= derpyBird and (background or ball_on or pipes) and (not gift) and (not levelsText) and (not textOutput);
				Blue <= derpyBird and (background and (not ball_on) and ((not pipes)  or (gift) or (levelsText) or (textOutput)));	
			if (giftCollision = '1') then
				Red <= derpyBird and (background or ball_on) and ((not pipes) or (levelsText) or (textOutput));
				Green <= derpyBird and (background or ball_on or pipes) and (not levelsText) and (not textOutput);
				Blue <= derpyBird and (background and (not ball_on) and ((not pipes)  or (levelsText) or (textOutput)));
			end if;
		end if;
		
		-- Training mode
		if (gameState = "10") then
			Red <= derpyBird and ((background) and ((not pipes or ball_on) or ( textOutput)));
			Green <=  derpyBird and ((background or ball_on or pipes) and (not textOutput));
			Blue <= derpyBird and (background and (not ball_on) and ((not pipes) or (textOutput)));
		end if;	
		
		-- Game over
		if (gameState = "11") then 
			gameOver <= gameState;
			Red <= not gameOverBackground or not gameOverText;
			Green <= not gameOverBackground;
			Blue <= not gameOverBackground;
		end if;


		-- Move ball once every vertical sync
		if (rising_edge(vert_sync)) then

		

		--STATE CHANGES
			-- Initialise to training mode
			if (sw0 = '1' and rightButton = '1') then
				gameState <= "10";
				incrementScore := '0';
				incrementScore2 := '0';
				lives <= "0011";
				ball_y_pos <= CONV_STD_LOGIC_VECTOR(50, 10);
			end if;
			
			-- Initialise to normal game mode
			if (sw0 = '0' and rightButton = '1') then
				gameState <= "01";
				incrementScore := '0';
				incrementScore2 := '0';
				lives <= "0011";
				ball_y_pos <= CONV_STD_LOGIC_VECTOR(50,10);
			end if;
			
			if (pb2 = '0' and gameState = "11") then
				gameState <= "00";
			end if;
			
			if (gameState = "00") then
				lives <= "0011";
				totalScore <= 0;
			end if;
			
			if (gameState = "01" or gameState = "10") then
				gameStart <= gameState;
				pipe_x_motion <= CONV_STD_LOGIC_VECTOR(2,11);
				giftXMotion <= CONV_STD_LOGIC_VECTOR(1,11);

				if (gameState = "01") then
					pipe_x_motion <= CONV_STD_LOGIC_VECTOR(3,11);
					currentLevel := "00";
					if (totalScore >= 5 and totalScore < 10) then
						pipe_x_motion <= CONV_STD_LOGIC_VECTOR(4,11);
						currentLevel := "01";
					elsif (totalScore >= 10 and totalScore < 15) then
						pipe_x_motion <= CONV_STD_LOGIC_VECTOR(5,11);
						currentLevel := "10";
					elsif (totalScore >= 15 and totalScore < 20) then
						pipe_x_motion <= CONV_STD_LOGIC_VECTOR(7,11);
						currentLevel := "11";
					end if;
					
					levelOut <= currentLevel;
				end if;


				pipe1_x_pos <= pipe1_x_pos - pipe_x_motion;
				pipe2_x_pos <= pipe2_x_pos - pipe_x_motion;
				

				if((pipe1_x_pos + pipeWidth) <=  '1' & CONV_STD_LOGIC_VECTOR(0,10)) then  
					pipe1_x_pos <= '1' & CONV_STD_LOGIC_VECTOR(640,10) + pipeWidth + pipeSpacing;
					temp1 <= rand_num1(6) XOR rand_num1(4) XOR rand_num1(3) XOR rand_num1(2) XOR rand_num1(0);
					rand_num1 <= temp1 & rand_num_variable1;
					incrementScore := '0';	
				end if;
				if((pipe2_x_pos + pipeWidth + pipeSpacing) <=  '1' & CONV_STD_LOGIC_VECTOR(0,10)) then  
					pipe2_x_pos <= '1' & CONV_STD_LOGIC_VECTOR(640,10) + pipeWidth;
					temp2 <= rand_num2(6) XOR rand_num2(4) XOR rand_num2(3) XOR rand_num2(2) XOR rand_num2(0);
					rand_num2 <= temp2 & rand_num_variable2;
					incrementScore2 := '0';	
				end if;
				
				if ((giftXPos + giftSize <= '1' & CONV_STD_LOGIC_VECTOR(0,10))) then
					giftXPos <= '1' & CONV_STD_LOGIC_VECTOR(700,10) + giftSize;
				end if;
				
			end if;
			
				
			if (ones_score > "111001") then
				ones_score <= "110000";
				tens_score <= tens_score + "000001";
			end if;

			-- Score and lives outputs
			score_ones_out <= ones_score;
			score_tens_out <= tens_score;

			lives_out <= lives; 
				
				
			-- Game over if lives gone
			if (gameState = "10" and lives = "0000") then
				gameState <= "11";
				lives_out <= "0011";

				ball_y_pos <= CONV_STD_LOGIC_VECTOR(50,10);
				pipe1_x_pos <= CONV_STD_LOGIC_VECTOR(0,11);
				pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(0,11);
				pipe_x_motion <= CONV_STD_LOGIC_VECTOR(0,11);
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				ones_score <= "110000";
				totalScore <= 0;

				
			end if;
			
			if ((ball_x_pos + size >= pipe1XLeft) and (ball_x_pos + size <= pipe1XRight)) then
				incrementScore := '0';

			end if;

			if ((ball_x_pos + size >= pipe2XLeft + pipeSpacing) and (ball_x_pos + size <= pipe2XRight + pipeSpacing)) then
				incrementScore2 := '0';

			end if;
		
							giftXPos <= giftXPos - giftXMotion;

				-- Gift collision
				if ((ball_x_pos + size >= giftXPos - giftSize) and (ball_x_pos + size <= giftXPos + giftSize)) then
					if ((ball_y_pos - size <= giftYPos + giftSize ) or (ball_y_pos + size >= giftYPos - giftSize)) then
						giftCollision := '1';
						ones_score <= ones_score + "000001";
						giftXPos <= CONV_STD_LOGIC_VECTOR(700,11);
					end if;
				end if;
				
				
			if (leftButton = '1' and (gameState = "01" or gameState = "10") and sw1 = '0') then
				-- Bounce off top or bottom of the screen
				
				if (ball_y_pos <= size) then
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
				end if; 
				
				
				ball_y_pos <= ball_y_pos + ball_y_motion - "000011111";
				
				
				mouseReset <= '1';
				
				
				
			elsif (leftButton = '0' and (gameState = "01" or gameState = "10")) then
				if (ball_y_pos <= size) then
					ball_y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
				elsif ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479, 10) - size) then
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				elsif (sw1 = '1') then
						pipe_x_motion <= CONV_STD_LOGIC_VECTOR(0,11);
						ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
				elsif (sw1 = '0') then
					ball_y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
				end if;
				-- Compute next ball Y position
				ball_y_pos <= ball_y_pos - ball_y_motion;
				
				mouseReset <= '0';

				 
					 -- hits the bottom or top of screen: This part works
				if (ball_y_pos+size >= CONV_STD_LOGIC_VECTOR(480,10) or ball_y_pos+size <= CONV_STD_LOGIC_VECTOR(0,10))then
					if (gameState = "10" and collision = '0') then

						--decreases lives if collision occurs  
						lives <= lives - "0001";
						collision := '1'; 
					

					elsif (gameState = "01") then
						gameState <= "11";
						ball_y_pos <= CONV_STD_LOGIC_VECTOR(50,10);
						pipe1_x_pos <= CONV_STD_LOGIC_VECTOR(0,11);
						pipe2_x_pos <= CONV_STD_LOGIC_VECTOR(0,11);
						ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
						pipe_x_motion <= CONV_STD_LOGIC_VECTOR(0,11);
						ones_score <= "110000";
						totalScore <= 0;
						
					end if;
				end if ;
		end if;
end if;
end process Move_Ball;
end behavior;

