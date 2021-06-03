module Top_most(clock, foundDatainCache_core, Reset);
    
    
   input clock, Reset;
   output foundDatainCache_core;
   wire [2:0]freq_state;
   reg  resetn, clk_10;
   wire clk_1, clk_2, clk_3, clk_4, clk_5;
   //wire foundDatainCache_core; 
    wire foundDatainCache_core, clk_100;
  picorv32 core (.clk_100(clock),.clk(clk_10), .resetn(Reset), .foundDatainCache_core(foundDatainCache_core), .freq_state(freq_state));  
    
  //mainMod  cache (.foundDatainCache(foundDatainCache));
    
  clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk_100),     // output clk_out1
    .clk_out2(clk_1),     // output clk_out2 = 50Mhz
    .clk_out3(clk_2),     // output clk_out3 = 25Mhz
    .clk_out4(clk_3),     // output clk_out4 = 20Mhz
    .clk_out5(clk_4),     // output clk_out5 = 14.286Mhz
    .clk_out6(clk_5),     // output clk_out6 = 10Mhz
   // Clock in ports
    .clk_in1(clock));      // input clk_in1
   

always @ (clock) begin


                  case(freq_state)
                 
                  
                  3'b000: begin
                       clk_10 <= clk_1;
                       end
                  
                  3'b001: begin
                       clk_10 <= clk_3;
                       end
                 
                  3'b010: begin
                       clk_10 <= clk_5;
                       end
                   
                                        
                   
                       
                        
           
                 endcase


end


    
    
    
endmodule