// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Sat Dec 27 16:23:59 2014
//
// Verilog Description of module pll
//

module pll (CLKI, RST, CLKOP, CLKOS, CLKOS2, LOCK) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(8[8:11])
    input CLKI;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(9[16:20])
    input RST;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(10[16:19])
    output CLKOP;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(11[17:22])
    output CLKOS;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(12[17:22])
    output CLKOS2;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(13[17:23])
    output LOCK;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(14[17:21])
    
    wire scuba_vlo;   // d:/desktop/rd_work/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_rgb888_2lane/pll/pll.v(21[10:19])
    
    wire VCC_net;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    EHXPLLL PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKOP), .PHASESEL0(scuba_vlo), 
            .PHASESEL1(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
            .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
            .RST(RST), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), 
            .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(CLKOS2), 
            .LOCK(LOCK)) /* synthesis FREQUENCY_PIN_CLKOS2="75.000000", FREQUENCY_PIN_CLKOS="300.000000", FREQUENCY_PIN_CLKOP="300.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="9", LPF_RESISTOR="8", syn_instantiated=1 */ ;
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 6;
    defparam PLLInst_0.CLKOP_DIV = 2;
    defparam PLLInst_0.CLKOS_DIV = 2;
    defparam PLLInst_0.CLKOS2_DIV = 8;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 1;
    defparam PLLInst_0.CLKOS_CPHASE = 1;
    defparam PLLInst_0.CLKOS2_CPHASE = 7;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 4;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i82 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

