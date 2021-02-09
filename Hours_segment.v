`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2021 10:35:27 PM
// Design Name: 
// Module Name: Hours_segment
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Hours_segment(hours_bcd,seg3);

input [3:0] hours_bcd;
output reg [13:0] seg3;


always @ (hours_bcd)
begin
   case(hours_bcd)
           0: seg3 = 14'b0000001_0000001; // "0"     
           1: seg3 = 14'b0000001_1001111; // "1" 
           2: seg3 = 14'b0000001_0010010; // "2" 
           3: seg3 = 14'b0000001_0000110; // "3" 
           4: seg3 = 14'b0000001_1001100; // "4" 
           5: seg3 = 14'b0000001_0100100; // "5" 
           6: seg3 = 14'b0000001_0100000; // "6" 
           7: seg3 = 14'b0000001_0001111; // "7" 
           8: seg3 = 14'b0000001_0000000; // "8"     
           9: seg3 = 14'b0000001_0000100; // "9"
           
           10: seg3 = 14'b1001111_0000001; // "10"     
           11: seg3 = 14'b1001111_1001111; // "11" 
           12: seg3 = 14'b1001111_0010010; // "12" 
//           13: seg2 = 14'b1001111_0000110; // "13" 
//           14: seg2 = 14'b1001111_1001100; // "14" 
//           15: seg2 = 14'b1001111_0100100; // "15" 
//           16: seg2 = 14'b1001111_0100000; // "16" 
//           17: seg2 = 14'b1001111_0001111; // "17" 
//           18: seg2 = 14'b1001111_0000000; // "18"     
//           19: seg2 = 14'b1001111_0000100; // "19"
          
   
//           20: seg2 = 14'b0010010_0000001; // "10"     
//           21: seg2 = 14'b0010010_1001111; // "11" 
//           22: seg2 = 14'b0010010_0010010; // "12" 
//           23: seg2 = 14'b0010010_0000110; // "13" 
//           24: seg2 = 14'b0010010_1001100; // "14" 
//           25: seg2 = 14'b0010010_0100100; // "15" 
//           26: seg2 = 14'b0010010_0100000; // "16" 
//           27: seg2 = 14'b0010010_0001111; // "17" 
//           28: seg2 = 14'b0010010_0000000; // "18"     
//           29: seg2 = 14'b0010010_0000100; // "19"
 
 
//           30: seg2 = 14'b0000110_0000001; // "10"     
//           31: seg2 = 14'b0000110_1001111; // "11" 
//           32: seg2 = 14'b0000110_0010010; // "12" 
//           33: seg2 = 14'b0000110_0000110; // "13" 
//           34: seg2 = 14'b0000110_1001100; // "14" 
//           35: seg2 = 14'b0000110_0100100; // "15" 
//           36: seg2 = 14'b0000110_0100000; // "16" 
//           37: seg2 = 14'b0000110_0001111; // "17" 
//           38: seg2 = 14'b0000110_0000000; // "18"     
//           39: seg2 = 14'b0000110_0000100; // "19"
 
//           40: seg2 = 14'b1001100_0000001; // "10"     
//           41: seg2 = 14'b1001100_1001111; // "11" 
//           42: seg2 = 14'b1001100_0010010; // "12" 
//           43: seg2 = 14'b1001100_0000110; // "13" 
//           44: seg2 = 14'b1001100_1001100; // "14" 
//           45: seg2 = 14'b1001100_0100100; // "15" 
//           46: seg2 = 14'b1001100_0100000; // "16" 
//           47: seg2 = 14'b1001100_0001111; // "17" 
//           48: seg2 = 14'b1001100_0000000; // "18"     
//           49: seg2 = 14'b1001100_0000100; // "19"
 
//           50: seg2 = 14'b0100100_0000001; // "10"     
//           51: seg2 = 14'b0100100_1001111; // "11" 
//           52: seg2 = 14'b0100100_0010010; // "12" 
//           53: seg2 = 14'b0100100_0000110; // "13" 
//           54: seg2 = 14'b0100100_1001100; // "14" 
//           55: seg2 = 14'b0100100_0100100; // "15" 
//           56: seg2 = 14'b0100100_0100000; // "16" 
//           57: seg2 = 14'b0100100_0001111; // "17" 
//           58: seg2 = 14'b0100100_0000000; // "18"     
//           59: seg2 = 14'b0100100_0000100; // "19"
 
   
           default: seg3 = 14'b0000001_0000001;
    endcase
   
end    

endmodule
