module Commando_Inicial (
	input i_clk,
	output o_Global_Enable,
	input         reset_n          ,      //Resets the Design      
    input         CLKOP            ,      //HS Clock  
    input         CLKOS            ,      //HS Clock + 90 deg phase shift
	input 		[1:0] i_LP,
	input 		i_HS,
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
         output          hsxx_clk_en	,
		 output 		lp_clk
);
 
reg [7:0]   r_byte_D1;
reg [7:0]   r_byte_D0;                                                                        
reg   [1:0] r_lp1_out;        //LP (Low Power) Data Receiving Signals for Data Lane 1 
reg         r_lp1_dir;       //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
reg   [1:0] r_lp0_out;        //LP (Low Power) Data Receiving Signals for Data Lane 0         
reg       r_lp0_dir;      //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
reg       r_hs_clk_en;       //HS (High Speed) Clock Enable                                                          
reg       r_hs_data_en;          //HS (High Speed) Data Enable      
reg       r_hsxx_clk_en;
reg       r_lp_clk;

always@(posedge CLKOP)
begin
	//HS DATA
	r_byte_D1 		= 8'b11110000;
	r_byte_D0 		= 8'b11111100; 
	//Enabl envia datos HS
	
	
	//Enable HS Clocke HS
	r_hs_data_en	= i_HS;  // activo
	r_hs_clk_en		= 'b0;     // activa clock P y N a 1.5V
	r_hsxx_clk_en	= 'b0;	// Sube clock  P a 3.3V y N baja a 0

	//LP  dependiendo el canal,[1:0] P o N, activa o descativa voltaje 3.3V 
	r_lp1_out 		= 'b0;        //LP (Low Power) Data Receiving Signals for Data Lane 1 
	r_lp0_out 		= i_LP;        //LP (Low Power) Data Receiving Signals for Data Lane 0	
	
	r_lp_clk		= 'b0;
	
	//LP Direction (IN 0 /OUT 1)
	r_lp1_dir 		= 'b1;       //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 normalmente 1	
	r_lp0_dir 		= 'b1;      //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 normalmente 1
	
end

assign byte_D1 = r_byte_D1; 
assign byte_D0 = r_byte_D0;                    
assign lp1_out = r_lp1_out;         
assign lp1_dir = r_lp1_dir;       
assign lp0_out = r_lp0_out;        
assign lp0_dir  = r_lp0_dir;       
assign  hs_clk_en = r_hs_clk_en;                                                      
assign  hs_data_en = r_hs_data_en;        
assign  hsxx_clk_en	=r_hsxx_clk_en;
assign lp_clk = r_lp_clk;
endmodule