lappend auto_path "C:/lscc/diamond/3.3_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {rtl_verilog}
set ::bali::simulation::Para(PROJECTPATH) {D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo3l/verilog}
set ::bali::simulation::Para(FILELIST) {"D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo3l/crc16_2lane.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo3l/packetheader_2s.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/simulation/xo3l/parallel2byte_24s_2s_62.vo" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo3l/ipexpress/simulation_fifo_24bit_to_24bit.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/colorbar_gen.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_encoder.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dcs_rom.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/io_controller_tx.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo3l/oddrx4.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/dphy_tx_inst.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/lp_hs_dly_ctrl.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/byte_packetizer.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/xo3l/ipexpress/pll_pix2byte_RGB888_2lane.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/top.v" "D:/DESKTOP/RD_WORK/rd1184/check1/testbench/verilog/Parallel2DSI_tb_2lane.v" "D:/DESKTOP/RD_WORK/rd1184/check1/source/verilog/compiler_directives.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "" "" "" "" "work" "work" "work" "work" "work" "work" "work" "work" "" "work" "" "work" }
set ::bali::simulation::Para(COMPLIST) {"none" "none" "none" "none" "none" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "none" "VERILOG" "none" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo3l}
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
