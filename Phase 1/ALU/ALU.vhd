library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

entity ALU is

    Port ( data1   : in  STD_LOGIC_VECTOR (31 downto 0);
           data2   : in  STD_LOGIC_VECTOR (31 downto 0);
			  aluop   : in  STD_LOGIC_VECTOR (3 downto 0);
			  cin     : in  STD_LOGIC; 
			  dataout : out STD_LOGIC_VECTOR (31 downto 0);
			  cflag   : out STD_LOGIC;
			  zflag   : out STD_LOGIC;
           oflag   : out STD_LOGIC);
           
			  
end ALU;

architecture Behavioral of ALU is

begin

	process(data1,data2,aluop,cin)
	variable temp : STD_LOGIC_VECTOR (32 downto 0);
	variable outvariable : STD_LOGIC_VECTOR (31 downto 0);
	
	variable cvariable, zvariable, cintemp : STD_LOGIC;
		BEGIN
		cflag <= '0';
		oflag <= '0';
		temp := "000000000000000000000000000000000";
		zvariable := '0'; 	
	
			case aluop is
			
			   ------addition-----------
				when "0010" =>
				cintemp := cin;
				temp := ('0' & data1) + ('0' & data2) + cintemp;
				outvariable := temp (31 downto 0);
				cvariable := temp(32);
				oflag <= (data1(31) AND data2(31) AND NOT(outvariable(31))) OR (NOT(data1(31)) AND NOT(data2(31)) AND outvariable(31));
				cflag <= cvariable;
				---------------------
				
				------subtraction-----------
				when "0110" =>
				cintemp := '1';
				temp := ('0' & data1) + ('0' & NOT(data2)) + cintemp;
				outvariable := temp (31 downto 0);
				cvariable := NOT(temp(32));
				oflag <= (data1(31) AND NOT(data2(31)) AND NOT(outvariable(31))) OR (NOT(data1(31)) AND data2(31) AND outvariable(31));
				cflag <= cvariable;
				---------------------
				
				------AND-----------
				when "0000" =>
				outvariable := data1 and data2;
				---------------------
				
				------OR-----------
				when "0001" =>
				outvariable := data1 or data2;
				---------------------
				
				------NOR-----------
				when "1100" =>
				outvariable := data1 nor data2;
				---------------------
				
				when others =>
				outvariable := "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				
			end case;
			
			--zero output check--
			for i in 0 to 31 loop
				zvariable := zvariable or outvariable(i);
			end loop;
			---------------------
			
			dataout <= outvariable;
			zflag <= not zvariable;
			
	END PROCESS;
			


end Behavioral;