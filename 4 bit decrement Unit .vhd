----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:32 04/20/2024 
-- Design Name: 
-- Module Name:    decrementunit - Behavioral 
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

entity decrementunit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end decrementunit;

architecture Behavioral of decrementunit is

component FAusingHA is
    Port ( af : in  STD_LOGIC;
           bf : in  STD_LOGIC;
           cf : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal sig: STD_LOGIC_VECTOR(3 downto 0);
signal cp: STD_LOGIC_VECTOR(2 downto 0);

begin
sig <= "1111";
f1 : FAusingHA port map (a(0),sig(0),cin,s(0),cp(0));
f2 : FAusingHA port map (a(1),sig(1),cp(0),s(1),cp(1));
f3 : FAusingHA port map (a(2),sig(2),cp(1),s(2),cp(2));
f4 : FAusingHA port map (a(3),sig(3),cp(2),s(3),cout);
end Behavioral;

