----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:23:18 04/21/2024 
-- Design Name: 
-- Module Name:    binarymultiplication - Behavioral 
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

entity UNSIGNED_MUL is
    Port ( q : in  STD_LOGIC_VECTOR (3 downto 0);
           m : in  STD_LOGIC_VECTOR (3 downto 0);
           r : out  STD_LOGIC_VECTOR (7 downto 0));
end UNSIGNED_MUL;

architecture Behavioral of UNSIGNED_MUL is

begin

process(q, m)

variable AC : STD_LOGIC_VECTOR (8 downto 0);
variable MULD : STD_LOGIC_VECTOR (4 downto 0);

begin
AC (8 downto 4) := "00000";
AC (3 downto 0) := q;
MULD := '0' & m;

for i in 1 to 4 loop

if AC(0) = '1' then
AC (8 downto 4) := STD_LOGIC_VECTOR(unsigned(AC (8 downto 4)) + unsigned(MULD));

end if;

AC := '0' & AC (8 downto 1);
end loop;
r <= AC (7 downto 0);

end Process;

end Behavioral;



