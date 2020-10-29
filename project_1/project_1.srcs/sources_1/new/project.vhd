----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2020 05:41:31 PM
-- Design Name: 
-- Module Name: project - Behavioral
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

entity project is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           x : out STD_LOGIC;
           y : out STD_LOGIC);
end project;

architecture Behavioral of project is
component inverter is
    Port ( a : in STD_LOGIC;
           b : out STD_LOGIC);
end component;

component nand_2 is
 Port (a: in STD_LOGIC;
       b: in STD_LOGIC;
       c: out STD_LOGIC);
end component;

component nand_3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC);
end component;

signal W:std_logic;

begin
u1: inverter port map(b,W);
u2: nand_2 port map(a, b, x);
u3: nand_3 port map(w, c, d, y);

end Behavioral;
