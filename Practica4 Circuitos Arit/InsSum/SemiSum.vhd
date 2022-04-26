----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SemiSum is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C0 : out  STD_LOGIC;
           S0 : out  STD_LOGIC);
end SemiSum;

architecture Behavioral of SemiSum is

begin
S0<=A XOR B;
C0<=A AND B;

end Behavioral;

