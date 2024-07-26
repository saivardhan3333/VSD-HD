
define_corners ss tt ff
read_liberty -corner ss sky130_fd_sc_hd__slow.lib
read_liberty -corner tt sky130_fd_sc_hd__typical.lib
read_liberty -corner ff sky130_fd_sc_hd__fast.lib


read_verilog ./verilog_files/rv32i_netlist.v
link_design rv32i
set_timing_derate -early 0.9
set_timing_derate -late 1.1
create_clock -name clk -period 10 {clk}
set_input_delay -clock clk 0 {NPC, WB_OUT}
report_checks -corner tt
report_checks -path_delay min_max



exit
