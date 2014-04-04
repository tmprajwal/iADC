copy implementation\system.bit ..\bit_files\interleaved_adc_64_2014_Apr_03_2244.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\interleaved_adc_64_2014_Apr_03_2244.bof
