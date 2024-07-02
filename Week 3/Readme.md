Executed the sum of the numbers from 1 to n the C code using gcc and riscv compiler
## Basic C

    sudo apt install leafpad
    leafpad sum1ton.c &
    gcc sum1ton.c
    ./a.out

Here is C programe for sum 1 to n in leafpad editor
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/a0906edc-a651-40f1-892c-08e46596e711)

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/2dd738e0-542f-4cef-9430-6f8c50cc3935)

Output of the above code
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

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/2fe8a7a0-4e1f-4ab6-ae02-6169960ddd0d)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/fddf724c-0c9f-4e0d-8cf9-562414f1aff3)

## Simulation of riscv

      

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/aebd6e43-ed82-4b87-b6a6-8e5b9c57c8b2)

## Synthesis of RiscV

     

        

        
