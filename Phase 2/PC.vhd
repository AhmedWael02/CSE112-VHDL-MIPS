library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    port(
        signal CLK, RESET : in std_logic;
        signal Address 	  : in std_logic_vector(31 downto 0);
        signal PC 		  : out std_logic_vector(31 downto 0)
    );
end PC;


architecture Behavioral of PC is
    signal instructionAddress : std_logic_vector(31 downto 0) := X"00000000";
    
    begin

        PC_Process : process(CLK, RESET)
            begin

                if RISING_EDGE(CLK) then
                    instructionAddress <= Address;
                end if;

                if RESET = '1' then
                    instructionAddress <= X"00000000";
                end if;
        end process;

        PC <= instructionAddress;
end Behavioral ;