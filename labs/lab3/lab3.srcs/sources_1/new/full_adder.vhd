----------------------------------------------------------------------------------
 -- Name: Full Adder Logic
 -- AUthors: Mitchell Reiff & Luisa Bonfim & Peter Shikhman
 -- Date: 9/29/22
 -- Description: Full adder configuration 
 --
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( A_in : in STD_LOGIC;
           B_in : in STD_LOGIC;
           C_in : in STD_LOGIC;
           C_out : out STD_LOGIC;
           sum : out STD_LOGIC);
end full_adder;


architecture Behavioral of full_adder is

begin

    sum <= ((A_in XOR B_in ) XOR C_in );
    C_out <= ((A_in AND B_in ) OR ((A_in XOR B_in ) AND (C_in )));

end Behavioral;
