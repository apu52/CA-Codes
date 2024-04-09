----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:19 04/08/2024 
-- Design Name: 
-- Module Name:    FAbehavioral - Behavioral 
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

entity FAbehavioral is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end FAbehavioral;

architecture Behavioral of FAbehavioral is

begin

process(a,b,cin)

variable Z : STD_LOGIC_VECTOR (2 downto 0);

begin

Z(2) := a;
Z(1) := b;
Z(0) := cin;

case Z is
when "000" => s <='0'; cout <= '0';
when "001" => s <='1'; cout <= '0';
when "010" => s <='1'; cout <= '0';
when "011" => s <='0'; cout <= '1';
when "100" => s <='1'; cout <= '0';
when "101" => s <='0'; cout <= '1';
when "110" => s <='0'; cout <= '1';
when "111" => s <='1'; cout <= '1';
when others => s <='U'; cout <= 'U';

end case;
end process;
end Behavioral;

