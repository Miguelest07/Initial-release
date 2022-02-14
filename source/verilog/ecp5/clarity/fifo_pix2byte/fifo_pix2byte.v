/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module fifo_pix2byte
//
module fifo_pix2byte (pixel2byte_fifo_Data, pixel2byte_fifo_Q, pixel2byte_fifo_AlmostEmpty, 
            pixel2byte_fifo_AlmostFull, pixel2byte_fifo_Empty, pixel2byte_fifo_Full, 
            pixel2byte_fifo_RPReset, pixel2byte_fifo_RdClock, pixel2byte_fifo_RdEn, 
            pixel2byte_fifo_Reset, pixel2byte_fifo_WrClock, pixel2byte_fifo_WrEn) /* synthesis sbp_module=true */ ;
    input [7:0]pixel2byte_fifo_Data;
    output [7:0]pixel2byte_fifo_Q;
    output pixel2byte_fifo_AlmostEmpty;
    output pixel2byte_fifo_AlmostFull;
    output pixel2byte_fifo_Empty;
    output pixel2byte_fifo_Full;
    input pixel2byte_fifo_RPReset;
    input pixel2byte_fifo_RdClock;
    input pixel2byte_fifo_RdEn;
    input pixel2byte_fifo_Reset;
    input pixel2byte_fifo_WrClock;
    input pixel2byte_fifo_WrEn;
    
    
    pixel2byte_fifo pixel2byte_fifo_inst (.Data({pixel2byte_fifo_Data}), .Q({pixel2byte_fifo_Q}), 
            .AlmostEmpty(pixel2byte_fifo_AlmostEmpty), .AlmostFull(pixel2byte_fifo_AlmostFull), 
            .Empty(pixel2byte_fifo_Empty), .Full(pixel2byte_fifo_Full), 
            .RPReset(pixel2byte_fifo_RPReset), .RdClock(pixel2byte_fifo_RdClock), 
            .RdEn(pixel2byte_fifo_RdEn), .Reset(pixel2byte_fifo_Reset), 
            .WrClock(pixel2byte_fifo_WrClock), .WrEn(pixel2byte_fifo_WrEn));
    
endmodule

