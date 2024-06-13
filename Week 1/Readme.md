
    sudo apt-get install git 
    git clone https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop
    
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/cc01300a-7138-4dc5-8486-c7c14e6fb597)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/a27021f3-44cb-4423-ba46-49aba9d543b9)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/1928beb6-abd2-457a-9718-31a38ffa8846)

    yosys
    read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    read_verilog good_mux.v
    synth -top good_mux
    abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    write_verilog good_mux_netlist.v
    !gvim good_mux_netlist.v

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/9421527c-4e47-4ac9-b6eb-20bdf9ab09a0)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/2a300b8a-46e4-4f10-8929-eccdfe83f5da)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/25bfe245-332d-4b9b-85f7-ccd3480b18fc)

    
