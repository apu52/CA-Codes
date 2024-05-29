----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:37 04/08/2024 
-- Design Name: 
-- Module Name:    DEMUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEMUX is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end DEMUX;

architecture Behavioral of DEMUX is

begin

process(I,S)
begin
O<= "UUUU";
case s is
when "00" => O(0) <= I ;
when "01" => O(1) <= I ;
when "10" => O(2) <= I ;
when "11" => O(3) <= I ;
when others => O <= "UUUU" ;

end case;
end process;
end Behavioral;

