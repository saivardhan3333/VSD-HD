<details>
<summary>Static timing analysis</summary>

Installing OpenSTA

    git clone https://github.com/parallaxsw/OpenSTA.git
    cd OpenSTA
    mkdir build
    cd build
    cmake ..
    make
![image](https://github.com/user-attachments/assets/169bbb6c-e641-4c8a-acd5-dc1b8ba02d45)

           from   Ubuntu   Macos
                22.04.2  14.4.1
    cmake    3.10.2 3.24.2   3.29.2
    clang    9.1.0           15.0.0
    gcc      3.3.2   11.4.0  
    tcl      8.4     8.6     8.6.6
    swig     1.3.28  4.1.0   4.2.1
    bison    1.35    3.8.2   3.8.2
    flex     2.5.4   2.6.4   2.6.4
   
  External library required for Opensta Eigen

    libeigen3-dev
  ![image](https://github.com/user-attachments/assets/d14bf0da-bed8-402a-a314-42d150ed9954)




    sta
    read_liberty ./sky130_fd_sc_hd__tt_025C_1v80.lib
    read_verilog ./verilogfiles/rv32i_synth.v <Path to synthesized netlist file>
    link_design rv32i
    current_design
    read_sdc ../sky130RTLDesignAndSynthesisWorkshop/sdc/riscv_core_synthesis.sdc
    create_clock -name clk -period 10.0000 [get_ports {clk}]
    check_setup -verbose -unconstrained_endpoints
    report_checks -path_delay min_max -fields {nets cap slew input_pins fanout} -digits {4}
> Min Path
![image](https://github.com/user-attachments/assets/ea960bd6-05bf-4fd9-8097-f09d9bd96c93)
![image](https://github.com/user-attachments/assets/8c167e3a-7e8a-4463-a69a-f4896af88e02)

> Max Path
![image](https://github.com/user-attachments/assets/02b8ee9f-da2b-48fc-b12b-1f38e69e675f)
![image](https://github.com/user-attachments/assets/45687c51-cbb8-402b-a35d-c89637b3d037)


</details>
