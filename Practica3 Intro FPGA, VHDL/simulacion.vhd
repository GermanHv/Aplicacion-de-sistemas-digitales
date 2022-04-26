
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simulacion IS
END simulacion;
 
ARCHITECTURE behavior OF simulacion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Coche
    PORT(
         PI : IN  std_logic;
         PD : IN  std_logic;
         C : IN  std_logic;
         SW : IN  std_logic;
         AL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PI : std_logic := '0';
   signal PD : std_logic := '0';
   signal C : std_logic := '0';
   signal SW : std_logic := '0';

 	--Outputs
   signal AL : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Coche PORT MAP (
          PI => PI,
          PD => PD,
          C => C,
          SW => SW,
          AL => AL
        );
		  
		  
	SW<= '0' after 0 ns, '1' after 50 ns, '0' after 100 ns, '1' after 150 ns, '0' after 200 ns, '1' after 250 ns, '0' after 300 ns, '1' after 350 ns,'0' after 400 ns, '1' after 450 ns, '0' after 500 ns, '1' after 550 ns, '0' after 600 ns, '1' after 650 ns, '0' after 700 ns, '1' after 750 ns;
	C <= '0' after 0 ns, '0' after 50 ns, '1' after 100 ns, '1' after 150 ns, '0' after 200 ns, '0' after 250 ns, '1' after 300 ns, '1' after 350 ns,'0' after 400 ns, '0' after 450 ns, '1' after 500 ns, '1' after 550 ns, '0' after 600 ns, '0' after 650 ns, '1' after 700 ns, '1' after 750 ns;
	PD<= '0' after 0 ns, '0' after 50 ns, '0' after 100 ns, '0' after 150 ns, '1' after 200 ns, '1' after 250 ns, '1' after 300 ns, '1' after 350 ns,'0' after 400 ns, '0' after 450 ns, '0' after 500 ns, '0' after 550 ns, '1' after 600 ns, '1' after 650 ns, '1' after 700 ns, '1' after 750 ns;
	PI<= '0' after 0 ns, '0' after 50 ns, '0' after 100 ns, '0' after 150 ns, '0' after 200 ns, '0' after 250 ns, '0' after 300 ns, '0' after 350 ns,'1' after 400 ns, '1' after 450 ns, '1' after 500 ns, '1' after 550 ns, '1' after 600 ns, '1' after 650 ns, '1' after 700 ns, '1' after 750 ns;

END;
