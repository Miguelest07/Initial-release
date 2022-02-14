--VHDL instantiation template

component pll_pix2byte_RGB888_2lane is
    port (pll_CLKI: in std_logic;
        pll_CLKOP: out std_logic;
        pll_CLKOS: out std_logic;
        pll_CLKOS2: out std_logic;
        pll_LOCK: out std_logic;
        pll_RST: in std_logic
    );
    
end component pll_pix2byte_RGB888_2lane; -- sbp_module=true 
_inst: pll_pix2byte_RGB888_2lane port map (pll_CLKI => __,pll_CLKOP => __,
            pll_CLKOS => __,pll_CLKOS2 => __,pll_LOCK => __,pll_RST => __);
