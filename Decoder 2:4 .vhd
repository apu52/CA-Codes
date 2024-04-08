----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:42:40 04/08/2024 
-- Design Name: 
-- Module Name:    Decoderthree - Behavioral 
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

entity Decoderthree is
    Port ( ad : in  STD_LOGIC;
           bd : in  STD_LOGIC;
           en : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoderthree;

architecture Behavioral of Decoderthree is

component Decodernew is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  en: in  STD_LOGIC;
           z : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sig1: STD_LOGIC;

begin
sig1 <= NOT en;
decoder1 : Decodernew port map (sig1 , ad , bd ,d(3 downto 0));
decoder2 : Decodernew port map (en , ad , bd ,d(7 downto 4));

end Behavioral;

