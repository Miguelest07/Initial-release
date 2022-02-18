// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2013 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// top.v -- MIPI DSI TX Bridge Reference Design
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------

`include "../../source/verilog/compiler_directives.v"

module top #(
     parameter              VC         = 0             ,  //2-bit Virtual Channel Number
     parameter              WC         = 16'h0F00      ,  //16-bit Word Count in byte packets.  16'h08CA = 16'd2250 bytes = 1440 * (8-bits per byte) / (24-bits per pixel for RGB888) = 480 pixels
     parameter              word_width = 24            ,  //Pixel Bus Width.  Example: RGB888 = 8-bits Red, 8-bits Green, 8-bits Blue = 24 bits/pixel
     parameter              DT         = 6'h3E         ,  //6-bit MIPI DSI Data Type.  Example: dt = 6'h3E = RGB888
     parameter              testmode   = 1             ,  //adds colorbar pattern generator for testing purposes.  Operates off of PIXCLK input clock and reset_n input reset
     parameter              crc16      = 0             ,  //appends 16-bit checksum to the end of long packet transfers.  0 = off, 1 = on.  Turning off will append 16'hFFFF to end of long packet.  Turning off will reduce resource utilization.
     parameter              EoTp       = 0            ,  //appends End of Transfer packet after any short packet or long packet data transfer.  0 = off, 1 = on.  appened as a data burst after packet.
     parameter              reserved   = 0 //reserved=0 at all times
)(
     input                  reset_n                    ,  // resets design (active low)
                                                                          
     output                 DCK                        ,  // HS (High Speed) Clock                            
                                                                         
     `ifdef HS_3                                                                      
          output        D3                             ,  //HS (High Speed) Data Lane 3         
          output        D2                             ,  //HS (High Speed) Data Lane 2         
          output        D1                             ,  //HS (High Speed) Data Lane 1         
          output        D0                             ,  //HS (High Speed) Data Lane 0         
 
     `elsif HS_2 
          output        D2                             ,      
          output        D1                             ,
          output        D0                             ,
                                                       
     `elsif HS_1                                       
          output        D1                             ,
          output        D0                             ,
                                                       
     `elsif HS_0                                       
          output        D0                             ,                  
     `endif                                            
     `ifdef LP_CLK                                     
          inout   [1:0] LPCLK                          ,  //LP (Low Power) External Interface Signals for Clock Lane     
     `endif                                                                                                              
     `ifdef LP_3                                                                                                         
          inout   [1:0] LP3                            ,  //LP (Low Power) External Interface Signals for Data Lane 3    
     `endif                                                                                                              
     `ifdef LP_2                                                                                                         
          inout   [1:0] LP2                            ,  //LP (Low Power) External Interface Signals for Data Lane 2    
     `endif                                                                                                              
     `ifdef LP_1                                                                                                         
          inout   [1:0] LP1                            ,  //LP (Low Power) External Interface Signals for Data Lane 1    
     `endif                                                                                                              
     `ifdef LP_0                                                                                                         
          inout   [1:0] LP0                            ,  //LP (Low Power) External Interface Signals for Data Lane 0    
     `endif                                                                                                               
     input 					i_clk,                                                  
     //input                  PIXCLK                     ,  //Pixel clock input for parallel interface
     output                  VSYNC                      ,  //Vertical Sync input for parallel interface
     output                  HSYNC                      ,  //Horizontal Sync input for parallel interface
     input                  DE                         ,  //Data Enable input for parallel interface
     input [word_width-1:0] PIXDATA,     
	 input [3:0] 		i_test,
	 output SerialP,
	 output SerialN,
	 output o_test,
	 output o_test2
);

reg r_globalRST;
wire [7:0] byte_D3, byte_D2, byte_D1, byte_D0;
wire [7:0] byte_D3_out, byte_D2_out, byte_D1_out, byte_D0_out;
wire [15:0] word_cnt;
wire [1:0] lp_clk;
wire [1:0] lp_data;
wire [word_width-1:0] w_pixdata;
wire w_pixclk, CLKOP, CLKOS, byte_clk;

wire [7:0]   w_byte_D1_a;
wire [7:0]   w_byte_D0_a;              
wire   [1:0] w_data_a;
wire  w_lp1_dir_a;       
wire w_lp0_dir_a;
wire w_hsxx_clk_en_a;
wire PIXCLK;
wire w_CLK_100MHZ;
wire w_CLK_20MHZ;
wire w_init_d;

wire w_reset_n;

wire [7:0]   w_byte_D1_b;
wire [7:0]   w_byte_D0_b;              
wire   [1:0] w_lp1_out_b;
wire  w_lp1_dir_b;

wire  [1:0] w_lp0_out_b;         
wire w_lp0_dir_b;
wire w_hs_clk_en_b ;                                                       
wire w_hs_data_en_b;
wire w_hsxx_clk_en_b;

wire  w_lp1_dir_out;     
wire w_lp0_dir_out;
wire w_hs_clk_en_out;

wire w_lp_clk_b;
wire w_lp_clk_out;

wire w_eoc;
wire Start_w;
wire State_w;
wire w_init;
wire w_SerialP;
wire w_SerialN;

assign w_lp1_dir_a = 1'b1;
assign w_lp0_dir_a = 1'b1;

always@(posedge i_clk)
begin
	r_globalRST = w_init_d;
end

parameter  lane_width = `ifdef HS_3  4
                        `elsif HS_2  3
                        `elsif HS_1  2
                        `elsif HS_0  1
                        `endif ;  
 
PLL_12_24_100 PLL_12_24_100_mod (
	.CLKI(i_clk), 
	.CLKOP(PIXCLK), 
	.CLKOS(w_CLK_100MHZ),
	.CLKOS2(w_CLK_20MHZ)
);
	 
pll_pix2byte_RGB888_2lane u_pll_pix2byte_RGB888_2lane(
	.RST(~reset_n), 
	.CLKI(w_pixclk), 
	.CLKOP(CLKOP), 
	.CLKOS(CLKOS), 
	.CLKOS2(byte_clk), 
	.LOCK()
);



  assign word_cnt = w_de? WC : 16'h0000;

BYTE_PACKETIZER #(
	.word_width(word_width) ,
	.lane_width(lane_width) ,
	.dt        (DT        ) ,
	.crc16     (crc16     )   
)u_BYTE_PACKETIZER (
	.reset_n         (reset_n)  ,
	.PIXCLK          (w_pixclk)   ,
	.VSYNC           (w_vsync)    ,
	.HSYNC           (w_hsync)    ,
	.DE              (w_de)       ,
	.PIXDATA         (w_pixdata)  ,
							  
	.VC              (VC)       ,
	.WC              (word_cnt)       ,

	.byte_clk        (byte_clk) ,   

	.hs_en           (hs_en)    ,
	.byte_D3         (byte_D3)  ,
	.byte_D2         (byte_D2)  , 
	.byte_D1         (byte_D1)  ,
	.byte_D0         (byte_D0)  ,
	.EoTp            (EoTp)      
);

LP_HS_DELAY_CNTRL u_LP_HS_DELAY_CNTRL(
	.reset_n   (reset_n),
	.byte_clk  (byte_clk),
	.hs_en     (hs_en),
	.byte_D3_in(byte_D3),
	.byte_D2_in(byte_D2),
	.byte_D1_in(byte_D1),
	.byte_D0_in(byte_D0),
	.hs_clk_en  (hs_clk_en),
	.hsxx_clk_en(w_hsxx_clk_en_a),
	.hs_data_en (hs_data_en),
	.lp_clk  (lp_clk),
	.lp_data (w_data_a),
	.byte_D3_out(byte_D3_out),
	.byte_D2_out(byte_D2_out),
	.byte_D1_out(w_byte_D1_a),
	.byte_D0_out(w_byte_D0_a)
);



Commando_Inicial Comand(
	.i_clk(PIXCLK), 
	.o_Global_Enable (w_Global_Enable),
	.reset_n (reset_n)         ,       //Resets the Design      
    .i_CLK_100MHZ(w_CLK_100MHZ),
	.i_eoc(w_eoc),
	.i_test(i_test),
	.o_init(w_init), 
	.o_init_d(w_init_d),
	.Start_s(Start_w),
	.State_s(State_w), 
	.i_Serial_P(w_SerialP), 
	.i_Serial_N(w_SerialN),
    .byte_D1 (w_byte_D1_b)         ,
    .byte_D0(w_byte_D0_b)          ,                    
    .lp1_out(w_lp1_out_b)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
    .lp1_dir(w_lp1_dir_b)          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
    .lp0_out(w_lp0_out_b)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
    .lp0_dir (w_lp0_dir_b)         ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
    .hs_clk_en(w_hs_clk_en_b)        ,        //HS (High Speed) Clock Enable                                                          
    .hs_data_en(w_hs_data_en_b)      ,            //HS (High Speed) Data Enable      
    .hsxx_clk_en(w_hsxx_clk_en_b)	 ,
	.lp_clk(w_lp_clk_b)
);
  
Serial_Protocol Serial_busP(
	.rst(reset_n),
	.clk(w_CLK_20MHZ),
	.eoc(w_eoc),
	.Start(Start_w),
	.State(State_w),
	.Polarity(1'b1),
	.tx(w_SerialP)
);

Serial_Protocol Serial_busN(
	.rst(reset_n),
	.clk(w_CLK_20MHZ),
	.eoc(eoc),
	.Start(Start_w),
	.State(State_w),
	.Polarity(1'b0),
	.tx(w_SerialN)
);

DataFlow_Switch DataSPDT ( 
    .i_state(~r_globalRST),
    .byte_D1_a(w_byte_D1_a)          ,
    .byte_D0_a(w_byte_D0_a)          ,                                                                
    .lp1_out_a(w_data_a)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
    .lp1_dir_a(w_lp1_dir_a)         ,                                                             
    .lp0_out_a (done ? lp_data : {Lp,Ln})         ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
    .lp0_dir_a  (w_lp0_dir_a)        ,                                                  
    .hs_clk_en_a(~(|lp_clk)& done)        ,        //HS (High Speed) Clock Enable                                                          
    .hs_data_en_a(~(|lp_data) & done)     ,            //HS (High Speed) Data Enable      
    .hsxx_clk_en_a(w_hsxx_clk_en_a)	   ,
    .lpclk_out_a  (lp_clk)         ,
	
	 
	.byte_D1_b (w_byte_D1_b)         , 
    .byte_D0_b (w_byte_D0_b)         ,                                                               
    .lp1_out_b(w_lp1_out_b)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
	.lp1_dir_b(w_lp1_dir_b)          ,                                                               
    .lp0_out_b(w_lp0_out_b)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
    .lp0_dir_b(w_lp0_dir_b)          ,                                                     
    .hs_clk_en_b(w_hs_clk_en_b)        ,        //HS (High Speed) Clock Enable                                                          
    .hs_data_en_b(w_hs_data_en_b)     ,            //HS (High Speed) Data Enable      
    .hsxx_clk_en_b(w_hsxx_clk_en_b)	   ,
	.lpclk_out_b  (w_lp_clk_b)         ,
	
    .byte_D1(byte_D1_out)          ,
    .byte_D0(byte_D0_out)          ,                                                                  
    .lp1_out(lp_data)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1 
    .lp1_dir(w_lp1_dir_out)          ,                                                                                                 
    .lp0_out(w_LP0)          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0         
    .lp0_dir (w_lp0_dir_out)         ,                                                           
    .hs_clk_en(w_hs_clk_en_out)        ,        //HS (High Speed) Clock Enable                                                          
    .hs_data_en(w_hs_data_en_out)     ,            //HS (High Speed) Data Enable      
    .hsxx_clk_en(hsxx_clk_en),
	.lpclk_out  (w_lp_clk_out)         
); 

   DPHY_TX_INST u_DPHY_TX_INST (
          .reset_n         (reset_n)       ,      //Resets the Design                   
          .DCK             (DCK)           ,      //HS (High Speed) Clock
		  `ifdef PLL          
              .byte_clk (byte_clk)         ,      //Byte Clock
		   `else  
          .CLKOP           (CLKOP)         ,      //Byte Clock                    
          .CLKOS           (CLKOS)         ,
		  `endif 
		  
		  `ifdef sim
		  .done(done_sim) ,
		  `endif   
		  
          `ifdef HS_3                                                                   
               .D3         (D3)            ,      //HS (High Speed) Data Lane 3         
               .D2         (D2)            ,      //HS (High Speed) Data Lane 2         
               .D1         (D1)            ,      //HS (High Speed) Data Lane 1         
               .D0         (D0)            ,      //HS (High Speed) Data Lane 0         
               .byte_D3    (byte_D3_out)       ,      //HS (High Speed) Byte Data, Lane 3   
               .byte_D2    (byte_D2_out)       ,      //HS (High Speed) Byte Data, Lane 2   
               .byte_D1    (byte_D1_out)       ,      //HS (High Speed) Byte Data, Lane 1   
               .byte_D0    (byte_D0_out)       ,      //HS (High Speed) Byte Data, Lane 0   
          `elsif HS_2      
               .D2         (D2)            ,      
               .D1         (D1)            ,
               .D0         (D0)            ,
               .byte_D2    (byte_D2_out)       ,
               .byte_D1    (byte_D1_out)       ,
               .byte_D0    (byte_D0_out)       ,        
          `elsif HS_1                      
               .D1         (D1)            ,
               .D0         (D0)            ,
               .byte_D1    (byte_D1_out)       ,
               .byte_D0    (byte_D0_out)       ,            
          `elsif HS_0                      
               .D0         (D0)            ,
               .byte_D0    (byte_D0_out)       ,                       
          `endif                           
          `ifdef LP_CLK                    
               .LPCLK      (LPCLK)         ,        
               .lpclk_out  (w_lp_clk_out)         ,        
               .lpclk_in   ()              ,        
               .lpclk_dir  (1'b1)             ,        
          `endif                                              
          `ifdef LP_3                                         
               .LP3        (LP3)           ,        
               .lp3_out    (lp_data)         ,        
               .lp3_in     ()              ,        
               .lp3_dir    (1'b1)             ,        
          `endif                                              
          `ifdef LP_2                                         
               .LP2        (LP2)           ,        
               .lp2_out    (lp_data)         ,        
               .lp2_in     ()              ,        
               .lp2_dir    (1'b1)             ,        
          `endif                                              
          `ifdef LP_1                                         
               .LP1        (LP1)           ,        
               .lp1_out    (lp_data)         ,        
               .lp1_in     ()              ,        
               .lp1_dir    (w_lp1_dir_out)             ,        
          `endif                                              
          `ifdef LP_0                                         
               .LP0        (LP0)           ,        
               .lp0_out    (w_LP0)         ,        
               .lp0_in     ()              ,        
               .lp0_dir    (w_lp0_dir_out)             ,        
          `endif                                         
               .hs_clk_en  (w_hs_clk_en_out)         ,
               .hsxx_clk_en(hsxx_clk_en ),				   
               .hs_data_en (w_hs_data_en_out)                  
);      
wire [1:0] w_LP0;	
wire done_sim;

assign done_sim = done;


wire [7:0] dcs_data;


     DCS_ROM u_DCS_ROM
     (
        .resetn    (reset_n) ,
        .clk       (byte_clk     ) ,
        .data_en   (dcs_data_en  ) ,
        .escape_en (dcs_escape_en) ,
        .stop_en   (dcs_stop_en  ) ,
        .data      (dcs_data     ) ,
        .ready     (dcs_ready    ) ,
        .done      (done         )
     );
     DCS_Encoder u_DCS_Encoder
     (
        .resetn     (reset_n      ) ,
        .clk        (byte_clk     ) ,
        .data_en    (dcs_data_en  ) ,
        .escape_en  (dcs_escape_en) ,
        .stop_en    (dcs_stop_en  ) ,
        .data       (dcs_data     ) ,
        .ready      (dcs_ready    ) ,
        .Lp         (Lp           ),
        .Ln         (Ln           )
     );
/*

colorbar_gen 	#(
	        .h_active  ('d750 ),
	        .h_total   ('d850 ),
	        .v_active  ('d1334 ),
	        .v_total   ('d1372 ),
	        .H_FRONT_PORCH ('d8),
            .H_SYNCH       ('d32 ),
            .V_FRONT_PORCH ('d24),
            .V_SYNCH       ('d8),
            .mode          (testmode)
        )
		
colorbar_gen 	#(
	        .h_active  ('d1366 ),
	        .h_total   ('d1792 ),
	        .v_active  ('d768 ),
	        .v_total   ('d798 ),
	        .H_FRONT_PORCH ('d0),
            .H_SYNCH       ('d0),
            .V_FRONT_PORCH ('d0),
            .V_SYNCH       ('d0),
            .mode          (testmode)
        ) 		
		
colorbar_gen 	#(
	        .h_active  ('d1280 ),
	        .h_total   ('d1650 ),
	        .v_active  ('d720 ),
	        .v_total   ('d750 ),
	        .H_FRONT_PORCH ('d110),
            .H_SYNCH       ('d40),
            .V_FRONT_PORCH ('d5),
            .V_SYNCH       ('d5),
            .mode          (testmode)
        )
		
		*/
		colorbar_gen 	#(
	        .h_active  ('d1280 ),
	        .h_total   ('d1650 ),
	        .v_active  ('d720 ),
	        .v_total   ('d750 ),
	        .H_FRONT_PORCH ('d110),
            .H_SYNCH       ('d40),
            .V_FRONT_PORCH ('d5),
            .V_SYNCH       ('d5),
            .mode          (testmode)
        ) 
        u_colorbar_gen
        ( 
            .rstn       (r_globalRST) , 
            .m148_5_clk (w_pixclk) , 
            .fv         () , 
            .lv         (w_de) , 
            .data       (w_pixdata),
            .vsync      (w_vsync),
            .hsync      (w_hsync)
        );

generate
    if(reserved==1) begin
        OSCH #(.NOM_FREQ("24.18")) u_OSCH(.STDBY(0),.OSC(w_pixclk));  //reserved for internal use only
    end
    else begin
        assign w_pixclk  = PIXCLK;
    end
endgenerate

assign SerialN = w_SerialN;
assign SerialP = w_SerialP;
assign o_test = w_init;
assign o_test2 = w_init_d; 
assign VSYNC = w_vsync;
assign HSYNC = w_hsync;
endmodule