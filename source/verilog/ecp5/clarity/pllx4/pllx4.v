/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module pllx4
//
module pllx4 (pll_x4_CLKI, pll_x4_CLKOP, pll_x4_CLKOS, pll_x4_LOCK, 
            pll_x4_RST) /* synthesis sbp_module=true */ ;
    input pll_x4_CLKI;
    output pll_x4_CLKOP;
    output pll_x4_CLKOS;
    output pll_x4_LOCK;
    input pll_x4_RST;
    
    
    pll_x4 pll_x4_inst (.CLKI(pll_x4_CLKI), .CLKOP(pll_x4_CLKOP), .CLKOS(pll_x4_CLKOS), 
           .LOCK(pll_x4_LOCK), .RST(pll_x4_RST));
    
endmodule


//
// Verific Verilog Description of module pll_x4
//
// Black Box Module Declaration for Synthesis flow only. 
//

`ifdef SBP_SYNTHESIS
module pll_x4 (CLKI, CLKOP, CLKOS, LOCK, RST) /* synthesis syn_black_box=true */ ;
    input CLKI;
    output CLKOP;
    output CLKOS;
    output LOCK;
    input RST;
    
    
    
endmodule

`endif

