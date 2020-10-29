----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2020 13:30:09
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
    Port ( i : in STD_LOGIC_VECTOR(5 downto 0);
           o : out STD_LOGIC);
end main;

architecture Behavioral of main is

component m0 is
   Port ( i : in STD_LOGIC_VECTOR(5 downto 0);
           o : out STD_LOGIC_VECTOR(5 downto 0));
end component;

component m1 is 
Port ( i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           o1 : out STD_LOGIC);
end component;

component m2 is
Port ( i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           o1 : out STD_LOGIC);
end component;

component m3 is
 Port ( i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           o1 : out STD_LOGIC);
end component;

SIGNAL w: std_logic_vector(5 downto 0);
SIGNAL x, y: std_logic;
begin

U1: m0 PORT MAP(i, w);
U2: m1 PORT MAP(w(5), w(4), w(3), x);
U3: m2 PORT MAP(w(2), w(1), w(0), y);
U4: m3 PORT MAP(x, y, o);

end Behavioral;
