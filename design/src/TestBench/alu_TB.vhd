library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

	-- Add your library and packages declaration here ...

entity alu_tb is
end alu_tb;

architecture TB_ARCHITECTURE of alu_tb is
	-- Component declaration of the tested unit
	component alu
	port(
		A : in STD_LOGIC_VECTOR(7 downto 0);
		B : in STD_LOGIC_VECTOR(7 downto 0);
		ALU_Sel : in STD_LOGIC_VECTOR(3 downto 0);
		ALU_Out : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal A : STD_LOGIC_VECTOR(7 downto 0);
	signal B : STD_LOGIC_VECTOR(7 downto 0);
	signal ALU_Sel : STD_LOGIC_VECTOR(3 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal ALU_Out : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : alu
		port map (
			A => A,
			B => B,
			ALU_Sel => ALU_Sel,
			ALU_Out => ALU_Out
		);

	-- Add your stimulus here ...
	process
begin 
	A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0000";
  wait for 10 ns;
  -------------------------------------
  A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0001";
  wait for 10 ns;     
  -------------------------------------
  A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0010";
  wait for 10 ns;     
  -------------------------------------
 A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0011";
  wait for 10 ns;     
  -------------------------------------
  A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0100";
  wait for 10 ns;   
  -------------------------------------
  A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0101";
  wait for 10 ns;   
  -------------------------------------
  A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0110";
  wait for 10 ns;    
  -------------------------------------
 A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "0111";
  wait for 10 ns;
  -------------------------------------
   A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "1000";
  wait for 10 ns;  
  -------------------------------------
   A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "1001";
  wait for 10 ns;  
  -------------------------------------
   A <= "11111110"  ;
  B <= "00000001"   ;
  ALU_Sel <= "1101";
  wait for 10 ns; 
	-------------------------------------
	  
end process;	


end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_alu of alu_tb is
	for TB_ARCHITECTURE
		for UUT : alu
			use entity work.alu(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_alu;

