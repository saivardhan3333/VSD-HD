# Basic C

    sudo snap install leafpad
    leafpad sum1ton.c &
    gcc sum1ton.c
    ./a.out

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/2dd738e0-542f-4cef-9430-6f8c50cc3935)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/f542d1a0-d210-4275-90f8-fcc586f47851)

# Riscv

        cat sum1ton.c
        riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
        ls -ltr <Output file name: sum1ton.o>
        riscv64-unknown-elf-objdump -d <Output file name: sum1ton.o>
        riscv64-unknown-elf-objdump -d <Output file name: sum1ton.o> | less
        /main
