library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux5x1 is
    Port ( S 		: in   STD_LOGIC;
           i0		: in  STD_LOGIC_VECTOR (4 downto 0);
			  i1 		: in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end Mux5x1;

architecture Behavioral of Mux5x1 is

begin

  output <=	i0  when S = '0' else
				i1  when S = '1' else
				(others => 'Z');

end Behavioral;