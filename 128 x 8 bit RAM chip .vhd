----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:04:12 05/04/2024 
-- Design Name: 
-- Module Name:    ramchip - Behavioral 
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

entity ramchip is
    Port ( clk : in  STD_LOGIC;
           cs : in  STD_LOGIC;
           r : in  STD_LOGIC;
           w : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           abus : in  STD_LOGIC_VECTOR (6 downto 0);
           dbus : inout  STD_LOGIC_VECTOR (7 downto 0));
end ramchip;

architecture Behavioral of ramchip is

type ma is array (0 to 127) of
STD_LOGIC_VECTOR(7 downto 0);
signal mem : ma;
begin
process(clk)

begin

if(rising_edge(clk) and cs = '1') then
  if w = '1' then 
mem(conv_integer(unsigned(abus)))<= dbus;
end if;
if r= '1' then 
dbus <= mem(conv_integer(unsigned(abus)));
end if;
if clr = '1' then
for i in 0 to 127 loop 
mem(i) <= "UUUUUUUU";
end loop;
end if;
end if;
end process;


end Behavioral;

