Executed the sum of the numbers from 1 to n the C code using gcc and riscv compiler
## Basic C

    sudo apt install leafpad
    leafpad sum1ton.c &
    gcc sum1ton.c
    ./a.out

Here is C programe for sum 1 to n in leafpad editor
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/a0906edc-a651-40f1-892c-08e46596e711)

Output of the above code
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/f542d1a0-d210-4275-90f8-fcc586f47851)

## Risc V

Below are steps to compile the code in RISC V

        cat sum1ton.c
        riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
        ls -ltr sum1ton.o
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/d922627f-cd59-4170-b247-a2456a2173c8)

The Assembly Language code of our C code is displayed using below commands

        riscv64-unknown-elf-objdump -d sum1ton.o
        riscv64-unknown-elf-objdump -d sum1ton.o | less
        /main
The main function's instruction count with -O1 optimisation is 14
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/482d9d01-42ff-4032-9909-c54c9011a1ac)

        riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
        riscv64-unknown-elf-objdump -d sum1ton.o | less
        /main
Using -Ofast Optimization number of instructions are reduced to 11
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/15796d57-7b9f-47d9-a34d-4f77f25d6afa)

## Simulation of riscv

    
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/aebd6e43-ed82-4b87-b6a6-8e5b9c57c8b2)

## Synthesis of RiscV

     

        

        
