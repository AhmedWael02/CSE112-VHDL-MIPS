LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY ALUTest IS
END ALUTest;
 
ARCHITECTURE behavior OF ALUTest IS 

 
    COMPONENT ALU
    PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
    END COMPONENT;
    

   signal data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

   signal dataout : std_logic_vector(31 downto 0);
   signal cflag : std_logic;
   signal zflag : std_logic;
   signal oflag : std_logic;

 
BEGIN

   uut: ALU PORT MAP (
          data1 => data1,
          data2 => data2,
          aluop => aluop,
          cin => cin,
          dataout => dataout,
          cflag => cflag,
          zflag => zflag,
          oflag => oflag
        );

 

-- Stimulus process
      stim_proc: process
begin		
      
     		wait for 10 ns;
		--AND testcase1
			data1 <= "11000000000000000000000000000000" ;
			data2 <= "10100000000000000000000000000000" ;
			aluop <= "0000" ;
			wait for 10 ns;
			report "Test1";
			assert(dataout = "10000000000000000000000000000000" and zflag = '0') report "1:Fail" severity error;

			wait for 1 ns;
			
		--AND testcase2
			data1 <= x"0F0F0F0F";
			data2 <= x"F0F0F0FF";
			aluop <= "0000" ;
			wait for 10ns;
			report "Test2";
			assert(dataout = x"0000000F" and zflag = '0') report "2:Fail" severity error;
			
			wait for 1 ns;
		
		--OR testcase1
			data1 <= "11000000000000000000000000000000" ;
			data2 <= "10100000000000000000000000000000" ;
			aluop <= "0001" ;
			wait for 10 ns;
			report "Test3";
			assert(dataout = "11100000000000000000000000000000" and zflag = '0') report "3:Fail" severity error;

			wait for 1 ns;
			
		--OR testcase2
			data1 <= x"0F0F0F0F";
			data2 <= x"F0F0F0FF";
			aluop <= "0001" ;
			wait for 10ns;
			report "Test4";
			assert(dataout = x"FFFFFFFF" and zflag = '0') report "5:Fail" severity error;
			
			wait for 1 ns;
			
		--NOR testcase1
			data1 <= "11000000000000000000000000000000" ;
			data2 <= "10100000000000000000000000000000" ;
			aluop <= "1100" ;
			wait for 10 ns;
			report "Test6";
			assert(dataout = "00011111111111111111111111111111" and zflag = '0') report "6:Fail" severity error;

			wait for 1 ns;
			
		--NOR testcase2
			data1 <= x"0F0F0F0F";
			data2 <= x"F0F0F0FF";
			aluop <= "1100" ;
			wait for 10ns;
			report "Test7";
			assert(dataout = x"00000000" and zflag = '1') report "7:Fail" severity error;
			
			wait for 1 ns;
		
		--ADD testcase1 (overflow = 1, cout = 0)
			data1 <= "01110000000000000000000000000000" ;
			data2 <= "01100000000000000000000000000000" ;
			aluop <= "0010" ;
			wait for 10 ns;
			report "Test8";
			assert(dataout = "11010000000000000000000000000000" and oflag = '1' and cflag = '0' and zflag = '0') report "8:Fail" severity error;

			wait for 1 ns;
		
		--ADD testcase2 (zero = 1, cout = 1)
			data1 <= "11110000000000000000000000000000" ;
			data2 <= "00010000000000000000000000000000" ;
			aluop <= "0010" ;
			wait for 10 ns;
			report "Test9";
			assert(dataout = "00000000000000000000000000000000" and oflag = '0' and cflag = '1' and zflag = '1') report "9:Fail" severity error;

			wait for 1 ns;
			
		--ADD testcase3 (cout = 0)
			data1 <= x"00000009";
			data2 <= x"0000000A";
			aluop <= "0010" ;
			wait for 10ns;
			report "Test10";
			assert(dataout = "00000000000000000000000000010011" and oflag = '0' and cflag = '0' and zflag = '0') report "10:Fail" severity error;
			
			wait for 1 ns;
			
		--ADD testcase4 (cout = 1)
			data1 <= x"FFFFFFF9";
			data2 <= x"FFFFFFFA";
			aluop <= "0010" ;
			wait for 10ns;
			report "Test11";
			assert(dataout = "11111111111111111111111111110011" and oflag = '0' and cflag = '1' and zflag = '0') report "11:Fail" severity error;
			
			wait for 1 ns;
			
		--ADD testcase5 (overflow =1 cout = 0)
			data1 <= x"7FFFFFFF";
			data2 <= x"7FFFFFFF";
			aluop <= "0010" ;
			wait for 10ns;
			report "Test12";
			assert(dataout = "11111111111111111111111111111110" and oflag = '1' and cflag = '0' and zflag = '0') report "12:Fail" severity error;
			
			wait for 1 ns;

		--SUB testcase1 (cout = 0)
			data1 <= "00000000000000000000000000000111" ; --a = 7
			data2 <= "00000000000000000000000000000110" ; --b = 6
			aluop <= "0110" ;
			wait for 10 ns;
			report "Test13";
			assert(dataout = "00000000000000000000000000000001" and oflag = '0' and cflag = '0' and zflag = '0') report "13:Fail" severity error;

			wait for 1 ns;

		--SUB testcase2 (cout = 1)
			data1 <= "00000000000000000000000000000110" ; --a = 6
			data2 <= "00000000000000000000000000000111" ; --b = 7
			aluop <= "0110" ;
			wait for 10 ns;
			report "Test14";
			assert(dataout = "11111111111111111111111111111111" and oflag = '0' and cflag = '1' and zflag = '0') report "14:Fail" severity error;

			wait for 1 ns;
			
			--SUB testcase3 (zero = 1, cout = 0)
			data1 <= "00000000000000000000000000000110" ; --a = 6
			data2 <= "00000000000000000000000000000110" ; --b = 6
			aluop <= "0110" ;
			wait for 10ns;
			report "Test15";
			assert(dataout = "00000000000000000000000000000000" and oflag = '0' and cflag = '0' and zflag = '1') report "15:Fail" severity error;
			
			wait for 1 ns;

		--SUB testcase4 (cout = 1)
			data1 <= "00000000000000000000000000000110" ; --a = 6
			data2 <= "11111111111111111111111111111010" ; --b = -6
			aluop <= "0110" ;
			wait for 10ns;
			report "Test16";
			assert(dataout = "00000000000000000000000000001100" and oflag = '0' and cflag = '1' and zflag = '0') report "16:Fail" severity error;
			
		--SUB testcase5 (cout = 0)
			data1 <= x"0000000C";
			data2 <= x"0000000A";
			aluop <= "0110" ;
			wait for 10ns;
			report "Test17";
			assert(dataout = "00000000000000000000000000000010" and oflag = '0' and cflag = '0' and zflag = '0') report "17:Fail" severity error;
			
			wait for 1 ns;
			
		--SUB testcase6 (cout = 1)
			data1 <= x"FFFFFFF9";
			data2 <= x"FFFFFFFA";
			aluop <= "0110" ;
			wait for 10ns;
			report "Test18";
			assert(dataout = "11111111111111111111111111111111" and oflag = '0' and cflag = '1' and zflag = '0') report "18:Fail" severity error;
			
		--SUB testcase7 (zero = 1, cout = 0)
			data1 <= x"00000001";
			data2 <= x"00000001";
			aluop <= "0110" ;
			wait for 10ns;
			report "Test19";
			assert(dataout = "00000000000000000000000000000000" and oflag = '0' and cflag = '0' and zflag = '1') report "19:Fail" severity error;
			
			wait for 1 ns;
			
		report "Test Complete";

      wait;
   end process;

END;
