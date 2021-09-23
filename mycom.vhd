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

entity Comparator is
port(
    StrobeG, DataC: IN std_logic_vector (2 downto 1);
    A, B: IN std_ulogic;
    Y10, Y11, Y12, Y13: OUT std_logic;
    Y20, Y21, Y22, Y23: OUT std_logic 
);
--  Port ( );
end Comparator;

architecture Behavioral of Comparator is

begin

Y10 <= not(
        (not(not StrobeG(1)) and not(not DataC(1))) 
        and (not A)
        and (not B)
        );

Y11 <= not(
        (not(not StrobeG(1)) and not(not DataC(1))) 
        and (not A)
        and (not B)
        );

Y12 <= not(
        (not(not StrobeG(1)) and not(not DataC(1))) 
        and (not A)
        and (not (not B))
        );

Y13 <= not(
        (not(not StrobeG(1)) and not(not DataC(1))) 
        and (not (not A))
        and (not (not B))
        );
        
Y20 <= not(
       (not(not StrobeG(2)) and not(not DataC(2))) 
       and (not A)
       and (not B)
       );

Y21 <= not(
        (not(not StrobeG(2)) and not(not DataC(2))) 
        and (not (not A))
        and (not B)
        );
        
Y22 <= not(
      (not(not StrobeG(2)) and not(not DataC(2))) 
      and (not A)
      and (not (not B))
      );
      
Y23 <= not(
       (not(not StrobeG(2)) and not(not DataC(2))) 
       and (not (not A))
       and (not (not B))
       );                
end Behavioral;
