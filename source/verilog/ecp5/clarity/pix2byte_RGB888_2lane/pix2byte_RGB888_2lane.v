/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module pix2byte_RGB888_2lane
//
module pix2byte_RGB888_2lane (pll_pix2byte_RGB888_2lane_CLKI, pll_pix2byte_RGB888_2lane_CLKOP, 
            pll_pix2byte_RGB888_2lane_CLKOS, pll_pix2byte_RGB888_2lane_CLKOS2, 
            pll_pix2byte_RGB888_2lane_LOCK, pll_pix2byte_RGB888_2lane_RST) /* synthesis sbp_module=true */ ;
    input pll_pix2byte_RGB888_2lane_CLKI;
    output pll_pix2byte_RGB888_2lane_CLKOP;
    output pll_pix2byte_RGB888_2lane_CLKOS;
    output pll_pix2byte_RGB888_2lane_CLKOS2;
    output pll_pix2byte_RGB888_2lane_LOCK;
    input pll_pix2byte_RGB888_2lane_RST;
    
    
    pll_pix2byte_RGB888_2lane pll_pix2byte_RGB888_2lane_inst (.CLKI(pll_pix2byte_RGB888_2lane_CLKI), 
            .CLKOP(pll_pix2byte_RGB888_2lane_CLKOP), .CLKOS(pll_pix2byte_RGB888_2lane_CLKOS), 
            .CLKOS2(pll_pix2byte_RGB888_2lane_CLKOS2), .LOCK(pll_pix2byte_RGB888_2lane_LOCK), 
            .RST(pll_pix2byte_RGB888_2lane_RST));
    
endmodule


//
// Verific Verilog Description of module pll_pix2byte_RGB888_2lane
//
// Black Box Module Declaration for Synthesis flow only. 
//

`ifdef SBP_SYNTHESIS
module pll_pix2byte_RGB888_2lane (CLKI, CLKOP, CLKOS, CLKOS2, LOCK, 
            RST) /* synthesis syn_black_box=true */ ;
    input CLKI;
    output CLKOP;
    output CLKOS;
    output CLKOS2;
    output LOCK;
    input RST;
    
    
    
endmodule

`endif

