## Intro to RTL design and Logic sysnthesis
    sudo apt-get install git 
    git clone https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop
    iverilog good_mux.v tb_good_mux.v
    ./a.out
    gtkwave tb_good_mux.vcd
    
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/cc01300a-7138-4dc5-8486-c7c14e6fb597)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/a27021f3-44cb-4423-ba46-49aba9d543b9)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/1928beb6-abd2-457a-9718-31a38ffa8846)

    yosys
    read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    read_verilog good_mux.v
    synth -top good_mux
    abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    show
    write_verilog good_mux_netlist.v
    !gvim good_mux_netlist.v

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/9421527c-4e47-4ac9-b6eb-20bdf9ab09a0)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/2a300b8a-46e4-4f10-8929-eccdfe83f5da)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/25bfe245-332d-4b9b-85f7-ccd3480b18fc)

## hierarchical Synthesis - Flat Synthesis

    yosys
    read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    read_verilog multiple_modules.v
    synth -top multiple_modules
    abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    show multiple_modules
    write_verilog multiple_modules_heir.v
    !gvim multiple_modules_heir.v

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/660fc878-aa18-4917-af9e-f82ebb62f536)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/599b1be8-a56b-43e6-887e-0b72258b1acd)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/fdaa8626-0b57-46d4-98e8-ba4eb0f93205)

    flatten
    abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    show multiple_modules
    write_verilog multiple_modules_flat.v
    !gvim multiple_modules_flat.v

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/c5c81aa7-4fd7-4be8-b29d-db6b6b5e50e8)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/1024687c-8d51-4a89-8da9-7e87e8227291)

    read_verilog multiple_modules.v
    synth -top sub_module1
    abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    show 
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/7fbe75e7-9e30-4714-8dc0-38c7208fdfbf)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/630d9bdf-6a39-4e8e-b7c1-b216f312ac0e)

    

