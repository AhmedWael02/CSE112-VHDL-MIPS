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
			cin <= '0';
     		wait for 10 ns;
		
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
			
		report "Test Complete";

      wait;
   end process;

END;
