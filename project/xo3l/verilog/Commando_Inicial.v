module Commando_Inicial (
	input i_clk,
	output o_Global_Enable,
	input         reset_n          ,      //Resets the Design      
    input         CLKOP            ,      //HS Clock  
    input         CLKOS            ,      //HS Clock + 90 deg phase shift
	
	
     `ifdef HS_1 
          output [7:0]   byte_D1          ,
          output [7:0]   byte_D0          ,                    
     `endif                                                                                                 
     `ifdef LP_1                                                                                                     
          output   [1:0] lp1_out          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
          output         lp1_dir          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
     `endif                                                                                                      
     `ifdef LP_0                                                                                                  
          output   [1:0] lp0_out          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
          output         lp0_dir          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
     `endif                                                                                                 
         output         hs_clk_en        ,        //HS (High Speed) Clock Enable                                                          
         output         hs_data_en     ,            //HS (High Speed) Data Enable      
         output          hsxx_clk_en		 
);

reg [7:0]   r_byte_D1;
reg [7:0]   r_byte_D0;                                                                        
reg   [1:0] r_lp1_ou;        //LP (Low Power) Data Receiving Signals for Data Lane 1 
reg         r_lp1_dir;       //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
reg   [1:0] r_lp0_out;        //LP (Low Power) Data Receiving Signals for Data Lane 0         
reg       r_lp0_dir;      //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
reg       r_hs_clk_en;       //HS (High Speed) Clock Enable                                                          
reg       r_hs_data_en;          //HS (High Speed) Data Enable      
reg       r_hsxx_clk_en;

always@(posedge CLKOP)
begin
	r_byte_D1 = 'b0;
	r_byte_D0= 'b0;                                                                        
	r_lp1_ou= 'b0;        //LP (Low Power) Data Receiving Signals for Data Lane 1 
	r_lp1_dir= 'b0;       //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
	r_lp0_out= 'b0;        //LP (Low Power) Data Receiving Signals for Data Lane 0         
	r_lp0_dir= 'b0;      //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
	r_hs_clk_en= 'b0;       
	r_hs_data_en= 'b0;          //HS (High Speed) Data Enable      
	r_hsxx_clk_en= 'b0;
end

endmodule