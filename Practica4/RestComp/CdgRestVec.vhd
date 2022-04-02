--------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CdgRestVec is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (3 downto 0);
           P3 : out  STD_LOGIC;
           G : out  STD_LOGIC;
           E : out  STD_LOGIC;
           L : out  STD_LOGIC);
end CdgRestVec;

architecture Behavioral of CdgRestVec is

	signal P: std_logic_vector(2 downto 0);
begin

D(0)<= A(0) XOR B(0);
P(0)<= (NOT A(0)) AND B(0);
D(1)<= P(0) XOR (A(1) XOR B(1));
P(1)<=(P(0) AND (A(1) XNOR B(1))) OR ((NOT A(1)) AND B(1));
D(2)<=P(1) XOR (A(2) XOR B(2));
P(2)<=(P(1) AND (A(2) XNOR B(2))) OR ((NOT A(2)) AND B(2));
D(3)<=P(2) XOR (A(3) XOR B(3));
P3<=(P(2) AND (A(3) XNOR B(3))) OR ((NOT A(3)) AND B(3));
G <= (A(3) AND (NOT B(3))) OR ((A(3) XNOR B(3)) AND (A(2) AND NOT B(2))) OR ((A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) AND NOT B(1))) OR ((A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(2)) AND (A(0) AND NOT B(0)));
E <= (A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1)) AND (A(0) XNOR B(0));
L <= (NOT A(3) AND B(3)) OR ((A(3) XNOR B(3)) AND (NOT A(2) AND B(2))) OR ((A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (NOT A(1) AND B(1))) OR ((A(3) XNOR B(3)) AND (A(2) XNOR B(2)) AND (A(1) XNOR B(1))AND (NOT A(0) AND B(0)));
end Behavioral;

