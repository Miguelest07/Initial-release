lappend auto_path "C:/lscc/diamond/3.3_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {rtl_verilog}
set ::bali::simulation::Para(PROJECTPATH) {D:/DESKTOP/RD_WORK/rd1184/check1/simulation/ecp5/verilog}
set ::bali::simulation::Para(FILELIST) {"D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/ecp5/parallel2byte_24s_2s_62.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/ecp5/packetheader_2s.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/ecp5/crc16_2lane.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/clarity/pllx4/pll_x4/pll_x4.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/clarity/pllx4/pllx4.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo2/ipexpress/simulation_fifo_24bit_to_24bit.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/colorbar_gen.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_encoder.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_rom.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/io_controller_tx.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/oddrx2.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/gearing_converter_fifo.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/oddrx4.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/dphy_tx_inst.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/lp_hs_dly_ctrl.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/byte_packetizer.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_RGB888_2lane/pll/pll.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/clarity/pll_pix2byte_RGB888_2lane/pll_pix2byte_RGB888_2lane.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/top.v" "D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/Parallel2DSI_tb_2lane.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/ecp5/compiler_directives.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "" "" "" "work" "work" "" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "" "work" }
set ::bali::simulation::Para(COMPLIST) {"none" "none" "none" "none" "VERILOG" "VERILOG" "none" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "none" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ecp5um ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {Parallel2DSI_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
