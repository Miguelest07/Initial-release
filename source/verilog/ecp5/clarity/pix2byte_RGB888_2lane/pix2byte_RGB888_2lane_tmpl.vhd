--VHDL instantiation template

component pix2byte_RGB888_2lane is
    port (pll_pix2byte_RGB888_2lane_CLKI: in std_logic;
        pll_pix2byte_RGB888_2lane_CLKOP: out std_logic;
        pll_pix2byte_RGB888_2lane_CLKOS: out std_logic;
        pll_pix2byte_RGB888_2lane_CLKOS2: out std_logic;
        pll_pix2byte_RGB888_2lane_LOCK: out std_logic;
        pll_pix2byte_RGB888_2lane_RST: in std_logic
    );
    
end component pix2byte_RGB888_2lane; -- sbp_module=true 
_inst: pix2byte_RGB888_2lane port map (pll_pix2byte_RGB888_2lane_CLKI => __,
            pll_pix2byte_RGB888_2lane_CLKOP => __,pll_pix2byte_RGB888_2lane_CLKOS => __,
            pll_pix2byte_RGB888_2lane_CLKOS2 => __,pll_pix2byte_RGB888_2lane_LOCK => __,
            pll_pix2byte_RGB888_2lane_RST => __);
