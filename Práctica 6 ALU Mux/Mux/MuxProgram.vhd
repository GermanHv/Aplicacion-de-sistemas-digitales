----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:26:28 04/25/2022 
-- Design Name: 
-- Module Name:    MuxProgram - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxProgram is
    Port ( SE0 : in  STD_LOGIC;
           SE1 : in  STD_LOGIC;
           SE2 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           Z0 : out  STD_LOGIC;
           Z1 : out  STD_LOGIC;
           Z2 : out  STD_LOGIC;
           Z3 : out  STD_LOGIC;
           Z4 : out  STD_LOGIC);
end MuxProgram;

architecture Behavioral of MuxProgram is-- Declaracion de auxiliares:
	signal SD, S1,D1,E,G,L,P1,P0,C0,C1,An1,An0,O1,O0,N1,N0,X1,X0:std_logic;

begin
-- Aritmeticas
 SD	<=A0 XOR B0;
 C0	<=A0 AND B0;

 S1	<=C0 XOR (A1 XOR B1);
 C1	<=(C0 AND (A1 XOR B1)) OR (A1 AND B1);
 
 P0	<= (NOT A0) AND B0;
 D1	<=	P0 XOR (A1 XOR B1);
 P1	<=	(P0 AND (A1 XNOR B1)) OR (NOT A1 AND B1);
 
 E		<=	(A0 XNOR B0) AND (A1 XNOR B1);
 L		<= (B1 AND (NOT A1)) OR ((B0 AND (NOT A0)) AND ((NOT A1) OR B1));
 G		<=	((NOT B1) AND A1) OR ((A0 AND (NOT B0)) AND ((NOT B1) OR A1)); 
 
-- Logicas
 An0	<= A0 AND B0;	
 An1	<=	A1 AND B1;
 O0	<= A0 OR B0;
 O1	<=	A1 OR B1;
 N0	<=	NOT A0;
 N1	<=	NOT A1;
 X0	<=	A0 XOR A1;
 X1	<=	B0 XOR B1;
 
 -- Ecuaciones de salidas:
 Z0	<= (((SE2 AND (NOT SE1))AND((NOT SE0)AND An0)) OR ((SE2 AND (NOT SE1)) AND (SE0 AND O0))) OR (((SE2 AND SE1)AND((NOT SE0)AND N0)) OR ((SE2 AND SE1)AND(SE0 AND X0)));
 Z1	<= (((SE2 AND (NOT SE1)) AND ((NOT SE0)AND An1)) OR ((SE2 AND (NOT SE1)) AND (SE0 AND O1))) OR (((SE2 AND SE1)AND((NOT SE0)AND N1)) OR ((SE2 AND SE1) AND (SE0 AND X1))); 	
 Z2 	<= ((((NOT SE2) AND (NOT SE1)) AND ((NOT SE0) AND SD)) OR (((NOT SE2) AND (NOT SE1)) AND (SE0 AND SD))) OR (((NOT SE2) AND SE1) AND ((NOT SE0) AND L));
 Z3 	<= ((((NOT SE2) AND (NOT SE1)) AND ((NOT SE0) AND S1)) OR (((NOT SE2) AND (NOT SE1)) AND (SE0 AND D1))) OR (((NOT SE2) AND SE1) AND ((NOT SE0) AND E));
 Z4 	<=	((((NOT SE2) AND (NOT SE1)) AND ((NOT SE0) AND C1)) OR (((NOT SE2) AND (NOT SE1)) AND (SE0 AND P1))) OR (((NOT SE2) AND SE1) AND ((NOT SE0) AND G));

end Behavioral;

