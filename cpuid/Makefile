all: hello

hello.o:  hello.asm
	nasm -f elf32 -o hello.o hello.asm

hello:   hello.o
	gcc -m32 -o hello hello.o
