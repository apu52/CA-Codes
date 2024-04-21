----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:07:23 04/20/2024 
-- Design Name: 
-- Module Name:    fourbitbinarymultiplier - Behavioral 
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

entity fourbitbinarymultiplier is
    Port ( m : in  STD_LOGIC_VECTOR (3 downto 0);
           q : in  STD_LOGIC_VECTOR (3 downto 0);
           r : out  STD_LOGIC_VECTOR (7 downto 0));
end fourbitbinarymultiplier;

architecture Behavioral of fourbitbinarymultiplier is

begin

process(m,q)
variable acc: STD_LOGIC_VECTOR(8 downto 0);
variable multiplicand : STD_LOGIC_VECTOR(4 downto 0);
begin
acc(8 downto 4):= "00000";
acc(3 downto 0):= q;
multiplicand := '0' & m;
for i in 1 to 4 loop
if acc(0) = '1' then
acc(8 downto 4):= acc(8 downto 4)+multiplicand;
end if;
acc := '0' & acc(8 downto 1);
end loop;
r <= acc(7 downto 0);
end process;

end Behavioral ;



