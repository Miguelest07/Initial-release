set PROJ_DIR "Enter simulation directory path here"

#Example:
#set PROJ_DIR "D:\DESKTOP\RD_WORK\rd1184\check1\simulation"

cd $PROJ_DIR\ecp5\verilog


if {![file exists rtl_verilog]} {
    vlib rtl_verilog 
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all

cd $PROJ_DIR\ecp5\verilog


vlog -dbg ../../../simulation/ecp5/crc16_2lane.vo
vlog -dbg ../../../simulation/ecp5/packetheader_2s.vo
vlog -dbg ../../../simulation/ecp5/parallel2byte_24s_2s_62.vo
vlog ../../../source/verilog/ecp5/clarity/pll_pix2byte_RGB888_2lane/pll_pix2byte_RGB888_2lane.v
vlog ../../../source/verilog/ecp5/clarity/pll_pix2byte_RGB888_2lane/pll/pll.v 
vlog ../../../source/verilog/ecp5/clarity/pllx4/pllx4.v  
vlog ../../../source/verilog/ecp5/clarity/pllx4/pll_x4/pll_x4.v
vlog ../../../source/verilog/ecp5/top.v
vlog ../../../source/verilog/ecp5/gearing_converter_fifo.v 
vlog ../../../source/verilog/byte_packetizer.v 
vlog ../../../source/verilog/lp_hs_dly_ctrl.v 
vlog ../../../source/verilog/colorbar_gen.v 
vlog ../../../source/verilog/ecp5/io_controller_tx.v	   
vlog ../../../source/verilog/ecp5/dphy_tx_inst.v	
vlog ../../../source/verilog/ecp5/compiler_directives.v	
vlog ../../../source/verilog/dcs_rom.v
vlog ../../../source/verilog/dcs_encoder.v
vlog ../../../source/verilog/ecp5/oddrx4.v 	
vlog ../../../source/verilog/ecp5/oddrx2.v   

Vlog ../../../source/verilog/xo2/ipexpress/simulation_fifo_24bit_to_24bit.v
vlog -dbg ../../../testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo
vlog -dbg ../../../testbench/verilog/Parallel2DSI_tb_2lane.v


vsim +access +r Parallel2DSI_tb -L ovi_ecp5um -L ovi_machxo2

add wave *
add wave Parallel2DSI_tb/
run 600us
