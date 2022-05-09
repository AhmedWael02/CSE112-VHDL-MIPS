library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftLeft2 is
    Port ( Input  : in   STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end ShiftLeft2;

architecture Behavioral of ShiftLeft2 is
begin

	Output(31)          <= Input(31);
	Output(30 downto 2) <= Input(28 downto 0);
	Output(1 downto 0)  <= (Others => '0');

end Behavioral;