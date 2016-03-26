library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t1l_clemente is
port (
      clk : in std_logic;
        input : in std_logic_vector(5 downto 0);  -- 6-bit input
        output : out std_logic_vector(0 downto 0)  -- 1-bit decoded output.
    );
end t1l_clemente;
architecture Behavioral of t1l_clemente is

begin
process (clk,input)
BEGIN
if (clk'event and clk='1') then -- assuming clk = 1 = nighttime
case  input is 	-- cases were will the alarm will operate
when "111111"=> output <="1"; 
when "110000"=> output <="1"; 
when "001100"=> output <="1"; 
when "000011"=> output <="1"; 
when "111100"=> output <="1"; 
when "110011"=> output <="1"; 
when "001111"=> output <="1"; 
when "100111"=> output <="1"; 
when "100100"=> output <="1"; 
when "011000"=> output <="1"; 
when "011011"=> output <="1"; 
when "101101"=> output <="1"; 
when "100001"=> output <="1"; 
when "011110"=> output <="1"; 
when "010010"=> output <="1"; 
when "111001"=> output <="1"; 
when "001001"=> output <="1"; 
when "110110"=> output <="1"; 
when "000110"=> output <="1"; 
				-- else the alarm won't operate
when others=> output <="0"; 
end case;
end if;

end process;

end Behavioral;
