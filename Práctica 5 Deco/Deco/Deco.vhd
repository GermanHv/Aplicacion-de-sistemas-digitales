library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Deco is
    Port ( E : in  STD_LOGIC_VECTOR (2 downto 0);
           S : out  STD_LOGIC_VECTOR (15 downto 0));
end Deco;

architecture Behavioral of Deco is

begin
	process (E)
		begin
			case E is
				when "000"=> S <= "0011001100011000";
				when "001"=> S <= "1111111100000000";
				when "010"=> S <= "0000011100000000";
				when "011"=> S <= "1111001100011000";
				when "100"=> S <= "0000000000011000";
				when "101"=> S <= "1100110001000010";
				when "110"=> S <= "1110001100011000";
				when "111"=> S <= "0011001110000001";
				when others=> S <= "0000000000000000";
				end case;
				end process;

end Behavioral;

