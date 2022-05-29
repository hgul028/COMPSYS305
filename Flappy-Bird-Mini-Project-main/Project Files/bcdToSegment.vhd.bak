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
 
    case BCDin is
      when "0000" =>
        sevenSegment <= "00000010"; --0
      when "0001" =>
        sevenSegment <= "10011110"; --1
      when "0010" =>
        sevenSegment <= "00100100"; --2
      when "0011" =>
        sevenSegment <= "00001100"; --3
      when "0100" =>
        sevenSegment <= "10011000"; --4
      when "0101" =>
        sevenSegment <= "01001000"; --5
      when "0110" =>
        sevenSegment <= "01000000"; --6
      when "0111" =>
        sevenSegment <= "00011110"; --7
      when "1000" =>
        sevenSegment <= "00000000"; --8
      when "1001" =>
        sevenSegment <= "00001000"; --9
      when others =>
        sevenSegment <= "11111110"; --null
      end case;
   
  end process;
end beh;
