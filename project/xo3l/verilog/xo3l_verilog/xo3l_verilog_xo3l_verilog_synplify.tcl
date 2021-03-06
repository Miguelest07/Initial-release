#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO3L
set_option -part LCMXO3L_6900C
set_option -package BG256C
set_option -speed_grade -5

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 200
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr auto
set_option -compiler_compatible 0
set_option -dup false

set_option -default_enum_encoding default

#simulation options


#timing analysis options
set_option -num_critical_paths 3


#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -seqshift_no_replicate 0

#-- add_file options
set_option -include_path {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/compiler_directives.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/colorbar_gen.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/top.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/xo3l/oddrx4.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/xo3l/ipexpress/pll_pix2byte_RGB888_2lane.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/lp_hs_dly_ctrl.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/io_controller_tx.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/dphy_tx_inst.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/dcs_rom.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/dcs_encoder.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/byte_packetizer.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/crc16_2lane_bb.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/parallel2byte_bb.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/source/verilog/packetheader_bb.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog/Commando_Inicial.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog/DataFlow_Switch.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog/Mux_mod.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog/Serial_Protocol.v}
add_file -verilog -vlog_std v2001 {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog/PLL_12_24_100.v}

#-- top module name
set_option -top_module top

#-- set result format/file last
project -result_file {C:/Users/Miguel Estrada/Documents/GitHub/project/xo3l/verilog/xo3l_verilog/xo3l_verilog_xo3l_verilog.edi}

#-- error message log file
project -log_file {xo3l_verilog_xo3l_verilog.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run
