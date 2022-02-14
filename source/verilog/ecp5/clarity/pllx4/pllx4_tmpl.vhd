--VHDL instantiation template

component pllx4 is
    port (pll_x4_CLKI: in std_logic;
        pll_x4_CLKOP: out std_logic;
        pll_x4_CLKOS: out std_logic;
        pll_x4_LOCK: out std_logic;
        pll_x4_RST: in std_logic
    );
    
end component pllx4; -- sbp_module=true 
_inst: pllx4 port map (pll_x4_CLKI => __,pll_x4_CLKOP => __,pll_x4_CLKOS => __,
            pll_x4_LOCK => __,pll_x4_RST => __);
