/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.3.0.109 */
/* Module Version: 5.6 */
/* C:\lscc\diamond\3.3_x64\ispfpga\bin\nt64\scuba.exe -w -n pll -lang verilog -synth synplify -bus_exp 7 -bb -arch sa5p00m -type pll -fin 50 -fclkop 300 -fclkop_tol 0.0 -fclkos 300 -fclkos_tol 0.0 -phases 90 -fclkos2 75 -fclkos2_tol 0.0 -phases2 0 -phase_cntl STATIC -rst -lock -fb_mode 1 -fdc D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_RGB888_2lane/pll/pll.fdc  */
/* Sat Dec 27 16:23:57 2014 */


`timescale 1 ns / 1 ps
module pll (CLKI, RST, CLKOP, CLKOS, CLKOS2, LOCK)/* synthesis syn_noprune=1 *//* synthesis NGD_DRC_MASK=1 */;// exemplar attribute pll dont_touch true 
    input wire CLKI;
    input wire RST;
    output wire CLKOP;
    output wire CLKOS;
    output wire CLKOS2;
    output wire LOCK;

    wire REFCLK;
    wire CLKOS2_t;
    wire CLKOS_t;
    wire CLKOP_t;
    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam PLLInst_0.PLLRST_ENA = "ENABLED" ;
    defparam PLLInst_0.INTFB_WAKE = "DISABLED" ;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED" ;
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED" ;
    defparam PLLInst_0.CLKOS3_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS3_CPHASE = 0 ;
    defparam PLLInst_0.CLKOS2_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS2_CPHASE = 7 ;
    defparam PLLInst_0.CLKOS_FPHASE = 4 ;
    defparam PLLInst_0.CLKOS_CPHASE = 1 ;
    defparam PLLInst_0.CLKOP_FPHASE = 0 ;
    defparam PLLInst_0.CLKOP_CPHASE = 1 ;
    defparam PLLInst_0.PLL_LOCK_MODE = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD" ;
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC" ;
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB" ;
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA" ;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED" ;
    defparam PLLInst_0.CLKOS3_DIV = 1 ;
    defparam PLLInst_0.CLKOS2_DIV = 8 ;
    defparam PLLInst_0.CLKOS_DIV = 2 ;
    defparam PLLInst_0.CLKOP_DIV = 2 ;
    defparam PLLInst_0.CLKFB_DIV = 6 ;
    defparam PLLInst_0.CLKI_DIV = 1 ;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP" ;
    EHXPLLL PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKOP_t), .PHASESEL1(scuba_vlo), 
        .PHASESEL0(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
        .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
        .RST(RST), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), 
        .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP_t), .CLKOS(CLKOS_t), .CLKOS2(CLKOS2_t), 
        .CLKOS3(), .LOCK(LOCK), .INTLOCK(), .REFCLK(REFCLK), .CLKINTFB())
             /* synthesis FREQUENCY_PIN_CLKOS2="75.000000" */
             /* synthesis FREQUENCY_PIN_CLKOS="300.000000" */
             /* synthesis FREQUENCY_PIN_CLKOP="300.000000" */
             /* synthesis FREQUENCY_PIN_CLKI="50.000000" */
             /* synthesis ICP_CURRENT="9" */
             /* synthesis LPF_RESISTOR="8" */;

    assign CLKOS2 = CLKOS2_t;
    assign CLKOS = CLKOS_t;
    assign CLKOP = CLKOP_t;


    // exemplar begin
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS2 75.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS 300.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOP 300.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKI 50.000000
    // exemplar attribute PLLInst_0 ICP_CURRENT 9
    // exemplar attribute PLLInst_0 LPF_RESISTOR 8
    // exemplar end

endmodule
