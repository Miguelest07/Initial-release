/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module pll_pix2byte_RGB888_2lane
//
module pll_pix2byte_RGB888_2lane (pll_CLKI, pll_CLKOP, pll_CLKOS, pll_CLKOS2, 
            pll_LOCK, pll_RST) /* synthesis sbp_module=true */ ;
    input pll_CLKI;
    output pll_CLKOP;
    output pll_CLKOS;
    output pll_CLKOS2;
    output pll_LOCK;
    input pll_RST;
    
    
    pll pll_inst (.CLKI(pll_CLKI), .CLKOP(pll_CLKOP), .CLKOS(pll_CLKOS), 
        .CLKOS2(pll_CLKOS2), .LOCK(pll_LOCK), .RST(pll_RST));
    
endmodule


//
// Verific Verilog Description of module pll
//
// Black Box Module Declaration for Synthesis flow only. 
//

`ifdef SBP_SYNTHESIS
module pll (CLKI, CLKOP, CLKOS, CLKOS2, LOCK, RST) /* synthesis syn_black_box=true */ ;
    input CLKI;
    output CLKOP;
    output CLKOS;
    output CLKOS2;
    output LOCK;
    input RST;
    
    
    
endmodule

`endif

