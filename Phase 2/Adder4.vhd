library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder4 is
    Port ( Input  : in   STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end Adder4;

architecture Behavioral of Adder4 is

begin
	
	Output <= STD_LOGIC_VECTOR(signed(Input) + 4);
	
end Behavioral;

