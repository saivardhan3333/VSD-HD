<details>
<summary> Basic C </summary>

    sudo apt install leafpad
    leafpad sum1ton.c &
    gcc sum1ton.c
    ./a.out

Here is C programe for sum 1 to n in leafpad editor
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/a0906edc-a651-40f1-892c-08e46596e711)

Output of the above code
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/f542d1a0-d210-4275-90f8-fcc586f47851)

</details>

<details>
<summary>Risc V</summary>

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
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/0dfaa38c-ea8c-4383-86b7-1605e30df995)

        riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
        riscv64-unknown-elf-objdump -d sum1ton.o | less
        /main
Using -Ofast Optimization number of instructions are reduced to 11
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/15796d57-7b9f-47d9-a34d-4f77f25d6afa)
</details>

<details>
<summary>Simulation of RiscV</summary>
    
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/204ea012-ac5d-4f8d-b898-562cebf0a373)

    iverilog rv32i.v rv32i_tb.v
    ./a.out
    gtkwave rv32i.vsd
From rv32i.v design we can observe that the designers of this code has hard coded the instrcutions.Below fig shows the instructions
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/12a94d34-ca23-4fed-b190-58c3daf73c96)

All Outputs of an instructions are shown in next cycle
> ADD R6, R2, R1

As we can observe that value stored in registers are 1 and 2 and the output in next cycle is 3. Instruction is stored in location of 32'h02208300
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/eb3ff81f-844e-4e71-92c9-ebc19bf30742)

> SUB R7, R1, R2

Values stored in registers are 1 and 2, output = -1
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/6f28f18a-84e4-4264-93af-21db6b3a8f7d)

> OR R9, R2, R5

Value1  = 2(0010), Value2 = 5(0101), Output = 7(0111)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/1f3295ca-78c0-417a-8e04-f5164308a395)

> SLT R1, R2, R4

r1 is the destination register that sets to 1, if r2 is less than r4, else 0 if r2 is greater than r4.
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/d707d4ee-2c27-403d-9c4a-86d5b7a72aad)


> ADDI R12, R4, 5

The add immediate (ADDI) instruction is used to add integers between a register and an immediate (constant) value. A destination register holds the outcome.
Value1 = R4(4), Value2 = 5, Output = 9
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/b69d921c-f645-4129-93bd-fd1c8f58de32)

> BEQ R0, R0, 15

BEQ stands for "Branch if Equal". BEQ checks if the value in a register named r0 is equal to itself (r0 == r0). If it is, the program jumps ahead by 15 instructions. Otherwise, it continues to the next instruction, like normal.
from figure R0 is same, so it increases the PC by 15, Output = 25
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/0386659b-43ec-43a8-a1ab-5d90310b6554)

> BNE R0, R1, 20

BNE stands for "Branch if Not Equal". BNE checks if the value in register r0 is different from the value in register r1 (r0 != r1). If the values in r0 and r1 are not equal, the program jumps ahead by 20 instructions. This means the program skips the next 19 instructions.
If the values in r0 and r1 are equal, the program continues normally to the next instruction in sequence (PC + 4).

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/7bafb4e9-0caa-4105-ac95-f63eddaf975a)
</details>

<details>
<Summary>Synthesis of RiscV</Summary>

    yosys
    read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    read_verilog rv32i.v
    synth -top rv32i
    abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
    clean
    flatten
    write_verilog  -noattr rv32i_synth.v
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/16391782-3db6-4db8-b5cb-f51e6a35c4cb)
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/1b8ca17e-b148-4db1-b616-121dbd8228d4)

</details>

<details>
    <summary> GLS Simulation </summary>

        iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v         rv32i_synth.v rv32i_tb.v
    ./a.out
    gtkwave rv32i.vcd
The output waveform for the RTL design file and the gtkwave output for the netlist must match perfectly. We used the same testbench and compared the waveforms because the netlist and design code have the same set of inputs and outputs.

Below we can observe > ADD R6, R2, R1 and SUB R7, R1, R2

![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/f47a6a8e-d911-4560-be8c-b7a9c8b691e1)

> OR R9, R2, R5
![image](https://github.com/saivardhan3333/VSD-HD/assets/60193705/4e5317a5-76a1-4c3a-b8e3-66cb3b1c9081)

</details>
     

        

        
