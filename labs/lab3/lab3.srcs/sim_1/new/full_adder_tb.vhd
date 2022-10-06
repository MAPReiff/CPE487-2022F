----------------------------------------------------------------------------------
 -- Name: Full Adder Testbench
 -- AUthors: Mitchell Reiff & Luisa Bonfim & Peter Shikhman
 -- Date: 9/29/22
 -- Description: Full adder testbench 
 --
----------------------------------------------------------------------------------


library IEEE;

use IEEE.std_logic_1164.ALL;

--Full Testbench code
entity testbench_full_adder is
--  Port ( );
end testbench_full_adder;
architecture Behavioral of testbench_full_adder is
-- Component declaration for the Unit
 -- Under Test (UUT)
 component full_adder
 PORT(  A_in: in STD_LOGIC;
        B_in: in STD_LOGIC;
        C_in: in STD_LOGIC;
        C_out: out STD_LOGIC;
        sum: out STD_LOGIC       
        
        );
 end component;
 
 -- Specify which entity is bound with the component.
 signal A_in, B_in, sum, C_out, C_in : STD_LOGIC;
  
 begin
 -- Instantiate the UUT
 uut: full_adder
    PORT MAP(   A_in => A_in,
                B_in => B_in,
                C_in => C_in,
                sum => sum,
                C_out => C_out
                
                );
 -- This Process is working now
 process
 begin
 -- Hold reset state for 100 ns.
   -- wait for 100 ns;
    
    A_in <= '0';
    B_in <= '0';
    C_in <= '0';
    wait for 10 ns;
    A_in <= '0';
    B_in <= '0';
    C_in <= '1';
    wait for 10 ns;
    A_in <= '0';
    B_in <= '1';
    C_in <= '0';
    wait for 10 ns;
    A_in <= '0';
    B_in <= '1';
    C_in <= '1';
    wait for 10 ns;
    A_in <= '1';
    B_in <= '0';
    C_in <= '0';
    wait for 10 ns;
    A_in <= '1';
    B_in <= '0';
    C_in <= '1';
    wait for 10 ns;
    A_in <= '1';
    B_in <= '1';
    C_in <= '0';
    wait for 10 ns;
    A_in <= '1';
    B_in <= '1';
    C_in <= '1';
    wait for 10 ns;
    
    assert false report "end of test";
    
    wait;
  end process;
end Behavioral;