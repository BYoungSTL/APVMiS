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
    StrobeG, DataC: IN std_logic_vector (2 downto 1);
    A, B: IN std_ulogic;
    Y10, Y11, Y12, Y13: OUT std_logic;
    Y20, Y21, Y22, Y23: OUT std_logic 
);
--  Port ( );
end Comparator2;

architecture Behavioral of Comparator2 is

--SIGNAL M,E:std_logic:='1';

begin

process(B, A, StrobeG, DataC) begin

if((B = '0') & (A ='0') & (StrobeG(1) = '0' & (DataC(1) = '1'))) then
    Y10 <= '0'; Y11 <= '1'; Y12 <= '1'; Y13 <= '1';
else if ((B = '0') & (A ='1') & (StrobeG(1) = '0' & (DataC(1) = '1'))) then
        Y10 <= '1'; Y11 <= '0'; Y12 <= '1'; Y13 <= '1';
else if ((B = '1') & (A ='0') & (StrobeG(1) = '0' & (DataC(1) = '1'))) then
        Y10 <= '1'; Y11 <= '1'; Y12 <= '0'; Y13 <= '1';
else if ((B = '1') & (A ='1') & (StrobeG(1) = '0' & (DataC(1) = '1'))) then
        Y10 <= '1'; Y11 <= '1'; Y12 <= '1'; Y13 <= '0';
else if (StrobeG(1) = '1') then
        Y10 <= '1'; Y11 <= '1'; Y12 <= '1'; Y13 <= '1';
else if (DataC(1) = '1') then
        Y10 <= '1'; Y11 <= '1'; Y12 <= '1'; Y13 <= '1';
end if;


--second table
if((B = '0') & (A ='0') & (StrobeG(2) = '0' & (DataC(2) = '1'))) then
    Y10 <= '0'; Y11 <= '1'; Y12 <= '1'; Y13 <= '1';
else if ((B = '0') & (A ='1') & (StrobeG(2) = '0' & (DataC(2) = '1'))) then
        Y20 <= '1'; Y21 <= '0'; Y22 <= '1'; Y23 <= '1';
else if ((B = '1') & (A ='0') & (StrobeG(2) = '0' & (DataC(2) = '1'))) then
        Y20 <= '1'; Y21 <= '1'; Y22 <= '0'; Y23 <= '1';
else if ((B = '1') & (A ='1') & (StrobeG(2) = '0' & (DataC(2) = '1'))) then
        Y20 <= '1'; Y21 <= '1'; Y22 <= '1'; Y23 <= '0';
else if (StrobeG(2) = '1') then
        Y20 <= '1'; Y21 <= '1'; Y22 <= '1'; Y23 <= '1';
else if (DataC(2) = '1') then
        Y20 <= '1'; Y21 <= '1'; Y22 <= '1'; Y23 <= '1';
end if;

--third table



end process;        

--More<=M; Equal<=E;

end Behavioral;
