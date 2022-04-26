----------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumCom is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           C0 : out  STD_LOGIC;
           CI : in  STD_LOGIC);
end SumCom;

architecture Behavioral of SumCom is

begin

S0<=CI XOR (A XOR B);
C0<=(CI AND (A XOR B)) OR (A AND B);


end Behavioral;

