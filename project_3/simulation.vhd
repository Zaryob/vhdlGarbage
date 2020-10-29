-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 24.10.2020 14:14:56 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_main is
end tb_main;

architecture tb of tb_main is

    component main
        port (en : in std_logic;
              i  : in std_logic_vector (1 downto 0);
              o  : out std_logic_vector (3 downto 0));
    end component;

    signal en : std_logic;
    signal i  : std_logic_vector (1 downto 0);
    signal o  : std_logic_vector (3 downto 0);

begin

    dut : main
    port map (en => en,
              i  => i,
              o  => o);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        en <= '0';
        i <= "00";
        wait for 10 ns;
        
        en <= '0';
        i <= "01";
        wait for 10 ns;
        
        en <= '0';
        i <= "11";
        wait for 10 ns;
        
        en <= '0';
        i <= "10";
        wait for 10 ns;
        
        en <= '1';
        i <= "00";
        wait for 10 ns;
        
        en <= '1';
        i <= "01";
        wait for 10 ns;
        
        en <= '1';
        i <= "11";
        wait for 10 ns;
        
        en <= '1';
        i <= "10";
        wait for 10 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_main of tb_main is
    for tb
    end for;
end cfg_tb_main;