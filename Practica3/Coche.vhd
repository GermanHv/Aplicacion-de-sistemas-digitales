----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:35 03/17/2022 
-- Design Name: 
-- Module Name:    Coche - Behavioral 
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

entity Coche is
    Port ( PI : in  STD_LOGIC;
           PD : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SW : in  STD_LOGIC;
           AL : out  STD_LOGIC);
end Coche;

architecture Behavioral of Coche is

begin
	AL<=(not PI) or (not PD) or (SW and (not C));

end Behavioral;

