`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2021 09:13:31 PM
// Design Name: 
// Module Name: Minuts_counter
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



module Minuts_counter(clk,reset,min_counter,Start);
    
    input clk,reset,Start; //start stop buttton "Start"
    
    output [5:0] min_counter;
reg [5:0] counter_up;
reg [5:0] counter_up1;
reg enable;

initial
begin
counter_up1<=6'd0;
end
initial
begin
counter_up<=6'd0;
end

always @(posedge clk or posedge reset )
begin

if(reset)
begin
 counter_up1 <= 6'd0;
 counter_up <=6'd0; 
 end
else if (Start) 
 begin 
 counter_up <= counter_up + 6'd1; 
if(counter_up>=59)
begin
counter_up<=0;
enable<=1;
end

if(enable==1 && counter_up==0)
begin
counter_up1<=counter_up1+6'd1;
end
if(counter_up1>=59)
begin
counter_up1<=0;
end
end
else begin
counter_up1 <= counter_up1;
 counter_up <=counter_up;
end
end
assign min_counter = counter_up1;

endmodule
//always @(posedge clk,enable)
//begin
//if(enable==1)
//begin
//counter_up1<=counter_up1+6'd1;

//end
//end

//assign min_counter = counter_up1;

//endmodule



//module Counter_testbench();
// reg clk, reset;
 
// wire [5:0] min_counter;
     
    
//Minuts_counter inst0(clk, reset,min_counter);

//initial begin 
//clk=0;
//forever #5 clk=~clk;
//end
//initial begin
//reset=1; 
//#1;
//reset=0; 
//end
//endmodule


