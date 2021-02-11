# StopWatchVerilog

Video Link
https://www.youtube.com/watch?v=tO61o_u2CWE

This project is to design digital stop watch using Verilog.



This all code is about to design digital stop watch using verilog. We have divide this code into different segments which will be discussed below:
The parts that have been designed are as follow:

The first block name as Blinky_1Hz of the project is generating clock to calculate one second and to calculate one second we observe that, when the value of clock reach to 50MHz it takes one second. 

The second block name as Seconds_Counter is about counting 0 to 59 seconds to count 60 seconds for one minute and this counter is using first block output for one second.

The third block name as Seconds_Segments is to design 7 segments to display seconds digits on board and to display seconds digits, we need two 7-segment blocks of which each segment is of 7 bits. so, we are using 14 bits total to display seconds digits. we are using decoder that will take seconds counter's value and convert it into 14 bits segments display.

The forth block name as Minuts_Counter is to count one minut. To count one minut we are using first block output and we need two 6-bit register counter in which one of counter is counting 60 seconds and enable one bit, the other one counter is counting minuts when enable bit is one and one's counter value become zero.

The fifth block Minuts_Segments is to design 7 segments to display Minuts digits on board and to display Minuts digits, we need two 7-segment blocks of which each segment is of 7 bits. so, we are using 14 bits total to display Minuts digits. we are using decoder that will take Minuts counter's value and convert it into 14 bits segments display.

The sixth block name as Hours_Counter is to count one Hours. To count one Hour we are using first block output and we need two register counter in which one of counter is 12-bits for counting 3600 seconds and enable one bit, the other one counter is 4-bit for counting hours when enable bit is one and one's counter value become zero.

The seven block Hours_Segments is to design 7 segments to display hours digits on board and to display Hours digits, we need two 7-segment blocks of which each segment is of 7 bits. so, we are using 14 bits total to display Hours digits. we are using decoder that will take Hours counter's value and convert it into 14 bits segments display.

The Eight and last part is to design time multiplexing. we are are using 20-bits for refreshing counrter and 7-bits for segments display. we need 3-bit for Led (7-bits for segments display) activating counter and these three bit we are getting from last most three significant bit from 20_bits refreshing counting. we are using 8-bits for anode activating using decoder in Case of time Multiplexing. 
