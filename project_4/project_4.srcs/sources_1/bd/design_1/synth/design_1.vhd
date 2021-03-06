--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Oct 31 12:45:26 2020
--Host        : DESKTOP-H1K4L7I running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    D : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xup_nand2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_nand2_0_0;
  component design_1_xup_nand2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_nand2_1_0;
  signal A_1 : STD_LOGIC;
  signal B_1 : STD_LOGIC;
  signal xup_nand2_0_y : STD_LOGIC;
  signal xup_nand2_1_y : STD_LOGIC;
begin
  A_1 <= A;
  B_1 <= B;
  D <= xup_nand2_1_y;
xup_nand2_0: component design_1_xup_nand2_0_0
     port map (
      a => B_1,
      b => B_1,
      y => xup_nand2_0_y
    );
xup_nand2_1: component design_1_xup_nand2_1_0
     port map (
      a => A_1,
      b => xup_nand2_0_y,
      y => xup_nand2_1_y
    );
end STRUCTURE;
