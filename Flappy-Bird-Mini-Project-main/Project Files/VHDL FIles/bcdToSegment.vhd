library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity bcdToSegment is
  Port ( 
    BCDin : in STD_LOGIC_VECTOR (3 downto 0);
    sevenSegment : out STD_LOGIC_VECTOR (7 downto 0));
end bcdToSegment;
 
architecture beh of bcdToSegment is
 
begin
 
  process(BCDin)
    begin
 
		--sevenSegment <= "11000000";
    case BCDin is
      when "0000" =>
        sevenSegment <= "11000000"; --0
      when "0001" =>
        sevenSegment <= "11111001"; --1
      when "0010" =>
        sevenSegment <= "10100100"; --2
      when "0011" =>
        sevenSegment <= "10110000"; --3
      when "0100" =>
        sevenSegment <= "10011001"; --4
      when "0101" =>
        sevenSegment <= "10010010"; --5
      when "0110" =>
        sevenSegment <= "10000010"; --6
      when "0111" =>
        sevenSegment <= "11111000"; --7
      when "1000" =>
        sevenSegment <= "10000000"; --8
      when "1001" =>
        sevenSegment <= "10010000"; --9
      when others =>
        sevenSegment <= "11111111"; --null
      end case;
   
  end process;
end beh;
