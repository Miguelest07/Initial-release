setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/verilog/rtl_verilog/rtl_verilog.adf"]} { 
	design create rtl_verilog "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/verilog"
  set newDesign 1
}
design open "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/verilog/rtl_verilog"
cd "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/verilog"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/crc16_2lane.vo"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/packetheader_2s.vo"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/parallel2byte_24s_2s_3E.vo"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/ipexpress/simulation_fifo_24bit_to_24bit.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/colorbar_gen.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_encoder.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_rom.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/io_controller_tx.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/oddrx4.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dphy_tx_inst.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/lp_hs_dly_ctrl.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/byte_packetizer.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/ipexpress/pll_pix2byte_RGB888_2lane.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/top.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/Parallel2DSI_tb_2lane.v"
addfile "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/compiler_directives.v"
vlib "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/verilog/rtl_verilog/work"
set worklib work
adel -all
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo"
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/crc16_2lane.vo"
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/packetheader_2s.vo"
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo2/parallel2byte_24s_2s_3E.vo"
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/ipexpress/simulation_fifo_24bit_to_24bit.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/colorbar_gen.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_encoder.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_rom.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/io_controller_tx.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/oddrx4.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dphy_tx_inst.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/lp_hs_dly_ctrl.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/byte_packetizer.v"
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/ipexpress/pll_pix2byte_RGB888_2lane.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/top.v"
vlog -dbg "D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/Parallel2DSI_tb_2lane.v"
vlog -dbg -work work "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/compiler_directives.v"
module Parallel2DSI_tb
vsim  +access +r Parallel2DSI_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
