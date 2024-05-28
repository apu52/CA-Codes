----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:30 04/08/2024 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           en : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder;

architecture Behavioral of Decoder is

begin

process (a,b,en)
variable abar, bbar : STD_LOGIC;
begin
abar :=NOT a;
bbar :=NOT b;
if en = '1' then
z(0) <= abar AND bbar;
z(1) <= abar AND b;
z(2) <= a AND bbar;
z(3) <= a AND b;

else
z <= "UUUU";
end if;
end process;


end Behavioral;

