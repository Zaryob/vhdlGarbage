----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2020 01:41:26 PM
-- Design Name: 
-- Module Name: main - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( en: in std_logic;
           i: in std_logic_vector(1 downto 0);
           o: out std_logic_vector(3 downto 0)
           );
           
end main;

architecture Behavioral of main is

begin
o <= "0000" when en='0' else
     "1000" when i="00" else
     "0100" when i="01" else
     "0010" when i="10" else
     "0001" when i="11";
 
end Behavioral;
