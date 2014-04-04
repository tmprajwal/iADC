----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
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

entity interleaved_adc_64_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
      interleaved_adc_64_adc_user_data_valid: in std_logic; 
      interleaved_adc_64_adc_user_datai0: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_datai1: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_datai2: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_datai3: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq0: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq1: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq2: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq3: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_outofrangei0: in std_logic; 
      interleaved_adc_64_adc_user_outofrangei1: in std_logic; 
      interleaved_adc_64_adc_user_outofrangeq0: in std_logic; 
      interleaved_adc_64_adc_user_outofrangeq1: in std_logic; 
      interleaved_adc_64_adc_user_sync0: in std_logic; 
      interleaved_adc_64_adc_user_sync1: in std_logic; 
      interleaved_adc_64_adc_user_sync2: in std_logic; 
      interleaved_adc_64_adc_user_sync3: in std_logic; 
      interleaved_adc_64_snap64_bram_lsb_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_msb_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_trigger_user_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_addr_user_data_in: out std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_lsb_addr: out std_logic_vector(14 downto 0); 
      interleaved_adc_64_snap64_bram_lsb_data_in: out std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_lsb_we: out std_logic; 
      interleaved_adc_64_snap64_bram_msb_addr: out std_logic_vector(14 downto 0); 
      interleaved_adc_64_snap64_bram_msb_data_in: out std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_msb_we: out std_logic
    );
end interleaved_adc_64_cw_stub;

architecture Behavioral of interleaved_adc_64_cw_stub is

  component interleaved_adc_64_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
      interleaved_adc_64_adc_user_data_valid: in std_logic; 
      interleaved_adc_64_adc_user_datai0: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_datai1: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_datai2: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_datai3: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq0: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq1: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq2: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_dataq3: in std_logic_vector(7 downto 0); 
      interleaved_adc_64_adc_user_outofrangei0: in std_logic; 
      interleaved_adc_64_adc_user_outofrangei1: in std_logic; 
      interleaved_adc_64_adc_user_outofrangeq0: in std_logic; 
      interleaved_adc_64_adc_user_outofrangeq1: in std_logic; 
      interleaved_adc_64_adc_user_sync0: in std_logic; 
      interleaved_adc_64_adc_user_sync1: in std_logic; 
      interleaved_adc_64_adc_user_sync2: in std_logic; 
      interleaved_adc_64_adc_user_sync3: in std_logic; 
      interleaved_adc_64_snap64_bram_lsb_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_msb_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_trigger_user_data_out: in std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_addr_user_data_in: out std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_lsb_addr: out std_logic_vector(14 downto 0); 
      interleaved_adc_64_snap64_bram_lsb_data_in: out std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_lsb_we: out std_logic; 
      interleaved_adc_64_snap64_bram_msb_addr: out std_logic_vector(14 downto 0); 
      interleaved_adc_64_snap64_bram_msb_data_in: out std_logic_vector(31 downto 0); 
      interleaved_adc_64_snap64_bram_msb_we: out std_logic
    );
  end component;
begin

interleaved_adc_64_cw_i : interleaved_adc_64_cw
  port map (
    ce => ce,
    clk => clk,
    interleaved_adc_64_adc_user_data_valid => interleaved_adc_64_adc_user_data_valid,
    interleaved_adc_64_adc_user_datai0 => interleaved_adc_64_adc_user_datai0,
    interleaved_adc_64_adc_user_datai1 => interleaved_adc_64_adc_user_datai1,
    interleaved_adc_64_adc_user_datai2 => interleaved_adc_64_adc_user_datai2,
    interleaved_adc_64_adc_user_datai3 => interleaved_adc_64_adc_user_datai3,
    interleaved_adc_64_adc_user_dataq0 => interleaved_adc_64_adc_user_dataq0,
    interleaved_adc_64_adc_user_dataq1 => interleaved_adc_64_adc_user_dataq1,
    interleaved_adc_64_adc_user_dataq2 => interleaved_adc_64_adc_user_dataq2,
    interleaved_adc_64_adc_user_dataq3 => interleaved_adc_64_adc_user_dataq3,
    interleaved_adc_64_adc_user_outofrangei0 => interleaved_adc_64_adc_user_outofrangei0,
    interleaved_adc_64_adc_user_outofrangei1 => interleaved_adc_64_adc_user_outofrangei1,
    interleaved_adc_64_adc_user_outofrangeq0 => interleaved_adc_64_adc_user_outofrangeq0,
    interleaved_adc_64_adc_user_outofrangeq1 => interleaved_adc_64_adc_user_outofrangeq1,
    interleaved_adc_64_adc_user_sync0 => interleaved_adc_64_adc_user_sync0,
    interleaved_adc_64_adc_user_sync1 => interleaved_adc_64_adc_user_sync1,
    interleaved_adc_64_adc_user_sync2 => interleaved_adc_64_adc_user_sync2,
    interleaved_adc_64_adc_user_sync3 => interleaved_adc_64_adc_user_sync3,
    interleaved_adc_64_snap64_bram_lsb_data_out => interleaved_adc_64_snap64_bram_lsb_data_out,
    interleaved_adc_64_snap64_bram_msb_data_out => interleaved_adc_64_snap64_bram_msb_data_out,
    interleaved_adc_64_snap64_ctrl_user_data_out => interleaved_adc_64_snap64_ctrl_user_data_out,
    interleaved_adc_64_trigger_user_data_out => interleaved_adc_64_trigger_user_data_out,
    interleaved_adc_64_snap64_addr_user_data_in => interleaved_adc_64_snap64_addr_user_data_in,
    interleaved_adc_64_snap64_bram_lsb_addr => interleaved_adc_64_snap64_bram_lsb_addr,
    interleaved_adc_64_snap64_bram_lsb_data_in => interleaved_adc_64_snap64_bram_lsb_data_in,
    interleaved_adc_64_snap64_bram_lsb_we => interleaved_adc_64_snap64_bram_lsb_we,
    interleaved_adc_64_snap64_bram_msb_addr => interleaved_adc_64_snap64_bram_msb_addr,
    interleaved_adc_64_snap64_bram_msb_data_in => interleaved_adc_64_snap64_bram_msb_data_in,
    interleaved_adc_64_snap64_bram_msb_we => interleaved_adc_64_snap64_bram_msb_we);
end Behavioral;

