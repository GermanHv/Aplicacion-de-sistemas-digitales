
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CdgRestComp is
    Port (A3 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           B : in  STD_LOGIC;
           P3 : out  STD_LOGIC;
           D3 : out  STD_LOGIC;
           D2 : out  STD_LOGIC;
           D1 : out  STD_LOGIC;
           D0 : out  STD_LOGIC;
           G : out  STD_LOGIC;
           E : out  STD_LOGIC;
           L : out  STD_LOGIC);
		
end CdgRestComp;

architecture Behavioral of CdgRestComp is
	  signal P,P1,P2 : std_logic;
begin

D0<= A0 XOR B;
P<= (NOT A0) AND B;
D1<= P XOR (A1 XOR B1);
P1<=(P AND (A1 XNOR B1)) OR ((NOT A1) AND B1);
D2<=P1 XOR (A2 XOR B2);
P2<=(P1 AND (A2 XNOR B2)) OR ((NOT A2) AND B2);
D3<=P2 XOR (A3 XOR B3);
P3<=(P2 AND (A3 XNOR B3)) OR ((NOT A3) AND B3);
G <= (A3 AND (NOT B3)) OR ((A3 XNOR B3) AND (A2 AND NOT B2)) OR ((A3 XNOR B3) AND (A2 XNOR B2) AND (A1 AND NOT B1)) OR ((A3 XNOR B3) AND (A2 XNOR B2) AND (A1 XNOR B2) AND (A0 AND NOT B));
E <= (A3 XNOR B3) AND (A2 XNOR B2) AND (A1 XNOR B1) AND (A0 XNOR B);
L <= (NOT A3 AND B3) OR ((A3 XNOR B3) AND (NOT A2 AND B2)) OR ((A3 XNOR B3) AND (A2 XNOR B2) AND (NOT A1 AND B1)) OR ((A3 XNOR B3) AND (A2 XNOR B2) AND (A1 XNOR B1)AND (NOT A0 AND B));

end Behavioral;

