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
    P,Q: IN std_logic_vector (7 downto 0); 
    Equal, More: OUT std_logic
);
--  Port ( );
end Comparator;

architecture Behavioral of Comparator is

begin

Equal <= not((not(P(0) xor Q(0))) and (not(P(1) xor Q(1))) 
         and (not(P(2) xor Q(2))) and (not(P(3) xor Q(3))) and (not(P(4) xor Q(4))) 
         and (not(P(5) xor Q(5))) and (not(P(6) xor Q(6))) and (not(P(7) xor Q(7))));
        
More <= not(( (not(P(1) xor Q(1)))and(not(P(2) xor Q(2)))and(not(P(3) xor Q(3)))and(not(P(4) xor Q(4)))and(not(P(5) xor Q(5)))and(not(P(6) xor Q(6)))and(not(P(7) xor Q(7)))and(P(0))and(not(Q(0))) ) 
         or ( (not(P(2) xor Q(2)))and(not(P(3) xor Q(3)))and(not(P(4) xor Q(4)))and(not(P(5) xor Q(5)))and(not(P(6) xor Q(6)))and(not(P(7) xor Q(7)))and(P(1))and(not(Q(1)))      ) 
         or ( (not(P(3) xor Q(3)))and(not(P(4) xor Q(4)))and(not(P(5) xor Q(5)))and(not(P(6) xor Q(6)))and(not(P(7) xor Q(7)))and(P(2))and(not(Q(2)))                                          ) 
         or ( (not(P(4) xor Q(4)))and(not(P(5) xor Q(5)))and(not(P(6) xor Q(6)))and(not(P(7) xor Q(7)))and(P(3))and(not(Q(3)))                                          ) 
         or ( (not(P(5) xor Q(5)))and(not(P(6) xor Q(6)))and(not(P(7) xor Q(7)))and(P(4))and(not(Q(4)))                                           ) 
         or ( (not(P(6) xor Q(6)))and(not(P(7) xor Q(7)))and(P(5))and(not(Q(5)))                                           ) 
         or ( (not(P(7) xor Q(7)))and(P(6))and(not(Q(6)))                                           ) 
         or ( (P(7))and(not(Q(7)))                                           )
);        

end Behavioral;
