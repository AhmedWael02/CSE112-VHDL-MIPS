library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MIPSPackage is

	component ALUControlUnit is
		 Port ( FunctionCode : in  STD_LOGIC_VECTOR (5 downto 0);
				  ALUOp        : in  STD_LOGIC_VECTOR (1 downto 0);
				  ALUFunct     : out STD_LOGIC_VECTOR (3 downto 0));
	end component;



	component ALU is

		 Port ( data1   : in  STD_LOGIC_VECTOR (31 downto 0);
				  data2   : in  STD_LOGIC_VECTOR (31 downto 0);
				  aluop   : in  STD_LOGIC_VECTOR (3 downto 0);
				  cin     : in  STD_LOGIC; 
				  dataout : out STD_LOGIC_VECTOR (31 downto 0);
				  cflag   : out STD_LOGIC;
				  zflag   : out STD_LOGIC;
				  oflag   : out STD_LOGIC);
				  
				  
	end component;



	component CPUMux is
		 Port ( Selector : in  STD_LOGIC;
				  i0       : in  STD_LOGIC_VECTOR (31 downto 0);
				  i1       : in  STD_LOGIC_VECTOR (31 downto 0);
				  Output   : out STD_LOGIC_VECTOR (31 downto 0));
	end component;



	component DATAMEMORY is
	  
	  port ( LoadIt    : in STD_LOGIC;
				INPUT     : in STD_LOGIC_VECTOR (31 downto 0);
				OUTPUT    : out STD_LOGIC_VECTOR (31 downto 0);
				MEM_READ  : in STD_LOGIC;
				MEM_WRITE : in STD_LOGIC;
				ADDRESS   : in STD_LOGIC_VECTOR (31 downto 0);
				CLK       : in STD_LOGIC
				);

	end component;



	component INSTRMEMORY is
		
	  port(
		 LoadIt  : in Std_logic ;
		 DATA    : out STD_LOGIC_VECTOR(31 downto 0);
		 ADDRESS : in STD_LOGIC_VECTOR(31 downto 0);
		 CLK     : in STD_LOGIC
		 );
	end component;


	component MainControlUnit is

		 Port ( OpCode   : in  STD_LOGIC_VECTOR (5 downto 0);
				  MemRead  : out  STD_LOGIC;
				  MemWrite : out  STD_LOGIC;
				  RegDst   : out  STD_LOGIC;
				  Branch   : out  STD_LOGIC;
				  MemtoReg : out  STD_LOGIC;
				  ALUSrc   : out  STD_LOGIC;
				  ALUOp    : out  STD_LOGIC_VECTOR (1 downto 0);
				  Jump     : out STD_LOGIC;
				  RegWrite : out  STD_LOGIC);
				  
	end component;



	component RegisterFile is
		 Port ( read_sel1  : in  STD_LOGIC_VECTOR (4 downto 0);
				  read_sel2  : in  STD_LOGIC_VECTOR (4 downto 0);
				  write_sel  : in  STD_LOGIC_VECTOR (4 downto 0);
				  write_ena  : in  STD_LOGIC;
				  clk 		 : in  STD_LOGIC;
				  write_data : in  STD_LOGIC_VECTOR (31 downto 0);
				  data1 		 : out STD_LOGIC_VECTOR (31 downto 0);
				  data2 		 : out STD_LOGIC_VECTOR (31 downto 0));
	end component;



	component ShiftLeft2 is
		 Port ( Input  : in   STD_LOGIC_VECTOR (31 downto 0);
				  Output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;



	component SignExtend is
		 Port ( Input  : in  STD_LOGIC_VECTOR (15 downto 0);
				  Output : out STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component PC is
		 Port(
			  signal CLK, RESET : in std_logic;
			  signal Address : in std_logic_vector(31 downto 0);
			  signal PC : out std_logic_vector(31 downto 0)
		 );
	end component;
	
	component Adder4 is
		Port ( Input  : in   STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component JumpAddressConcat is
		 Port ( InputLeft  : in   STD_LOGIC_VECTOR (31 downto 0);
				  InputRight  : in   STD_LOGIC_VECTOR (31 downto 0);
				  Output : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;

	component Mux5x1 is
		 Port ( S 		: in   STD_LOGIC;
				  i0		: in  STD_LOGIC_VECTOR (4 downto 0);
				  i1 		: in  STD_LOGIC_VECTOR (4 downto 0);
				  output : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
----------------------------------------------------------start signals---------------------------------------------------

--previous instruction address in PC
signal instructionAddress  : std_logic_vector(31 downto 0) := X"00000000";
signal InstrAddressAdd4		: std_logic_vector(31 downto 0) := X"00000000";

--related to jump process
signal instructionShifted	: std_logic_vector(31 downto 0) := X"00000000";
signal jumpInstrAddress		: std_logic_vector(31 downto 0) := X"00000000";

--related to branch process
signal branchInstAddress	: std_logic_vector(31 downto 0) := X"00000000";
signal immedValue16			: std_logic_vector(31 downto 0) := X"00000000";
signal branchValueShifted	: std_logic_vector(31 downto 0) := X"00000000";
signal intermediateAddress	: std_logic_vector(31 downto 0) := X"00000000";

--final new instruction address result
signal newInstrAddress 		: std_logic_vector(31 downto 0) := X"00000000";

--instruction from INSTMEMORY
signal instruction			: std_logic_vector(31 downto 0) := X"00000000";

-------------------Main control unit signals---------------------
signal MemRead 				: std_logic := '0';
signal MemWrite 				: std_logic := '0';
signal RegDst	 				: std_logic := '0';
signal Branch	 				: std_logic := '0';
signal MemtoReg 				: std_logic := '0';
signal ALUSrc	 				: std_logic := '0';
signal ALUOp	 				: std_logic_vector(1 downto 0) := "00";
signal Jump		 				: std_logic := '0';
signal RegWrite 				: std_logic := '0';

-------------------Register unit signals---------------------
signal WriteRegister			: std_logic_vector(4 downto 0) := "00000";
signal WriteData				: std_logic_vector(31 downto 0) := X"00000000";
signal ReadData1				: std_logic_vector(31 downto 0) := X"00000000";
signal ReadData2				: std_logic_vector(31 downto 0) := X"00000000";


------------------ALU unit & control signals----------------
signal ALUFunct				: std_logic_vector(3 downto 0)  := "0000";
signal ALUZero					: std_logic  := '0';
signal ALUMuxInput			: std_logic_vector(31 downto 0) := X"00000000";
signal ALUOutTemp				: std_logic_vector(31 downto 0) := X"00000000";

------------------Data Memory signals----------------
signal DataMemOutTemp				: std_logic_vector(31 downto 0) := X"00000000";



--open signal for later adding

signal BranchingSignal : std_logic :='0';


----------------------------------------------------------end signals---------------------------------------------------

end MIPSPackage;

package body MIPSPackage is
end MIPSPackage;
