----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:21 04/26/2024 
-- Design Name: 
-- Module Name:    AU - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           f : out  STD_LOGIC_VECTOR (3 downto 0));
end AU;

architecture Behavioral of AU is
begin
process(a,b,sel)
variable
bbar : std_logic_vector(3 downto 0);
begin
bbar := not b;
case sel is
when "000" => f <= a+b;
when "001" => f <= a+b+1;
when "010" => f <= a+bbar;
when "011" => f <= a+bbar+1;
when "100" => f <= a-1;
when "101" => f <= a;
when "110" => f <= a;
when "111" => f <= a+1;
when others => f <= "UUUU";
end case;
end process;

end Behavioral;

