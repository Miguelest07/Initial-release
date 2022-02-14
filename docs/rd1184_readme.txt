________________________________________________________________________
	   PARALLEL TO MIPI DSI Sensor Bridge Design Readme
-------------------------------------------------------------------------
---------------------------------------------------------------------------
File List (52 files):
---------------------------------------------------------------------------

1.  rd1184\docs\rd1184_readme.txt                                                 -->  read me file (this file)
    rd1184\docs\rd1184.pdf                                                        -->  Parallel to MIPI DSI TX Bridge reference document
    rd1184\docs\revision_history.xlsx                                             -->  Revision History

2. rd1130/projects/<Device_name>/<verilog>/*.ldf                                  --> Lattice Diamond Design files to open diamond project
   rd1130/projects/<Device_name>/<verilog>/*.lpf                                  --> Preference constraint file for Diamond
   rd1130/projects/<Device_name>/<verilog>/*.sty  
   
3. rd1130/simulation/<Device_name>/<verilog>/rtl_verilo.do                        --> RTL simulation script file
   rd1130/simulation/<Device_name>/<verilog>/timing_verilog.do                    --> Timing simulation script file
   rd1130/simulation/<Device_name>/crc16_2lane.vo                                 -->  netlist file for simulation
   rd1130/simulation/<Device_name>/packetheader_2s.vo                             -->  netlist file for simulation
   rd1130/simulation/<Device_name>/parallel2byte_24s_2s_62.vo                     -->  netlist file for simulation
   
4. rd1130/source/verilog/<Device_name>/ngo/crc16_2lane.ngo                        -->  NGO file for crc16_2lane
   rd1130/source/verilog/<Device_name>/ngo/packetheader_2s.ngo                    -->  NGO file for packetheader
   rd1130/source/verilog/<Device_name>/ngo/parallel2byte_24s_2s_62.ngo            -->  NGO file for parallel2byte   
   rd1130/source/verilog/<Device_name>/ngo/packetheader.ngo                       -->  ngo File for LSE 
   rd1130/source/verilog/<Device_name>/ngo/parallel2byte.ngo                      -->  ngo File for LSE
   rd1130/source/verilog/<Device_name>/ipexpress/oddrx4.v                         -->  Verilog source file
   rd1130/source/verilog/<Device_name>/ipexpress/pll_pix2byte_RGB888_2lane.v      -->  Verilog source file
   rd1130/source/verilog/<Device_name>/ipexpress/simulation_fifo_24bit_to_24bit.v -->  Verilog source file
   rd1130/source/verilog/<Device_name>/compiler_directives.v                      -->  Verilog source file
   rd1130/source/verilog/<Device_name>/dphy_tx_inst.v                             -->  Verilog source file
   rd1130/source/verilog/<Device_name>/top.v                                      -->  Verilog source file
   rd1130/source/verilog/packetheader_bb.v                                        -->  Verilog BlackBox file for NGO "packetheader"
   rd1130/source/verilog/parallel2byte_bb.v                                       -->  Verilog BlackBox file for NGO "parallel2byte"
   rd1130/source/verilog/crc16_2lane_bb.v                                         -->  Verilog BlackBox file for NGO "crc16_2lane"
   rd1130/source/verilog/dcs_encoder.v                                            -->  Verilog source file 
   rd1130/source/verilog/dcs_rom.v                                                -->  Verilog source file 
   rd1130/source/verilog/lp_hs_dly_ctrl.v                                         -->  Verilog source file 
   rd1130/source/verilog/io_controller_tx.v                                       -->  Verilog source file 
   rd1130/source/verilog/colorbar_gen.v                                           -->  Verilog source file 
   rd1130/source/verilog/byte_packetizer.v                                        -->  Verilog source file 
   rd1130/source/verilog/compiler_directives.v                                    -->  Verilog source file 
   rd1130/source/verilog/top.v                                                    -->  Verilog source file 

5. rd1130/testbench/verilog/Parallel2DSI_tb_2lane.v                               -->  TestBench for parallel to MIPI DSI TX design
   rd1130/testbench/verilog/mipi_dsi_rx_rgb888_2lane.vo                           -->  Simulation netlist for MIPI DSI RX design
   
   
   
---------------------------------------------------------------------------------------------------------------
Complier Directives\Parameters used:
---------------------------------------------------------------------------------------------------------------
`define HS_1      >> Defines the number of HS (High Speed) Data Lanes;  HS_3 = 4 lanes, HS_2 = 3 lanes, HS_1 = 2 lanes, HS_0 = 1 lanes        

`define LP_CLK    >> Defines IO control for the LP (Low Power) Clock Lane                                                                   

`define LP_0      >> Defines IO control for the LP (Low Power) Data Lane 0                                    

`define LP_1      >> Defines IO control for the LP (Low Power) Data Lane 1                                    
`define LP_2      >> Defines IO control for the LP (Low Power) Data Lane 2                                                                    

`define LP_3      >> Defines IO control for the LP (Low Power) Data Lane 3 

`define sim       >> To simulate the design with Self checking test bench.
---------------------------------------------------------------------------------------------------------------
HOW TO OPEN A PROJECT IN DIAMOND:
---------------------------------------------------------------------------------------------------------------
1. Unzip the respective design files.
2. Launch Diamond and select "File -> Open -> Project..."
3. In the Open Project dialog, enter the Project location -- "\rd1184\project",select one device and then select one project.
4. Click Finish. Now the project is successfully loaded. 

---------------------------------------------------------------------------------------------------------------
HOW TO RUN PLACE AND ROUTE, JEDEC GENERATION, AND TIMING ANALYSIS IN DIAMOND:
---------------------------------------------------------------------------------------------------------------

1. Click the Process tab in the process panel of the Diamond dashboard. 
   Double click on Place and Route Design. This will bring the
   design through synthesis, mapping, and place and route.
2. Click the Process tab in the process panel of the Diamond dashboard.
   a) MachXO2 and MachXO3L  : Double click on "Export Files -> JEDEC File". This will generate
      the Jedec file for the design.
3. Once Place and Route is done, user can double click on Place and Route Trace
   Report on the right-side panel to get the timing analysis result.
4. Double click on "Export Files -> verilog Simulation File". This will generate
   the VO and SDF files for the timing simulation of the design.
 
-------------------------------------------------------------------------------------------------------
HOW TO RUN SIMULATION FROM DIAMOND:
-------------------------------------------------------------------------------------------------------
There are two ways to bring up the Simulation:
A. The simulation environment can be accessed by Script Files from Diamond: 
    1. Enable "`define sim" in compiler_directives.v file and map the design
    2. double clicking on the "rtl_verilog.spf" script file in Lattice Diamond 
	3. Press SkiptoEnd button
	4. Click Finish.  This will bring up the Aldec simulator automatically.
	5. Add the required signals into the Waveform panel 
	6. Run 600us.
    7. The simulation should end without error and  a waveform similar to that indicated in document
        will be appeared in the waveform panel.

(or)

B. Starting the simulation from the Simulation Wizard in Diamond:
  1. Enable "`define sim" in compiler_directives.v file and map the design
  1. Bring up the Simulation Wizard under the Tools menu 
  2. Next provide a name for simulation project, and select RTL simulation
  3. Add the respective testbench file to the source file list.
  4. Click Finish.  This will bring up the Aldec simulator automatically.
  5. In Aldec environment, you can manually activate the simulation or you can use a script
	5.1 Use the provided script in the rd1184\simulation\<language> directory
	    a. For functional simulation, change the PROJ_DIR to your local directory Address of the "simulation"
	  
		b. For POST-ROUTE simulation, 
		   i) Double click on "Verilog Simulation file" under "Export File" in diamond and then
		   ii)open the script and change the PROJ_DIR to your local directory Address of the "simulation"
		c. Click Tools > Execute Macro and select the xxx.do file to run the simulation
		d. This will run the simulation until 600us
    5.2 You can manually activate the simulation		
		a. Click Simulation > Initialize Simulation
		   If prompted to select a top-level file, select the testbench as the top-level file and click Ok.
		b. Click File > New > Waveform, this will bring up the Waveform panel
		c. Click on the top-level testbench, drag all the signals into the Waveform panel
		d. Click Simulation > Run 600us.
  6. The simulation should end without error and  a waveform similar to that indicated in document
  will be appeared in the waveform panel.


---------------------------------------------------------------------------------------------------