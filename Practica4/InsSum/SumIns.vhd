
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumIns is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC);
end SumIns;

architecture Behavioral of SumIns is

	COMPONENT SemiSum
	PORT(
		A : IN std_logic;
		B : IN std_logic;          
		C0 : OUT std_logic;
		S0 : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT SumCom
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		CI : IN std_logic;          
		S0 : OUT std_logic;
		C0 : OUT std_logic
		);
	END COMPONENT;
	
signal C0,C1,C2: std_logic;
begin --RELACIONO LAS VARIABLES
	Inst_SemiSum: SemiSum PORT MAP(
		A => A(0),
		B => B(0),
		C0 => C0,
		S0 => S(0)
	);
	
		Inst_SumCom: SumCom PORT MAP(
		A => A(1),
		B => B(1),
		S0 => S(1),
		C0 => C1,
		CI => C0
	);
-- se tienen que llamar diferente  Inst:SumCom2
		Inst_SumCom2: SumCom PORT MAP(
		A => A(2),
		B => B(2),
		S0 => S(2),
		C0 => C2,
		CI => C1
	);
	
			Inst_SumCom3: SumCom PORT MAP(
		A => A(3),
		B => B(3),
		S0 => S(3),
		C0 => C,
		CI => C2
		);


end Behavioral;

