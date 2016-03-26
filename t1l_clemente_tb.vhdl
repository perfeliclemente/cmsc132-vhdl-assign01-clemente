LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

ENTITY test_tb IS
END test_tb;

ARCHITECTURE behavior OF test_tb IS 
   signal clk : std_logic := '0';
   signal input : std_logic_vector(5 downto 0);
   signal output : std_logic_vector(0 downto 0);
   constant clk_period : time := 1 ns;
BEGIN
   uut: entity work.t1l_clemente PORT MAP (clk,input,output);
   clk_process :process
   begin
                clk <= '1';
                wait for clk_period/2;
                input <= "111111";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "111100";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "110011";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "001111";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "100111";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "100100";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "100001";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
                
                clk <= '1';
                wait for clk_period/2;
                input <= "101101";
                assert(output="1") report "Fail" severity error;
                if (output/="1") then
                	report "An error has been detected." ;
                end if;
   end process;      

END;
