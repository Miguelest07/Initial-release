#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/project/xo3l/verilog/xo3l_verilog/launch_synplify.tcl
#-- Written on Mon Feb 14 14:06:13 2022

project -close
set filename "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/project/xo3l/verilog/xo3l_verilog/xo3l_verilog_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO3L
set_option -part LCMXO3L_6900C
set_option -package BG256C
set_option -speed_grade -5

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 200
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr auto
	set_option -compiler_compatible 0
	set_option -dup false
	
	set_option -default_enum_encoding default
	
	set_option -num_critical_paths 3
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
set_option -include_path "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/project/xo3l/verilog"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/compiler_directives.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/colorbar_gen.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/top.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/xo3l/oddrx4.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/xo3l/ipexpress/pll_pix2byte_RGB888_2lane.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/lp_hs_dly_ctrl.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/io_controller_tx.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/dphy_tx_inst.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/dcs_rom.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/dcs_encoder.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/byte_packetizer.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/crc16_2lane_bb.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/parallel2byte_bb.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/source/verilog/packetheader_bb.v"
add_file -verilog -vlog_std v2001 "C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/project/xo3l/verilog/Commando_Inicial.v"
#-- top module name
set_option -top_module {top}
project -result_file {C:/Users/migue/Downloads/DSITXReferenceDesign(2)/rd1184/project/xo3l/verilog/xo3l_verilog/xo3l_verilog.edi}
project -save "$filename"
