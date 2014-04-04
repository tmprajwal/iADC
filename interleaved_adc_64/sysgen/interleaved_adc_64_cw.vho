
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component interleaved_adc_64_cw  port (
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
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : interleaved_adc_64_cw
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
-- INST_TAG_END ------ End INSTANTIATION Template ------------
