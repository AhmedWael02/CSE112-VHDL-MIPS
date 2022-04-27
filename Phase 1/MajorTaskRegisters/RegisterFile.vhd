library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.RegPackage.all;

entity RegisterFile is
    Port ( read_sel1  : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2  : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel  : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena  : in  STD_LOGIC;
           clk 		 : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0) :=x"00000000";
           data1 		 : out STD_LOGIC_VECTOR (31 downto 0);
           data2 		 : out STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

signal L,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29,out30,out31: STD_LOGIC_VECTOR (31 downto 0);

begin

	onedecoder : TheDecoder port map (write_sel,write_ena,L);

	Reg0 	  : RegDef 		port map (x"00000000",'0',clk,L(0),'0',out0 ); --$zero
	Reg1 	  : RegDef 		port map (write_data,'0',clk,L(1),'0', out1  );	 --$at
	Reg2 	  : RegDef 		port map (write_data,'0',clk,L(2),'0', out2  );	--$v0
	Reg3 	  : RegDef 		port map (write_data,'0',clk,L(3),'0', out3  );--$v1
	Reg4 	  : RegDef 		port map (write_data,'0',clk,L(4),'0', out4  );--$a0
	Reg5 	  : RegDef 		port map (write_data,'0',clk,L(5),'0', out5  );--$a1
	Reg6 	  : RegDef 		port map (write_data,'0',clk,L(6),'0', out6  );--$a2
	Reg7 	  : RegDef 		port map (write_data,'0',clk,L(7),'0', out7  );--$a3
	Reg8 	  : RegDef 		port map (write_data,'0',clk,L(8),'0', out8  );--$t0
	Reg9 	  : RegDef 		port map (write_data,'0',clk,L(9),'0', out9  );--$t1
	Reg10	  : RegDef 		port map (write_data,'0',clk,L(10),'0',out10 );--$t2
	Reg11	  : RegDef 		port map (write_data,'0',clk,L(11),'0',out11 );--$t3
	Reg12	  : RegDef 		port map (write_data,'0',clk,L(12),'0',out12 );--$t4
	Reg13	  : RegDef 		port map (write_data,'0',clk,L(13),'0',out13 );--$t5
	Reg14	  : RegDef 		port map (write_data,'0',clk,L(14),'0',out14 );--$t6
	Reg15	  : RegDef 		port map (write_data,'0',clk,L(15),'0',out15 );--$t7
	Reg16	  : RegDef 		port map (write_data,'0',clk,L(16),'0',out16 );--$s0
	Reg17	  : RegDef 		port map (write_data,'0',clk,L(17),'0',out17 );--$s1
	Reg18	  : RegDef 		port map (write_data,'0',clk,L(18),'0',out18 );--$s2
	Reg19	  : RegDef 		port map (write_data,'0',clk,L(19),'0',out19 );--$s3
	Reg20	  : RegDef 		port map (write_data,'0',clk,L(20),'0',out20 );--$s4
	Reg21	  : RegDef 		port map (write_data,'0',clk,L(21),'0',out21 );--$s5
	Reg22	  : RegDef 		port map (write_data,'0',clk,L(22),'0',out22 );--$s6
	Reg23	  : RegDef 		port map (write_data,'0',clk,L(23),'0',out23 );--$s7
	Reg24	  : RegDef 		port map (write_data,'0',clk,L(24),'0',out24 );--$t8
	Reg25	  : RegDef 		port map (write_data,'0',clk,L(25),'0',out25 );--$t9
	Reg26	  : RegDef 		port map (write_data,'0',clk,L(26),'0',out26 );--$k0
	Reg27	  : RegDef 		port map (write_data,'0',clk,L(27),'0',out27 );--$k1
	Reg28	  : RegDef 		port map (write_data,'0',clk,L(28),'0',out28 );--$gp
	Reg29	  : RegDef 		port map (write_data,'0',clk,L(29),'0',out29 );--$sp
	Reg30	  : RegDef 		port map (write_data,'0',clk,L(30),'0',out30 );--$fp
	Reg31	  : RegDef 		port map (write_data,'0',clk,L(31),'0',out31 );--$ra

	FirstMux  : Mux32x1 port map (read_sel1,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29,out30,out31,data1);
												
	SecondMux : Mux32x1 port map (read_sel2,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17,out18,out19,out20,out21,out22,out23,out24,out25,out26,out27,out28,out29,out30,out31,data2);

end Behavioral;