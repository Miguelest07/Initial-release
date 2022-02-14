`timescale 1ns / 10ps
   //`define tim_sim
module Parallel2DSI_tb();
	parameter periode_1     = 16;

	GSR GSR_INST(.GSR(1'b1));
    PUR PUR_INST(.PUR(1'b1)); 
	
	reg rstn,rstn_tb;
	reg pixclk;
	wire DCK, D0; 
	wire [1:0] LPCLK, LP0, LP1;
	wire [23:0] pixdata; 
	wire vsync, hsync, de;
	
	initial begin                       
      rstn       = 1'b0;  
	  rstn_tb    = 1'b0;
	  #1600;
	  #1600 rstn = 1'b1;   
	  #505284 rstn_tb    = 1'b1;			  //493080	505080 505284
	end
	initial
		  pixclk     = 1'b0;
	always pixclk    = #periode_1  ~pixclk; 
		
	top #(
     .VC(0)             ,
     .WC('h05A0)        ,  // 02D0
     .word_width(24)    ,
     .DT(6'h3E)         ,  
     .testmode  (0)     , 
     .crc16     (1)     ,  
	 .EoTp      (1)     ,  
	 .reserved  (0)                
    ) u_top(
     .reset_n      (rstn)             ,
                                         
     .PIXCLK       (pixclk)           ,
     .VSYNC        (vsync)            ,
     .HSYNC        (hsync)            ,
     .DE           (de)               ,
     .PIXDATA      (pixdata)          ,
                                         
     .DCK          (DCK)                ,        //HS (High Speed) Clock                            
                                                                                                                                         
     //.D3           ()    ,      //HS (High Speed) Data Lane 3         
     //.D2           ()    ,      //HS (High Speed) Data Lane 2         
     .D1           (D1)    ,      //HS (High Speed) Data Lane 1         
     .D0           (D0)    ,      //HS (High Speed) Data Lane 0         
 	 
     .LPCLK        (LPCLK)    ,                                                                                               
     //.LP3          ()    ,        //LP (Low Power) External Interface Signals for Data Lane 3    
     //.LP2          ()    ,        //LP (Low Power) External Interface Signals for Data Lane 2   
     .LP1          (LP1)    ,        //LP (Low Power) External Interface Signals for Data Lane 1  
     .LP0          (LP0)            //LP (Low Power) External Interface Signals for Data Lane 0    
);		

        colorbar_gen 	#(
	        .h_active  ('d480 ),	//480  240
	        .h_total   ('d800 ),	//620  380
	        .v_active  ('d800 ),
	        .v_total   ('d830 ),
	        .H_FRONT_PORCH ('d100),
            .H_SYNCH       ('d96),
            .V_FRONT_PORCH ('d40),
            .V_SYNCH       ('d5),
            .mode          (1)
        ) u_colorbar_gen
        ( 
            .rstn       (rstn  ) , 
            .m148_5_clk (pixclk) , 
            .lv         (de) , 
            .data       (pixdata),
            .vsync      (vsync),
            .hsync      (hsync)
        );
		
		
		
//******************************************************************************************
/////////////////////              SELF CHECKING PART           ////////////////////////////
//******************************************************************************************		
	//integer file, r, a, b;	
	wire empty0,empty1,rd_en;
	wire [1:0] flag;
	wire [23:0] pixdata_out_fifo,pixdata_out,pixdata_expected;
	wire [23:0] pixdata_in;	 
	wire [1:0] tb_lp0;
	//wire [9:0] pixdata_in2;
	

  /*    MIPI_CSI2_Serial2Parallel_Bridge  #(
      .bus_width         (10    ),
      .lane_width        (2    ))   
   mipi_bridge(                 
      .rstn              ( rstn_tb ),
      .DCK               ( DCK),   
      .CH0               ( D0 ),
      .CH1               ( D1 ),
      .CH2               (       ),
      .CH3               (      ),   
      .pixclk_adj        (pixclk_out),   
      .pixdata           (pixdata_out),   
      .fv                (  fv_out  ),   
      .lv                (  lv_out  ),
	  .sensor_clk  		 ( DCK)
   );	*/
   
   assign tb_lp0 = 	LP0;
   
   
    top_rx  #(
      .word_width        (24    ),
      .byte_freq         ("38"          ),
	    .DT                (6'h3E         ),
	    .sim               (1             ) )  
   mipi_bridge (                 
      .reset_n           ( rstn_tb ),
      .DCK               ( DCK),   // serial clock  
	 // .SYSCLK            ( DCK),
      .D0                ( D0 ),
      .D1                ( D1), 
	  
	  .LPCLK             (),
	  .LP0               (2'b00),
	  .LP1				 (),

      .PIXCLK_adj        (pixclk_out),   
      .PIXDATA			 (pixdata_out   ),
	  .DE                (de_out        ),   
      .VSYNC             (     ),
	  .HSYNC             (    )
     );		

   // assign pixdata_in = pixdata;
    //////////EXPECTED DATA GENERATION LOGIC/////////////		
	
	
	assign pixdata_in = pixdata;
	// always @ ( posedge pixclk or negedge rstn) 	begin
       // if(~rstn) begin
		 
		 // q_lv <= 0;	
		 // q1_pixdata_in <= 0; 
		 // x <=0;
		 // pixdata_in  <= 0;
	   // end	 
	   // else	begin
       
		 // q_lv <= lv;
		 // `ifdef tim_sim
		 // pixdata_in <= (x & lv)? q1_pixdata_in:pixdata_in;
		 // `else		 
		  // pixdata_in <= (lv) ? pixdata_in+1:0;  
		 // `endif	  
		 
		 // q1_pixdata_in <= (/*q_lv & */ lv ) ? q1_pixdata_in+1:0;
		 // x<=1;
	   // end
   // end
	
	
	assign rd_en = (~empty0) & (~empty1);
	

	////////////////MONITOR OR RECEIVER LOGIC//////////////////
	
	//`ifdef tim_sim 
	//simulation_fifo_24bit_to_24bit u_simulation_fifo_input(.Data(pixdata_in), .WrClock(pixclk), .RdClock(pixclk), .WrEn(de), .RdEn(rd_en), .Reset(~rstn), .RPReset(~rstn), .Q(pixdata_expected), .AlmostFull(), .Empty(empty0));	
//	`else 	 
	simulation_fifo_24bit_to_24bit u_simulation_fifo_input(.Data(pixdata_in), .WrClock(pixclk), .RdClock(pixclk), .WrEn(de), .RdEn(rd_en), .Reset(~rstn), .RPReset(~rstn), .Q(pixdata_expected), .AlmostFull(), .Empty(empty0));		
	// `endif  
		                                     		
//	`ifdef tim_sim			
	//simulation_fifo_24bit_to_24bit u_simulation_fifo_output(.Data(pixdata_out), .WrClock(pixclk_out), .RdClock(pixclk), .WrEn(de_out), .RdEn(rd_en), .Reset(~rstn), .RPReset(~rstn), .Q(pixdata_out_fifo), .AlmostFull(), .Empty(empty1));	
	// `else
	simulation_fifo_24bit_to_24bit u_simulation_fifo_output(.Data(pixdata_out), .WrClock(pixclk_out), .RdClock(pixclk), .WrEn(de_out), .RdEn(rd_en), .Reset(~rstn), .RPReset(~rstn), .Q(pixdata_out_fifo), .AlmostFull(), .Empty(empty1));		
//	 `endif 	
		
	////////// COMPARISSION LOGIC//////////////////	
	
         	
	assign	flag  = (!rd_en)? 2'b00: //`ifdef tim_sim  
	                                       (({pixdata_out_fifo[15:8],pixdata_out_fifo[7:0],pixdata_out_fifo[23:16]}==pixdata_expected) 
	                                  /*`else*/ || (pixdata_out_fifo==pixdata_expected))// `endif  
		                                    ?2'b11:2'b10;  		

     
	
    //////////// SCORE BOARD/////////////////////////
	
		always @ ( posedge pixclk or negedge rstn) 	begin
       if(~rstn) 
		 $display (" IN RESET MODE ");
	   else	if(flag==2'b00)
	        $display("BLANKING PERIOD");
			else
	           if (flag==2'b11)
		         $display("OUTPUT DATA MATCHES WITH THE EXPECTED DATA AS %h", pixdata_out );
			   else	if(flag==2'b10)
				   begin
			     $display("XXXXXXXXXXX DATA MISMATCH XXXXXXXXXXX");
				 //$finish;
				 end
         	
        end

endmodule
	   
	   