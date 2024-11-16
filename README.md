# Low-Level-Assembly-Programs
# 32-bit x86 Assembly Programs

This repository contains a collection of assembly programs written for the **32-bit x86** architecture. These programs cover basic operations, such as arithmetic, printing text to the console, and working with control structures.



## How to Use

### Prerequisites
Make sure you have **NASM** and **GCC** installed on your system to compile and link the assembly code.

On Linux, you can install them using:
```bash
sudo apt-get update
sudo apt-get install nasm gcc

# Assemble the code
nasm -f elf32 hello_world.asm 

# Link the object file to create the executable
gcc -m32  hello_world.o

# Run the program
./hello_world.out

