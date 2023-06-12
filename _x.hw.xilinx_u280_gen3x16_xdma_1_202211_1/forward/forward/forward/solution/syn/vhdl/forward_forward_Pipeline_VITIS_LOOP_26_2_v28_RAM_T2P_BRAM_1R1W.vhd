-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity forward_forward_Pipeline_VITIS_LOOP_26_2_v28_RAM_T2P_BRAM_1R1W is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 10
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of forward_forward_Pipeline_VITIS_LOOP_26_2_v28_RAM_T2P_BRAM_1R1W is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10111011110011100111100010011110", 1 => "00111100111011100001000101010110", 2 => "10111011110010010100101100111000", 3 => "10111100100001110111101010110011", 
    4 => "00111011011001100000100000000111", 5 => "10111100100001011010100100100010", 6 => "10111100111011110010100001000001", 7 => "10111011001001000101110101000010", 
    8 => "10111100111001011010010101110110", 9 => "00111001000010100110100101111011");



attribute syn_rom_style : string;

attribute syn_rom_style of mem0 : signal is "block_rom"; 
attribute ROM_STYLE : string;

attribute ROM_STYLE of mem0 : signal is "block";

begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

