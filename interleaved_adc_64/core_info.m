% interleaved_adc_64/XSG core config
interleaved_adc_64_XSG_core_config_type         = 'xps_xsg';
interleaved_adc_64_XSG_core_config_param        = '';

% interleaved_adc_64/adc
interleaved_adc_64_adc_type         = 'xps_adc';
interleaved_adc_64_adc_param        = 'adc = adc0 / interleave = off';
interleaved_adc_64_adc_ip_name      = 'adc_interface';

% interleaved_adc_64/snap64/addr
interleaved_adc_64_snap64_addr_type         = 'xps_sw_reg';
interleaved_adc_64_snap64_addr_param        = 'out';
interleaved_adc_64_snap64_addr_ip_name      = 'opb_register_simulink2ppc';
interleaved_adc_64_snap64_addr_addr_start   = hex2dec('01000000');
interleaved_adc_64_snap64_addr_addr_end     = hex2dec('010000FF');

% interleaved_adc_64/snap64/bram_lsb
interleaved_adc_64_snap64_bram_lsb_type         = 'xps_bram';
interleaved_adc_64_snap64_bram_lsb_param        = '32768';
interleaved_adc_64_snap64_bram_lsb_ip_name      = 'bram_if';
interleaved_adc_64_snap64_bram_lsb_addr_start   = hex2dec('01020000');
interleaved_adc_64_snap64_bram_lsb_addr_end     = hex2dec('0103FFFF');

% interleaved_adc_64/snap64/bram_msb
interleaved_adc_64_snap64_bram_msb_type         = 'xps_bram';
interleaved_adc_64_snap64_bram_msb_param        = '32768';
interleaved_adc_64_snap64_bram_msb_ip_name      = 'bram_if';
interleaved_adc_64_snap64_bram_msb_addr_start   = hex2dec('01040000');
interleaved_adc_64_snap64_bram_msb_addr_end     = hex2dec('0105FFFF');

% interleaved_adc_64/snap64/ctrl
interleaved_adc_64_snap64_ctrl_type         = 'xps_sw_reg';
interleaved_adc_64_snap64_ctrl_param        = 'in';
interleaved_adc_64_snap64_ctrl_ip_name      = 'opb_register_ppc2simulink';
interleaved_adc_64_snap64_ctrl_addr_start   = hex2dec('01060000');
interleaved_adc_64_snap64_ctrl_addr_end     = hex2dec('010600FF');

% interleaved_adc_64/trigger
interleaved_adc_64_trigger_type         = 'xps_sw_reg';
interleaved_adc_64_trigger_param        = 'in';
interleaved_adc_64_trigger_ip_name      = 'opb_register_ppc2simulink';
interleaved_adc_64_trigger_addr_start   = hex2dec('01060100');
interleaved_adc_64_trigger_addr_end     = hex2dec('010601FF');

