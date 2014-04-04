library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/adc/conv"

entity conv_entity_494935ad4b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(7 downto 0)
  );
end conv_entity_494935ad4b;

architecture structural of conv_entity_494935ad4b is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_y_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai0_net_x0: std_logic_vector(7 downto 0);
  signal inverter_op_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(6 downto 0);
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  interleaved_adc_64_adc_user_datai0_net_x0 <= in1;
  out1 <= reinterpret_output_port_net_x0;

  concat: entity work.concat_83e473517e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => inverter_op_net,
      in1 => slice1_y_net,
      y => concat_y_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => reinterpret_output_port_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => interleaved_adc_64_adc_user_datai0_net_x0,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 6,
      x_width => 8,
      y_width => 7
    )
    port map (
      x => interleaved_adc_64_adc_user_datai0_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/adc"

entity adc_entity_ec20ac2b0a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    interleaved_adc_64_adc_user_datai0: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_datai1: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_datai2: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_datai3: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_dataq0: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_dataq1: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_dataq2: in std_logic_vector(7 downto 0); 
    interleaved_adc_64_adc_user_dataq3: in std_logic_vector(7 downto 0); 
    i0: out std_logic_vector(7 downto 0); 
    i1: out std_logic_vector(7 downto 0); 
    i2: out std_logic_vector(7 downto 0); 
    i3: out std_logic_vector(7 downto 0); 
    q0: out std_logic_vector(7 downto 0); 
    q1: out std_logic_vector(7 downto 0); 
    q2: out std_logic_vector(7 downto 0); 
    q3: out std_logic_vector(7 downto 0)
  );
end adc_entity_ec20ac2b0a;

architecture structural of adc_entity_ec20ac2b0a is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal interleaved_adc_64_adc_user_datai0_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai1_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai2_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai3_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq0_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq1_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq2_net_x1: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq3_net_x1: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  interleaved_adc_64_adc_user_datai0_net_x1 <= interleaved_adc_64_adc_user_datai0;
  interleaved_adc_64_adc_user_datai1_net_x1 <= interleaved_adc_64_adc_user_datai1;
  interleaved_adc_64_adc_user_datai2_net_x1 <= interleaved_adc_64_adc_user_datai2;
  interleaved_adc_64_adc_user_datai3_net_x1 <= interleaved_adc_64_adc_user_datai3;
  interleaved_adc_64_adc_user_dataq0_net_x1 <= interleaved_adc_64_adc_user_dataq0;
  interleaved_adc_64_adc_user_dataq1_net_x1 <= interleaved_adc_64_adc_user_dataq1;
  interleaved_adc_64_adc_user_dataq2_net_x1 <= interleaved_adc_64_adc_user_dataq2;
  interleaved_adc_64_adc_user_dataq3_net_x1 <= interleaved_adc_64_adc_user_dataq3;
  i0 <= reinterpret_output_port_net_x8;
  i1 <= reinterpret_output_port_net_x9;
  i2 <= reinterpret_output_port_net_x10;
  i3 <= reinterpret_output_port_net_x11;
  q0 <= reinterpret_output_port_net_x12;
  q1 <= reinterpret_output_port_net_x13;
  q2 <= reinterpret_output_port_net_x14;
  q3 <= reinterpret_output_port_net_x15;

  conv1_411742ac35: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_datai1_net_x1,
      out1 => reinterpret_output_port_net_x9
    );

  conv2_7b7319fa51: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_datai2_net_x1,
      out1 => reinterpret_output_port_net_x10
    );

  conv3_44b39b4c24: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_datai3_net_x1,
      out1 => reinterpret_output_port_net_x11
    );

  conv4_3de669e4a2: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_dataq0_net_x1,
      out1 => reinterpret_output_port_net_x12
    );

  conv5_8411b2acf8: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_dataq1_net_x1,
      out1 => reinterpret_output_port_net_x13
    );

  conv6_d9f21717fb: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_dataq2_net_x1,
      out1 => reinterpret_output_port_net_x14
    );

  conv7_df590cafcb: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_dataq3_net_x1,
      out1 => reinterpret_output_port_net_x15
    );

  conv_494935ad4b: entity work.conv_entity_494935ad4b
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => interleaved_adc_64_adc_user_datai0_net_x1,
      out1 => reinterpret_output_port_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/snap64/addr"

entity addr_entity_8e41363cfc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    reg_out: in std_logic_vector(14 downto 0); 
    convert_x0: out std_logic_vector(31 downto 0)
  );
end addr_entity_8e41363cfc;

architecture structural of addr_entity_8e41363cfc is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal convert_dout_net_x0: std_logic_vector(31 downto 0);
  signal register1_q_net_x0: std_logic_vector(14 downto 0);

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  register1_q_net_x0 <= reg_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 15,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => register1_q_net_x0,
      en => "1",
      dout => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/snap64/bram_lsb/calc_add"

entity calc_add_entity_aff9e82df6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(14 downto 0); 
    out_x0: out std_logic_vector(14 downto 0)
  );
end calc_add_entity_aff9e82df6;

architecture structural of calc_add_entity_aff9e82df6 is
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal concat_y_net: std_logic_vector(14 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(14 downto 0);
  signal enable_y_net_x0: std_logic_vector(14 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(13 downto 0);
  signal mux_y_net_x0: std_logic_vector(14 downto 0);

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  enable_y_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_798afc5ec0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 15,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => enable_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 15,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 14,
      x_width => 15,
      y_width => 14
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_e463a7ff8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/snap64/bram_lsb"

entity bram_lsb_entity_a795a20a6f is
  port (
    addr: in std_logic_vector(14 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(14 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end bram_lsb_entity_a795a20a6f;

architecture structural of bram_lsb_entity_a795a20a6f is
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(14 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_din_dout_net: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal en2_y_net_x0: std_logic_vector(31 downto 0);
  signal enable_y_net_x1: std_logic_vector(14 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(14 downto 0);

begin
  enable_y_net_x1 <= addr;
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  en2_y_net_x0 <= data_in;
  logical1_y_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_aff9e82df6: entity work.calc_add_entity_aff9e82df6
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      in_x0 => enable_y_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 15,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => en2_y_net_x0,
      en => "1",
      dout => convert_din_dout_net
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => convert_din_dout_net,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din(0) => logical1_y_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/snap64/freeze_cntr"

entity freeze_cntr_entity_0b279bc5ff is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    addr: out std_logic_vector(14 downto 0); 
    we: out std_logic
  );
end freeze_cntr_entity_0b279bc5ff;

architecture structural of freeze_cntr_entity_0b279bc5ff is
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal counter3_op_net: std_logic_vector(15 downto 0);
  signal enable1_y_net: std_logic;
  signal enable_y_net_x4: std_logic_vector(14 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical5_y_net: std_logic;
  signal mux1_y_net_x0: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  mux1_y_net_x0 <= en;
  register_q_net_x0 <= rst;
  addr <= enable_y_net_x4;
  we <= logical1_y_net_x2;

  counter3: entity work.xlcounter_free_interleaved_adc_64
    generic map (
      core_name0 => "cntr_11_0_95ce35bbf89e0586",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => register_q_net_x0,
      op => counter3_op_net
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 14,
      x_width => 16,
      y_width => 15
    )
    port map (
      x => counter3_op_net,
      y => enable_y_net_x4
    );

  enable1: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => enable1_y_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      ip(0) => register_q_net_x0,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      ip(0) => enable1_y_net,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => logical5_y_net,
      y(0) => logical1_y_net_x2
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux1_y_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/snap64/posedge"

entity posedge_entity_6c292e3de7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge_entity_6c292e3de7;

architecture structural of posedge_entity_6c292e3de7 is
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal delay_q_net: std_logic;
  signal enable_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  enable_y_net_x0 <= in_x0;
  out_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => enable_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => enable_y_net_x0,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64/snap64"

entity snap64_entity_a287c47437 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(63 downto 0); 
    interleaved_adc_64_snap64_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    addr: out std_logic_vector(31 downto 0); 
    bram_lsb: out std_logic_vector(14 downto 0); 
    bram_lsb_x0: out std_logic_vector(31 downto 0); 
    bram_lsb_x1: out std_logic; 
    bram_msb: out std_logic_vector(14 downto 0); 
    bram_msb_x0: out std_logic_vector(31 downto 0); 
    bram_msb_x1: out std_logic
  );
end snap64_entity_a287c47437;

architecture structural of snap64_entity_a287c47437 is
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal concat2_y_net_x0: std_logic_vector(63 downto 0);
  signal constant1_op_net: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal constant2_op_net_x1: std_logic;
  signal constant_op_net: std_logic;
  signal convert_addr_dout_net_x2: std_logic_vector(14 downto 0);
  signal convert_addr_dout_net_x3: std_logic_vector(14 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x3: std_logic_vector(31 downto 0);
  signal convert_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal convert_we_dout_net_x3: std_logic;
  signal en1_y_net_x0: std_logic_vector(31 downto 0);
  signal en2_y_net_x0: std_logic_vector(31 downto 0);
  signal enable_y_net_x0: std_logic;
  signal enable_y_net_x4: std_logic_vector(14 downto 0);
  signal interleaved_adc_64_snap64_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic;
  signal mux2_y_net: std_logic;
  signal register1_q_net_x0: std_logic_vector(14 downto 0);
  signal register_q_net_x0: std_logic;
  signal reinterpret3_output_port_net: std_logic_vector(63 downto 0);
  signal slice_y_net_x0: std_logic;
  signal trig1_y_net: std_logic;
  signal valid_y_net: std_logic;

begin
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  concat2_y_net_x0 <= din;
  interleaved_adc_64_snap64_ctrl_user_data_out_net_x0 <= interleaved_adc_64_snap64_ctrl_user_data_out;
  slice_y_net_x0 <= trig;
  constant2_op_net_x1 <= we;
  addr <= convert_dout_net_x1;
  bram_lsb <= convert_addr_dout_net_x2;
  bram_lsb_x0 <= convert_din1_dout_net_x2;
  bram_lsb_x1 <= convert_we_dout_net_x2;
  bram_msb <= convert_addr_dout_net_x3;
  bram_msb_x0 <= convert_din1_dout_net_x3;
  bram_msb_x1 <= convert_we_dout_net_x3;

  addr_8e41363cfc: entity work.addr_entity_8e41363cfc
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      reg_out => register1_q_net_x0,
      convert_x0 => convert_dout_net_x1
    );

  bram_lsb_a795a20a6f: entity work.bram_lsb_entity_a795a20a6f
    port map (
      addr => enable_y_net_x4,
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      data_in => en2_y_net_x0,
      we => logical1_y_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x2,
      convert_din1_x0 => convert_din1_dout_net_x2,
      convert_we_x0 => convert_we_dout_net_x2
    );

  bram_msb_b3906a2416: entity work.bram_lsb_entity_a795a20a6f
    port map (
      addr => enable_y_net_x4,
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      data_in => en1_y_net_x0,
      we => logical1_y_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x3,
      convert_din1_x0 => convert_din1_dout_net_x3,
      convert_we_x0 => convert_we_dout_net_x3
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  en1: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => reinterpret3_output_port_net,
      y => en1_y_net_x0
    );

  en2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => reinterpret3_output_port_net,
      y => en2_y_net_x0
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => interleaved_adc_64_snap64_ctrl_user_data_out_net_x0,
      y(0) => enable_y_net_x0
    );

  freeze_cntr_0b279bc5ff: entity work.freeze_cntr_entity_0b279bc5ff
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      en => mux1_y_net_x0,
      rst => register_q_net_x0,
      addr => enable_y_net_x4,
      we => logical1_y_net_x2
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      ip(0) => logical_y_net_x0,
      op(0) => inverter_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux2_y_net,
      d1(0) => inverter_op_net,
      y(0) => logical1_y_net
    );

  mux1: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant2_op_net_x1,
      d1(0) => constant2_op_net_x0,
      sel(0) => valid_y_net,
      y(0) => mux1_y_net_x0
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice_y_net_x0,
      d1(0) => constant1_op_net,
      sel(0) => trig1_y_net,
      y(0) => mux2_y_net
    );

  posedge_6c292e3de7: entity work.posedge_entity_6c292e3de7
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      in_x0 => enable_y_net_x0,
      out_x0 => logical_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 15,
      init_value => b"000000000000000"
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      d => enable_y_net_x4,
      en(0) => logical1_y_net_x2,
      rst(0) => logical_y_net_x0,
      q => register1_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      d(0) => constant_op_net,
      en(0) => logical_y_net_x0,
      rst(0) => logical1_y_net,
      q(0) => register_q_net_x0
    );

  reinterpret3: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat2_y_net_x0,
      output_port => reinterpret3_output_port_net
    );

  trig1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => interleaved_adc_64_snap64_ctrl_user_data_out_net_x0,
      y(0) => trig1_y_net
    );

  valid: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => interleaved_adc_64_snap64_ctrl_user_data_out_net_x0,
      y(0) => valid_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "interleaved_adc_64"

entity interleaved_adc_64 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end interleaved_adc_64;

architecture structural of interleaved_adc_64 is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "interleaved_adc_64,sysgen_core,{clock_period=5.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=430,xilinx_adder_subtracter_block=4,xilinx_bit_slice_extractor_block=32,xilinx_bus_concatenator_block=13,xilinx_bus_multiplexer_block=6,xilinx_constant_block_block=12,xilinx_counter_block=1,xilinx_delay_block=1,xilinx_disregard_subsystem_for_generation_block=2,xilinx_gateway_in_block=27,xilinx_gateway_out_block=9,xilinx_inverter_block=12,xilinx_logical_block_block=4,xilinx_register_block=2,xilinx_single_port_random_access_memory_block=2,xilinx_system_generator_block=1,xilinx_type_converter_block=13,xilinx_type_reinterpreter_block=17,}";

  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal concat2_y_net_x0: std_logic_vector(63 downto 0);
  signal constant2_op_net_x1: std_logic;
  signal interleaved_adc_64_adc_user_data_valid_net: std_logic;
  signal interleaved_adc_64_adc_user_datai0_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai1_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai2_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_datai3_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq0_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq1_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq2_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_dataq3_net: std_logic_vector(7 downto 0);
  signal interleaved_adc_64_adc_user_outofrangei0_net: std_logic;
  signal interleaved_adc_64_adc_user_outofrangei1_net: std_logic;
  signal interleaved_adc_64_adc_user_outofrangeq0_net: std_logic;
  signal interleaved_adc_64_adc_user_outofrangeq1_net: std_logic;
  signal interleaved_adc_64_adc_user_sync0_net: std_logic;
  signal interleaved_adc_64_adc_user_sync1_net: std_logic;
  signal interleaved_adc_64_adc_user_sync2_net: std_logic;
  signal interleaved_adc_64_adc_user_sync3_net: std_logic;
  signal interleaved_adc_64_snap64_addr_user_data_in_net: std_logic_vector(31 downto 0);
  signal interleaved_adc_64_snap64_bram_lsb_addr_net: std_logic_vector(14 downto 0);
  signal interleaved_adc_64_snap64_bram_lsb_data_in_net: std_logic_vector(31 downto 0);
  signal interleaved_adc_64_snap64_bram_lsb_data_out_net: std_logic_vector(31 downto 0);
  signal interleaved_adc_64_snap64_bram_lsb_we_net: std_logic;
  signal interleaved_adc_64_snap64_bram_msb_addr_net: std_logic_vector(14 downto 0);
  signal interleaved_adc_64_snap64_bram_msb_data_in_net: std_logic_vector(31 downto 0);
  signal interleaved_adc_64_snap64_bram_msb_data_out_net: std_logic_vector(31 downto 0);
  signal interleaved_adc_64_snap64_bram_msb_we_net: std_logic;
  signal interleaved_adc_64_snap64_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal interleaved_adc_64_trigger_user_data_out_net: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret5_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret6_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret7_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret8_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(7 downto 0);
  signal slice_y_net_x0: std_logic;

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  interleaved_adc_64_adc_user_data_valid_net <= interleaved_adc_64_adc_user_data_valid;
  interleaved_adc_64_adc_user_datai0_net <= interleaved_adc_64_adc_user_datai0;
  interleaved_adc_64_adc_user_datai1_net <= interleaved_adc_64_adc_user_datai1;
  interleaved_adc_64_adc_user_datai2_net <= interleaved_adc_64_adc_user_datai2;
  interleaved_adc_64_adc_user_datai3_net <= interleaved_adc_64_adc_user_datai3;
  interleaved_adc_64_adc_user_dataq0_net <= interleaved_adc_64_adc_user_dataq0;
  interleaved_adc_64_adc_user_dataq1_net <= interleaved_adc_64_adc_user_dataq1;
  interleaved_adc_64_adc_user_dataq2_net <= interleaved_adc_64_adc_user_dataq2;
  interleaved_adc_64_adc_user_dataq3_net <= interleaved_adc_64_adc_user_dataq3;
  interleaved_adc_64_adc_user_outofrangei0_net <= interleaved_adc_64_adc_user_outofrangei0;
  interleaved_adc_64_adc_user_outofrangei1_net <= interleaved_adc_64_adc_user_outofrangei1;
  interleaved_adc_64_adc_user_outofrangeq0_net <= interleaved_adc_64_adc_user_outofrangeq0;
  interleaved_adc_64_adc_user_outofrangeq1_net <= interleaved_adc_64_adc_user_outofrangeq1;
  interleaved_adc_64_adc_user_sync0_net <= interleaved_adc_64_adc_user_sync0;
  interleaved_adc_64_adc_user_sync1_net <= interleaved_adc_64_adc_user_sync1;
  interleaved_adc_64_adc_user_sync2_net <= interleaved_adc_64_adc_user_sync2;
  interleaved_adc_64_adc_user_sync3_net <= interleaved_adc_64_adc_user_sync3;
  interleaved_adc_64_snap64_bram_lsb_data_out_net <= interleaved_adc_64_snap64_bram_lsb_data_out;
  interleaved_adc_64_snap64_bram_msb_data_out_net <= interleaved_adc_64_snap64_bram_msb_data_out;
  interleaved_adc_64_snap64_ctrl_user_data_out_net <= interleaved_adc_64_snap64_ctrl_user_data_out;
  interleaved_adc_64_trigger_user_data_out_net <= interleaved_adc_64_trigger_user_data_out;
  interleaved_adc_64_snap64_addr_user_data_in <= interleaved_adc_64_snap64_addr_user_data_in_net;
  interleaved_adc_64_snap64_bram_lsb_addr <= interleaved_adc_64_snap64_bram_lsb_addr_net;
  interleaved_adc_64_snap64_bram_lsb_data_in <= interleaved_adc_64_snap64_bram_lsb_data_in_net;
  interleaved_adc_64_snap64_bram_lsb_we <= interleaved_adc_64_snap64_bram_lsb_we_net;
  interleaved_adc_64_snap64_bram_msb_addr <= interleaved_adc_64_snap64_bram_msb_addr_net;
  interleaved_adc_64_snap64_bram_msb_data_in <= interleaved_adc_64_snap64_bram_msb_data_in_net;
  interleaved_adc_64_snap64_bram_msb_we <= interleaved_adc_64_snap64_bram_msb_we_net;

  adc_ec20ac2b0a: entity work.adc_entity_ec20ac2b0a
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      interleaved_adc_64_adc_user_datai0 => interleaved_adc_64_adc_user_datai0_net,
      interleaved_adc_64_adc_user_datai1 => interleaved_adc_64_adc_user_datai1_net,
      interleaved_adc_64_adc_user_datai2 => interleaved_adc_64_adc_user_datai2_net,
      interleaved_adc_64_adc_user_datai3 => interleaved_adc_64_adc_user_datai3_net,
      interleaved_adc_64_adc_user_dataq0 => interleaved_adc_64_adc_user_dataq0_net,
      interleaved_adc_64_adc_user_dataq1 => interleaved_adc_64_adc_user_dataq1_net,
      interleaved_adc_64_adc_user_dataq2 => interleaved_adc_64_adc_user_dataq2_net,
      interleaved_adc_64_adc_user_dataq3 => interleaved_adc_64_adc_user_dataq3_net,
      i0 => reinterpret_output_port_net_x8,
      i1 => reinterpret_output_port_net_x9,
      i2 => reinterpret_output_port_net_x10,
      i3 => reinterpret_output_port_net_x11,
      q0 => reinterpret_output_port_net_x12,
      q1 => reinterpret_output_port_net_x13,
      q2 => reinterpret_output_port_net_x14,
      q3 => reinterpret_output_port_net_x15
    );

  concat2: entity work.concat_15d98836ad
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret3_output_port_net,
      in1 => reinterpret7_output_port_net,
      in2 => reinterpret1_output_port_net,
      in3 => reinterpret5_output_port_net,
      in4 => reinterpret2_output_port_net,
      in5 => reinterpret6_output_port_net,
      in6 => reinterpret4_output_port_net,
      in7 => reinterpret8_output_port_net,
      y => concat2_y_net_x0
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x1
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x13,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x14,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x12,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x15,
      output_port => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x9,
      output_port => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x10,
      output_port => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x8,
      output_port => reinterpret7_output_port_net
    );

  reinterpret8: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x11,
      output_port => reinterpret8_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => interleaved_adc_64_trigger_user_data_out_net,
      y(0) => slice_y_net_x0
    );

  snap64_a287c47437: entity work.snap64_entity_a287c47437
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => concat2_y_net_x0,
      interleaved_adc_64_snap64_ctrl_user_data_out => interleaved_adc_64_snap64_ctrl_user_data_out_net,
      trig => slice_y_net_x0,
      we => constant2_op_net_x1,
      addr => interleaved_adc_64_snap64_addr_user_data_in_net,
      bram_lsb => interleaved_adc_64_snap64_bram_lsb_addr_net,
      bram_lsb_x0 => interleaved_adc_64_snap64_bram_lsb_data_in_net,
      bram_lsb_x1 => interleaved_adc_64_snap64_bram_lsb_we_net,
      bram_msb => interleaved_adc_64_snap64_bram_msb_addr_net,
      bram_msb_x0 => interleaved_adc_64_snap64_bram_msb_data_in_net,
      bram_msb_x1 => interleaved_adc_64_snap64_bram_msb_we_net
    );

end structural;
