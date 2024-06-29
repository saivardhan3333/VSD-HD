## Basic C

    sudo apt install leafpad
    leafpad sum1ton.c &
    gcc sum1ton.c
    ./a.out

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/2dd738e0-542f-4cef-9430-6f8c50cc3935)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/f542d1a0-d210-4275-90f8-fcc586f47851)

## Risc V

        cat sum1ton.c
        riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
        ls -ltr sum1ton.o
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/d922627f-cd59-4170-b247-a2456a2173c8)

        riscv64-unknown-elf-objdump -d sum1ton.o
        riscv64-unknown-elf-objdump -d sum1ton.o | less
        /main
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/482d9d01-42ff-4032-9909-c54c9011a1ac)

        riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
        riscv64-unknown-elf-objdump -d sum1ton.o | less
        /main
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/487bbc60-5626-4800-be1c-dbe217924d5f)

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/622a439f-1ce5-4844-86a9-23893f1636ee)


## Simulation of riscv

        git clone https://github.com/siddharthanand3/vsdhdp
        cd rv32i
        iverilog iiitb_rv32i.v iiitb_rv32i_tb.v
        ./a.out
        gtkwave iiitb_rv32i.vcd

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/aebd6e43-ed82-4b87-b6a6-8e5b9c57c8b2)

## Synthesis of RiscV

        read_liberty -lib lib/sky130_fd_sc_hd__tt_025C_1v80.lib
        read_verilog iiitb_rv32i.v
        synth -top rv32i	
        dfflibmap -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
        proc ; opt
        abc -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
        clean
        flatten
        write_verilog -noattr iiitb_rv32i_synth.v

        

        
