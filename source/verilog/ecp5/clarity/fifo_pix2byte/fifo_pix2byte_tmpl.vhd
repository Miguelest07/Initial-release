--VHDL instantiation template

component fifo_pix2byte is
    port (pixel2byte_fifo_Data: in std_logic_vector(7 downto 0);
        pixel2byte_fifo_Q: out std_logic_vector(7 downto 0);
        pixel2byte_fifo_AlmostEmpty: out std_logic;
        pixel2byte_fifo_AlmostFull: out std_logic;
        pixel2byte_fifo_Empty: out std_logic;
        pixel2byte_fifo_Full: out std_logic;
        pixel2byte_fifo_RPReset: in std_logic;
        pixel2byte_fifo_RdClock: in std_logic;
        pixel2byte_fifo_RdEn: in std_logic;
        pixel2byte_fifo_Reset: in std_logic;
        pixel2byte_fifo_WrClock: in std_logic;
        pixel2byte_fifo_WrEn: in std_logic
    );
    
end component fifo_pix2byte; -- sbp_module=true 
_inst: fifo_pix2byte port map (pixel2byte_fifo_Data => __,pixel2byte_fifo_Q => __,
            pixel2byte_fifo_AlmostEmpty => __,pixel2byte_fifo_AlmostFull => __,
            pixel2byte_fifo_Empty => __,pixel2byte_fifo_Full => __,pixel2byte_fifo_RPReset => __,
            pixel2byte_fifo_RdClock => __,pixel2byte_fifo_RdEn => __,pixel2byte_fifo_Reset => __,
            pixel2byte_fifo_WrClock => __,pixel2byte_fifo_WrEn => __);
