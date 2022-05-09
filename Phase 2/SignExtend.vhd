library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtend is
    Port ( Input  : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (31 downto 0));
end SignExtend;

architecture Behavioral of SignExtend is
begin

	Output <= "0000000000000000" & Input WHEN Input(15) = '0' ELSE
			    "1111111111111111" & Input WHEN Input(15) = '1' ELSE
			    (Others => 'Z');


end Behavioral;