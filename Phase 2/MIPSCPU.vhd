library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MIPSPackage.all;

entity MIPSCPU is
    Port ( START       : in  STD_LOGIC;
           CLK         : in  STD_LOGIC;
           RegFileOut1 : out STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out STD_LOGIC_VECTOR (31 downto 0);
           ALUOut      : out STD_LOGIC_VECTOR (31 downto 0);
           PCOut       : out STD_LOGIC_VECTOR (31 downto 0);
           DataMemOut  : out STD_LOGIC_VECTOR (31 downto 0);
			  
---------------------------The previous outputs are the ones requested in the Major Task PDF---------------------------------
--The next outputs are added as extras by us to verify that the fibonnaci sequence appears in $s0 whose decimal value is 16--		
	  
			  ReadReg1O	  : out STD_LOGIC_VECTOR (4 downto 0);
			  ReadReg2O	  : out STD_LOGIC_VECTOR (4 downto 0)
			  );
end MIPSCPU;

architecture Behavioral of MIPSCPU is
----------------------Signals used in this module is found in the package----------------------
begin



-----------------PC related operations----------------------------------
PC_Adder			 : Adder4 				port map (Input => instructionAddress, Output => InstrAddressAdd4);

--Branch related
Branch_PC_Sign  : SignExtend			port map (Input => instruction(15 downto 0), Output => immedValue16);
Branch_PC_Shift : ShiftLeft2			port map (Input => immedValue16, Output => branchValueShifted);
Branch_PC_Adder : ALU					port map (data1 => InstrAddressAdd4, data2 => branchValueShifted, aluop => "0010", cin => '0'
															, dataout => branchInstAddress, cflag => open, zflag =>open, oflag =>open);
BranchingSignal <= Branch AND ((ALUZero AND NOT(instruction(26))) OR (NOT(ALUZero) AND instruction(26))); 
PC_BranchMux	 : CPUMux				port map (Selector => BranchingSignal, i0 => InstrAddressAdd4, i1 => branchInstAddress
															, Output => intermediateAddress);
--Jump related
PC_Shifter		 : ShiftLeft2  		port map (Input => instruction, Output => instructionShifted);
PC_JumpConc		 : JumpAddressConcat port map (InputLeft => InstrAddressAdd4, InputRight => instructionShifted
															, Output => jumpInstrAddress);
PC_JumpMux		 : CPUMux				port map (Selector => Jump, i0 => intermediateAddress, i1 => jumpInstrAddress
															, Output => newInstrAddress);
															
--PC final impact															
Program_Counter : PC		 				port map (CLK => CLK, RESET => START , Address => newInstrAddress, PC => instructionAddress);


--------------Instruction memory unit-----------------------------------------

Instr_Memory	 : INSTRMEMORY			port map (LoadIt => START,  DATA => instruction,  ADDRESS => instructionAddress, CLK => CLK);


--------------Main Control Unit-----------------------------------------

Control_Unit 	: MainControlUnit 	port map (OpCode => instruction(31 downto 26), MemRead => MemRead, MemWrite => MemWrite
															, RegDst =>RegDst, Branch => Branch, MemtoReg => MemtoReg, ALUSrc => ALUSrc
															, ALUOp => ALUOp,  Jump => Jump, RegWrite => RegWrite);

--------------Registers unit-----------------------------------------
CPU_WriteRegMUx : Mux5x1				port map (S => RegDst, i0 => instruction(20 downto 16), i1 => instruction(15 downto 11)
															, output => WriteRegister);

CPU_Registers 	 : RegisterFile		port map (read_sel1 => instruction(25 downto 21), read_sel2 => instruction(20 downto 16)
															, write_sel => WriteRegister, write_ena => RegWrite, clk => CLK
															, write_data => WriteData, data1 => ReadData1, data2 =>	ReadData2);
															
--------------ALU & ALU Control unit-----------------------------------------

ALU_Control		 : ALUControlUnit 	port map (FunctionCode => instruction(5 downto 0), ALUOp => ALUOp, ALUFunct => ALUFunct);

ALU_InputMux	 : CPUMux				port map (Selector => ALUSrc, i0 => ReadData2, i1 => immedValue16
															, Output => ALUMuxInput);
															
ALU_Unit			 :	ALU					port map (data1 => ReadData1, data2 => ALUMuxInput,  aluop => ALUFunct,  cin => '0'
															, dataout => ALUOutTemp, cflag => open, zflag => ALUZero, oflag =>open );
--------------Data memory unit-----------------------------------------
	
Data_Memory 	: DATAMEMORY 			port map (LoadIt => START, INPUT => ReadData2,   OUTPUT => DataMemOutTemp
															, MEM_READ => MemRead, MEM_WRITE => MemWrite, ADDRESS => ALUOutTemp,  CLK => CLK);
Data_MemMuxOut : CPUMux					port map (Selector => MemtoReg, i0 => ALUOutTemp, i1 => DataMemOutTemp
															, Output => WriteData);

--------------Outputs-----------------------------------------
 RegFileOut1 <= ReadData1;
 RegFileOut2 <= ReadData2;
 ALUOut      <= ALUOutTemp;
 PCOut       <= instructionAddress;
 DataMemOut  <= DataMemOutTemp;
 ReadReg1O <= instruction(25 downto 21);
 ReadReg2O <= instruction(20 downto 16);

end Behavioral;