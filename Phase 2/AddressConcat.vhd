library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JumpAddressConcat is
    Port ( InputLeft  : in   STD_LOGIC_VECTOR (31 downto 0);
			  InputRight  : in   STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end JumpAddressConcat;

architecture Behavioral of JumpAddressConcat is
begin

	Output <= InputLeft(31 downto 28) & InputRight(27 downto 0);

end Behavioral;