/* Verilog netlist generated by SCUBA Diamond_2.0_Production (151) */
/* Module Version: 5.3 */
/* C:\lscc\diamond\2.0\ispfpga\bin\nt64\scuba.exe -w -n oDDRx4 -lang verilog -synth synplify -bus_exp 7 -bb -arch xo2c00 -type iol -mode out -io_type LVDS25E -width 4 -freq_in 375 -gear 4 -clk eclk -del -1 -e  */
/* Thu May 30 17:21:43 2013 */


`timescale 1 ns / 1 ps
module oDDRx4 (clk_s, clkop, clkos, clkout, lock_chk, reset, sclk, 
    tx_ready, dataout, dout)/* synthesis syn_noprune=1 */;// exemplar attribute oDDRx4 dont_touch true 
    input wire clk_s;
    input wire clkop;
    input wire clkos;
    input wire lock_chk;
    input wire reset;
    input wire [31:0] dataout;
    output wire clkout;
    output wire sclk;
    output wire tx_ready;
    output wire [3:0] dout;

    wire opensync_0;
    wire opensync_1;
    wire opensync_cken;
    wire opensync_2;
    wire buf_clkout;
    wire scuba_vhi;
    wire d73;
    wire d63;
    wire d53;
    wire d43;
    wire d33;
    wire d23;
    wire d13;
    wire d03;
    wire d72;
    wire d62;
    wire d52;
    wire d42;
    wire d32;
    wire d22;
    wire d12;
    wire d02;
    wire d71;
    wire d61;
    wire d51;
    wire d41;
    wire d31;
    wire d21;
    wire d11;
    wire d01;
    wire d70;
    wire d60;
    wire d50;
    wire d40;
    wire d30;
    wire d20;
    wire d10;
    wire d00;
    wire eclkc;
    wire sclk_t;
    wire cdiv1;
    wire scuba_vlo;
    wire eclkd;
    wire xstop;
    wire xstart;
    wire opensync_3;
    wire buf_douto3;
    wire buf_douto2;
    wire buf_douto1;
    wire buf_douto0;

    defparam LUT4_1.initval =  16'h0a78 ;
    ROM16X1A LUT4_1 (.AD3(opensync_0), .AD2(opensync_3), .AD1(lock_chk), 
        .AD0(scuba_vhi), .DO0(opensync_cken));

    defparam LUT4_0.initval =  16'hfffe ;
    ROM16X1A LUT4_0 (.AD3(opensync_0), .AD2(opensync_1), .AD1(scuba_vlo), 
        .AD0(scuba_vlo), .DO0(xstop));

    FD1P3BX FF_3 (.D(opensync_3), .SP(opensync_cken), .CK(clk_s), .PD(reset), 
        .Q(opensync_0))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(opensync_0), .SP(opensync_cken), .CK(clk_s), .CD(reset), 
        .Q(opensync_1))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(opensync_1), .SP(opensync_cken), .CK(clk_s), .CD(reset), 
        .Q(opensync_2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(opensync_2), .SP(opensync_cken), .CK(clk_s), .CD(reset), 
        .Q(opensync_3))
             /* synthesis GSR="ENABLED" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    ODDRX4B Inst6_ODDRX4B (.D0(scuba_vhi), .D1(scuba_vlo), .D2(scuba_vhi), 
        .D3(scuba_vlo), .D4(scuba_vhi), .D5(scuba_vlo), .D6(scuba_vhi), 
        .D7(scuba_vlo), .ECLK(eclkc), .SCLK(sclk_t), .RST(reset), .Q(buf_clkout));

    ODDRX4B Inst5_ODDRX4B3 (.D0(d03), .D1(d13), .D2(d23), .D3(d33), .D4(d43), 
        .D5(d53), .D6(d63), .D7(d73), .ECLK(eclkd), .SCLK(sclk_t), .RST(reset), 
        .Q(buf_douto3));

    ODDRX4B Inst5_ODDRX4B2 (.D0(d02), .D1(d12), .D2(d22), .D3(d32), .D4(d42), 
        .D5(d52), .D6(d62), .D7(d72), .ECLK(eclkd), .SCLK(sclk_t), .RST(reset), 
        .Q(buf_douto2));

    ODDRX4B Inst5_ODDRX4B1 (.D0(d01), .D1(d11), .D2(d21), .D3(d31), .D4(d41), 
        .D5(d51), .D6(d61), .D7(d71), .ECLK(eclkd), .SCLK(sclk_t), .RST(reset), 
        .Q(buf_douto1));

    ODDRX4B Inst5_ODDRX4B0 (.D0(d00), .D1(d10), .D2(d20), .D3(d30), .D4(d40), 
        .D5(d50), .D6(d60), .D7(d70), .ECLK(eclkd), .SCLK(sclk_t), .RST(reset), 
        .Q(buf_douto0));

    ECLKSYNCA Inst4_ECLKSYNCA (.ECLKI(clkos), .STOP(xstop), .ECLKO(eclkc));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam Inst3_CLKDIVC.DIV = "4.0" ;
    CLKDIVC Inst3_CLKDIVC (.RST(reset), .CLKI(eclkd), .ALIGNWD(scuba_vlo), 
        .CDIV1(cdiv1), .CDIVX(sclk_t));

    ECLKSYNCA Inst2_ECLKSYNCA (.ECLKI(clkop), .STOP(1'b0/*xstop*/), .ECLKO(eclkd));

//    OB Inst1_OB3 (.I(buf_douto3), .O(dout[3])) /* synthesis IO_TYPE="LVDS25E" */;
    
//    OB Inst1_OB2 (.I(buf_douto2), .O(dout[2])) /* synthesis IO_TYPE="LVDS25E" */;

//    OB Inst1_OB1 (.I(buf_douto1), .O(dout[1])) /* synthesis IO_TYPE="LVDS25E" */;

//    OB Inst1_OB0 (.I(buf_douto0), .O(dout[0])) /* synthesis IO_TYPE="LVDS25E" */;
    assign dout[3:0] = {buf_douto3, buf_douto2, buf_douto1, buf_douto0};
	
    assign sclk = sclk_t;
    assign d73 = dataout[31];
    assign d63 = dataout[30];
    assign d53 = dataout[29];
    assign d43 = dataout[28];
    assign d33 = dataout[27];
    assign d23 = dataout[26];
    assign d13 = dataout[25];
    assign d03 = dataout[24];
    assign d72 = dataout[23];
    assign d62 = dataout[22];
    assign d52 = dataout[21];
    assign d42 = dataout[20];
    assign d32 = dataout[19];
    assign d22 = dataout[18];
    assign d12 = dataout[17];
    assign d02 = dataout[16];
    assign d71 = dataout[15];
    assign d61 = dataout[14];
    assign d51 = dataout[13];
    assign d41 = dataout[12];
    assign d31 = dataout[11];
    assign d21 = dataout[10];
    assign d11 = dataout[9];
    assign d01 = dataout[8];
    assign d70 = dataout[7];
    assign d60 = dataout[6];
    assign d50 = dataout[5];
    assign d40 = dataout[4];
    assign d30 = dataout[3];
    assign d20 = dataout[2];
    assign d10 = dataout[1];
    assign d00 = dataout[0];
    assign clkout = buf_clkout;
    assign tx_ready = xstart;
    assign xstart = opensync_3;


    // exemplar begin
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar attribute Inst1_OB3 IO_TYPE LVDS25E
    // exemplar attribute Inst1_OB2 IO_TYPE LVDS25E
    // exemplar attribute Inst1_OB1 IO_TYPE LVDS25E
    // exemplar attribute Inst1_OB0 IO_TYPE LVDS25E
    // exemplar end

endmodule