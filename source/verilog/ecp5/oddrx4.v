module oDDRx4 (
    input         clk_s, 
    input         clkop, 
    input         clkos, 
    output        clkout, 
    input         lock_chk, 
    input         reset, 
    output        sclk, 
    output        tx_ready, 
    input  [31:0] dataout, 
    output [3:0]  dout,
	input wire hsxx_clk_en
); 
wire [15:0] din16;
wire clkdiv4;
gearing_converter_fifo u_gearing_converter_fifo (
    .Data({dataout[31],dataout[23],dataout[15],dataout[7],dataout[30],dataout[22],dataout[14],dataout[6],dataout[29],dataout[21],dataout[13],dataout[5],dataout[28],dataout[20],dataout[12],dataout[4],dataout[27],dataout[19],dataout[11],dataout[3],dataout[26], dataout[18],dataout[10],dataout[2],dataout[25],dataout[17],dataout[9],dataout[1],dataout[24],dataout[16],dataout[8],dataout[0]}), 
    .WrClock(clk_s), 
    .RdClock(clkdiv2), 
    .WrEn(hsxx_clk_en), 
    .RdEn(1), 
    .Reset(reset), 
    .RPReset(reset), 
    .Q(din16), 
    .Empty( ), 
    .Full( ), 
    .AlmostEmpty( ), 
    .AlmostFull( ));
    
	
ODDRx2 u_oDDRx2(
.clkop(clkop), 
.clkos(clkos),
.sync_clk(clk_s),
.clkout(clkout),
.sclk(clkdiv2), 
.start(1), 
.ready(tx_ready),
.sync_reset(reset),
.data(din16), 
.dout(dout[3:0]),
.hsxx_clk_en(hsxx_clk_en));	
	
	
/*	
oDDRx2 u_oDDRx2(
    .clkop(clkop),
    .clkos(clkos),
    .clk(clk_s), 
    .clkout(clkout), 
    .reset(reset), 
    .clkdiv2(clkdiv2), 
    .clkdiv4(clkdiv4),
    .din(din16), 
    .q(dout[3:0]),
	.hsxx_clk_en(hsxx_clk_en)
);
*/
assign sclk = clkdiv2;

//assign tx_ready = 1;

endmodule