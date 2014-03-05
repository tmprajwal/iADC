'''
 Connect to the ROACH board and run the design
 Author: Prajwal Mohanmurthy (Hong Chen)
		 prajwal@mohanmurthy.com
		 MIT LNS
'''


import corr,time

roach=corr.katcp_wrapper.FpgaClient('192.168.1.217',7147)
time.sleep(0.001)   # wait for roach to connect
roach.progdev('interleaved_adc_64_2010_Jul_06_1446.bof')
