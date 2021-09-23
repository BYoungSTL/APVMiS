----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2021 19:22:03
-- Design Name: 
-- Module Name: Comparator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator2 is
port(
    P,Q: IN std_logic_vector (7 downto 0); 
    Equal, More: OUT std_logic
);
--  Port ( );
end Comparator2;

architecture Behavioral of Comparator2 is

--SIGNAL M,E:std_logic:='1';

begin

process(P,Q) begin

if((P>Q)) then 
    More<='0'; Equal<='1'; 
elsif(P=Q) then  
    More<='1'; Equal<='0'; 
else
    More<='1'; Equal<='1'; 
end if;
                               
end process;        

--More<=M; Equal<=E;

end Behavioral;
