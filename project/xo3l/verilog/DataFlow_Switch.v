module DataFlow_Switch (
		input i_state,
     `ifdef HS_1 
          input [7:0]   byte_D1_a          ,
          input [7:0]   byte_D0_a          ,                    
     `endif                                                                                                 
     `ifdef LP_1                                                                                                     
          input   [1:0] lp1_out_a          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
          input         lp1_dir_a          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
     `endif                                                                                                      
     `ifdef LP_0                                                                                                  
          input   [1:0] lp0_out_a          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
          input         lp0_dir_a          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
     `endif                                                                                                 
         input         hs_clk_en_a        ,        //HS (High Speed) Clock Enable                                                          
         input         hs_data_en_a     ,            //HS (High Speed) Data Enable      
         input          hsxx_clk_en_a	   ,
		 //-----------------------------------------
     `ifdef HS_1 
          input [7:0]   byte_D1_b          ,
          input [7:0]   byte_D0_b          ,                    
     `endif                                                                                                 
     `ifdef LP_1                                                                                                     
          input   [1:0] lp1_out_b          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
          input         lp1_dir_b          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
     `endif                                                                                                      
     `ifdef LP_0                                                                                                  
          input   [1:0] lp0_out_b          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
          input         lp0_dir_b          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
     `endif                                                                                                 
         input         hs_clk_en_b        ,        //HS (High Speed) Clock Enable                                                          
         input         hs_data_en_b     ,            //HS (High Speed) Data Enable      
         input          hsxx_clk_en_b	   ,
		 //---------------------
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
 
Mux_mod  #(.MuxWide(8)) mux_byte_D1(
	.i_state(i_state),
	.i_a(byte_D1_a),
	.i_b(byte_D1_b),
	.o_x(byte_D1)
);

Mux_mod  #(.MuxWide(8)) mux_byte_D0(
	.i_state(i_state),
	.i_a(byte_D0_a),
	.i_b(byte_D0_b),
	.o_x(byte_D0)
);

Mux_mod  #(.MuxWide(2)) mux_lp1_out(
	.i_state(i_state),
	.i_a(lp1_out_a),
	.i_b(lp1_out_b),
	.o_x(lp1_out)
);

Mux_mod  #(.MuxWide(2)) mux_lp0_out(
	.i_state(i_state),
	.i_a(lp0_out_a),
	.i_b(lp0_out_b),
	.o_x(lp0_out)
);

Mux_mod  #(.MuxWide(1)) mux_lp1_dir(
	.i_state(i_state),
	.i_a(lp1_dir_a),
	.i_b(lp1_dir_b),
	.o_x(lp1_dir)
);

Mux_mod  #(.MuxWide(1)) mux_lp0_dir(
	.i_state(i_state),
	.i_a(lp0_dir_a),
	.i_b(lp0_dir_b),
	.o_x(lp0_dir)
);

//---

Mux_mod  #(.MuxWide(1)) mux_hsxx_clk_en(
	.i_state(i_state),
	.i_a(hsxx_clk_en_a),
	.i_b(hsxx_clk_en_b),
	.o_x(hsxx_clk_en)
);
Mux_mod  #(.MuxWide(1)) mux_hs_clk_en(
	.i_state(i_state),
	.i_a(hs_clk_en_a),
	.i_b(hs_clk_en_b),
	.o_x(hs_clk_en)
);
Mux_mod  #(.MuxWide(1)) mux_hs_data_en(
	.i_state(i_state),
	.i_a(hs_data_en_a),
	.i_b(hs_data_en_b),
	.o_x(hs_data_en)
);

endmodule