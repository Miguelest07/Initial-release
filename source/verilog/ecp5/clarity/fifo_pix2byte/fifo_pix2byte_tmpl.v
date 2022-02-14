//Verilog instantiation template

fifo_pix2byte _inst (.pixel2byte_fifo_Data(), .pixel2byte_fifo_Q(), .pixel2byte_fifo_AlmostEmpty(), 
            .pixel2byte_fifo_AlmostFull(), .pixel2byte_fifo_Empty(), .pixel2byte_fifo_Full(), 
            .pixel2byte_fifo_RPReset(), .pixel2byte_fifo_RdClock(), .pixel2byte_fifo_RdEn(), 
            .pixel2byte_fifo_Reset(), .pixel2byte_fifo_WrClock(), .pixel2byte_fifo_WrEn());