----------------------------------------------------------------------------------
 -- Name: Midterm Exam Part 2
 -- AUthors: Mitchell Reiff
 -- Date: 10/16/22
 -- Description: Code for CPE 487 Midterm Part 2
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

entity midterm is
    Port ( D3 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D0 : in STD_LOGIC;
           y : out STD_LOGIC;
           x : out STD_LOGIC;
           V : out STD_LOGIC);
end midterm;

architecture Behavioral of midterm is

begin
    
    y <= D3 OR ((NOT D2) AND D1);
    x <= D3 OR D2;
    V <= ((D3 OR D2) OR D1 OR D0);

end Behavioral;
