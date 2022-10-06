----------------------------------------------------------------------------------
 -- Name: Half Adder Logic
 -- AUthors: Mitchell Reiff & Luisa Bonfim & Peter Shikhman
 -- Date: 9/22/22
 -- Description: Half adder configuration 
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

entity half_adder is
    Port ( A_in : in STD_LOGIC;
           B_in : in STD_LOGIC;
           Carry_out : out STD_LOGIC;
           Sum_out : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

begin

    Sum_out <= (A_in  xor B_in);
    Carry_out <= (A_in and B_in);

end Behavioral;
