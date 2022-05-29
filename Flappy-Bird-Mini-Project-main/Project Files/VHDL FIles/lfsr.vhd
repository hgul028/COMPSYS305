library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

--used to generate random values for the gaps in the pipes.

ENTITY lfsr IS
	PORT
		( clk: IN STD_LOGIC;
			output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
		  
END lfsr;

architecture behavior of lfsr is

SIGNAL rand_num: STD_LOGIC_VECTOR (7 DOWNTO 0):= "01111111";


	BEGIN 
		process (clk)
		variable temp : STD_LOGIC:= '0';
		BEGIN 
			if (rising_edge(clk)) then
					--rand_num <= "10101111"; 
					temp := rand_num(6) XOR rand_num(4) XOR rand_num(3) XOR rand_num(2) XOR rand_num(0);
					rand_num<= temp & rand_num(7 DOWNTO 1);
			end if;
		end process;
	output <= rand_num;
end behavior;
					
		
