----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.09.2021 14:44:28
-- Design Name: 
-- Module Name: ComparatorSim - Behavioral
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

entity ComparatorSim is
--  Port ( );
end ComparatorSim;

architecture Behavioral of ComparatorSim is

SIGNAL P,Q:std_logic_vector (7 downto 0):="00000000";
SIGNAL Equal,More:std_logic;

begin

UUT : entity work.Comparator port map(P,Q,Equal,More);

process begin

loop1: for i in 0 to 255 loop
    loop2: for i in 0 to 255 loop
        wait for 2 ns;
        Q<=Q+1;
    end loop loop2;
        P<=P+1;
end loop loop1;

end process;

end Behavioral;
