-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 31.10.2020 13:13:32 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_design_1_wrapper is
end tb_design_1_wrapper;

architecture tb of tb_design_1_wrapper is

    component design_1_wrapper
        port (A : in std_logic;
              B : in std_logic;
              E : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal E : std_logic;

begin

    dut : design_1_wrapper
    port map (A => A,
              B => B,
              E => E);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= '0';
        B <= '0';
        wait for 10 ns;
        A <= '0';
        B <= '1';
        wait for 10 ns;
        A <= '1';
        B <= '0';
        wait for 10 ns;
        A <= '1';
        B <= '1';
        wait for 10 ns;
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_design_1_wrapper of tb_design_1_wrapper is
    for tb
    end for;
end cfg_tb_design_1_wrapper;