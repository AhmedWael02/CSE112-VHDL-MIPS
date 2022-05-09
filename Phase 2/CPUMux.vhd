library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPUMux is
    Port ( Selector : in  STD_LOGIC;
			  i0       : in  STD_LOGIC_VECTOR (31 downto 0);
           i1       : in  STD_LOGIC_VECTOR (31 downto 0);
           Output   : out STD_LOGIC_VECTOR (31 downto 0));
end CPUMux;

architecture Behavioral of CPUMux is

begin

	Output <= i0 when Selector = '0' else
				 i1 when Selector = '1' else
				 (others => 'Z');

end Behavioral;