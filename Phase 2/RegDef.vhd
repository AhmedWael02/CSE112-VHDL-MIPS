library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RegDef is

    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0) ;
           rst : in  STD_LOGIC ;
			  clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
			  increment : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0) );
end RegDef;

architecture Behavioral of RegDef is
signal temporary : std_logic_vector (31 downto 0) :=x"00000000"; 	
begin

	process (clk, rst) 
		begin
			if (rst = '1') then
				temporary <= (others => '0');
			elsif (FALLING_EDGE(clk) and load = '1') then
				temporary <= input;
				elsif (FALLING_EDGE(clk) and increment = '1') then
				temporary <= STD_LOGIC_VECTOR(signed(temporary) + 1);
			
			end if;
		end process;
	
	output <= temporary;
	
end Behavioral;