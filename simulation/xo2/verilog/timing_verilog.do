set PROJ_DIR "Enter simulation directory path here"

#Example:
#set PROJ_DIR "D:\DESKTOP\RD_WORK\rd1184\check1\simulation"

cd $PROJ_DIR\xo2\verilog

if {![file exists timing_verilog]} {
    vlib timing_verilog 
}
endif

design create timing_verilog .
design open timing_verilog
adel -all

cd $PROJ_DIR\xo2\verilog


vlog ../../../project/xo2/verilog/xo2_verilog/xo2_verilog_xo2_verilog_vo.vo

vlog ../../../source/verilog/colorbar_gen.v

Vlog ../../../source/verilog/xo2/ipexpress/simulation_fifo_24bit_to_24bit.v
vlog -dbg ../../../testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo
vlog -dbg  ../../../testbench/verilog/Parallel2DSI_tb_2lane.v

#designsimaddoptions +transport_path_delays +transport_int_delays
#vsim -ieee_nowarn -L ovi_machxo2 -PL pmi_work +transport_path_delays +transport_int_delays +access +r Parallel2DSI_tb -noglitch +no_tchk_msg -sdfmax /u_top = "../../../project/xo2/verilog/xo2_verilog/xo2_verilog_xo2_verilog_vo.sdf"
vsim +access +r Parallel2DSI_tb -L ovi_machxo2
add wave *

run 600us
