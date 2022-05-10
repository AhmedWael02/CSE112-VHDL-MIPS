library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUControlUnit is
    Port ( FunctionCode : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp        : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUFunct     : out STD_LOGIC_VECTOR (3 downto 0));
end ALUControlUnit;

architecture Behavioral of ALUControlUnit is
begin



ALUFunct(3) <= (ALUOp(1) AND FunctionCode(0) AND FunctionCode(1) AND FunctionCode(5)); 

ALUFunct(2) <= ALUOp(0) OR (ALUOp(1) AND FunctionCode(1));

ALUFunct(1) <= NOT ALUOp(1) OR ((NOT FunctionCode(2)) AND NOT(FunctionCode(0)));

ALUFunct(0) <= (FunctionCode(3) OR FunctionCode(0)) AND (NOT (FunctionCode(1) AND FunctionCode(0))) AND ALUOp(1);


end Behavioral;