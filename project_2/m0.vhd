----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2020 13:38:51
-- Design Name: 
-- Module Name: m0 - Behavioral
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

entity m0 is
    Port ( i : in STD_LOGIC_VECTOR(5 downto 0);
           o : out STD_LOGIC_VECTOR(5 downto 0));
end m0;

architecture Behavioral of m0 is
    component inverter is 
    Port ( i1 : in STD_LOGIC;
               o1 : out STD_LOGIC);
    end component;
begin

X1: inverter PORT MAP(i(5), o(5));
X2: inverter PORT MAP(i(4), o(4));
X3: inverter PORT MAP(i(3), o(3));
X4: inverter PORT MAP(i(2), o(2));
X5: inverter PORT MAP(i(1), o(1));
X6: inverter PORT MAP(i(0), o(0));

end Behavioral;
