----------------------------------------------------------------------------------
 -- Name: Midterm Exam Part 2 Testbench
 -- AUthors: Mitchell Reiff
 -- Date: 10/16/22
 -- Description: Code for CPE 487 Midterm Part 2 testbench 
 --
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity midterm_tb is
--  Port ( );
end midterm_tb;

architecture Behavioral of midterm_tb is

component midterm
   PORT (  
           D3 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D0 : in STD_LOGIC;
           y : out STD_LOGIC;
           x : out STD_LOGIC;
           V : out STD_LOGIC
           );
end component;

signal D3, D2, D1, D0, y, x, V : STD_LOGIC;

begin
    uut: midterm 
        PORT MAP(   D3 => D3,
                    D2 => D2,
                    D1 => D1,
                    D0 => D0,
                    y => y,
                    x => x,
                    V => V
                    );
     process
     begin
        D3 <= '0';
        D2 <= '0';
        D1 <= '0';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '0';
        D1 <= '0';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '0';
        D1 <= '1';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '0';
        D1 <= '1';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '1';
        D1 <= '0';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '1';
        D1 <= '0';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '1';
        D1 <= '1';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '0';
        D2 <= '1';
        D1 <= '1';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '0';
        D1 <= '0';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '0';
        D1 <= '0';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '0';
        D1 <= '1';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '0';
        D1 <= '1';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '1';
        D1 <= '0';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '1';
        D1 <= '0';
        D0 <= '1';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '1';
        D1 <= '1';
        D0 <= '0';
        wait for 10 ns;
        
        D3 <= '1';
        D2 <= '1';
        D1 <= '1';
        D0 <= '1';
        wait for 10 ns;
        
        
        
        assert false report "end of test";
        
        wait;
      end process;

end Behavioral;
