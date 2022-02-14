set PROJ_DIR "Enter simulation directory path here"

#Example:
#set PROJ_DIR "D:\DESKTOP\RD_WORK\rd1184\check1\simulation"

cd $PROJ_DIR\xo2\verilog


if {![file exists rtl_verilog]} {
    vlib rtl_verilog 
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all

cd $PROJ_DIR\xo2\verilog


vlog -dbg ../../../simulation/xo2/crc16_2lane.vo
vlog -dbg ../../../simulation/xo2/packetheader_2s.vo
vlog -dbg ../../../simulation/xo2/parallel2byte_24s_2s_3E.vo
vlog ../../../source/verilog/xo2/ipexpress/pll_pix2byte_RGB888_2lane.v 
vlog ../../../source/verilog/top.v 
vlog ../../../source/verilog/byte_packetizer.v 
vlog ../../../source/verilog/lp_hs_dly_ctrl.v 
vlog ../../../source/verilog/colorbar_gen.v 
vlog ../../../source/verilog/io_controller_tx.v	   
vlog ../../../source/verilog/dphy_tx_inst.v	
vlog ../../../source/verilog/compiler_directives.v	
vlog ../../../source/verilog/dcs_rom.v
vlog ../../../source/verilog/dcs_encoder.v
vlog ../../../source/verilog/xo2/oddrx4.v 	  

Vlog ../../../source/verilog/xo2/ipexpress/simulation_fifo_24bit_to_24bit.v
vlog -dbg ../../../testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo
vlog -dbg ../../../testbench/verilog/Parallel2DSI_tb_2lane.v


vsim +access +r Parallel2DSI_tb -L ovi_machxo2

add wave *
add wave Parallel2DSI_tb/
run 600us
