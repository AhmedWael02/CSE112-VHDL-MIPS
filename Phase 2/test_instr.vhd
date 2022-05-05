LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY test_instr IS
END test_instr;
 
ARCHITECTURE behavior OF test_instr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPSCPU
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RegFileOut1 : OUT  std_logic_vector(31 downto 0);
         RegFileOut2 : OUT  std_logic_vector(31 downto 0);
         ALUOut : OUT  std_logic_vector(31 downto 0);
         PCOut : OUT  std_logic_vector(31 downto 0);
         DataMemOut : OUT  std_logic_vector(31 downto 0);
			ReadReg1O	  : out STD_LOGIC_VECTOR (4 downto 0);
			ReadReg2O	  : out STD_LOGIC_VECTOR (4 downto 0)			
         
        );
    END COMPONENT;
    

   --Inputs
   signal START : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal RegFileOut1 : std_logic_vector(31 downto 0);
   signal RegFileOut2 : std_logic_vector(31 downto 0);
   signal ALUOut : std_logic_vector(31 downto 0);
   signal PCOut : std_logic_vector(31 downto 0);
   signal DataMemOut : std_logic_vector(31 downto 0);
	signal ReadReg1O : std_logic_vector(4 downto 0);
	signal ReadReg2O : std_logic_vector(4 downto 0);
	
   
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MIPSCPU PORT MAP (
          START => START,
          CLK => CLK,
          RegFileOut1 => RegFileOut1,
          RegFileOut2 => RegFileOut2,
          ALUOut => ALUOut,
          PCOut => PCOut,
          DataMemOut => DataMemOut,
			 ReadReg1O => ReadReg1O,
			 ReadReg2O => ReadReg2O
			 
			 
         
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
 
		START <= '1';
		WAIT for 30 ns;
		START <= '0';
		WAIT for 30ns;
     

      wait;
   end process;

END;
