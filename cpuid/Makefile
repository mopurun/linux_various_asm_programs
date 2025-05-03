all: hello

hello.o:  hello.asm
	nasm -f elf32 -o hello.o hello.asm

hello:   hello.o
	gcc -m32 -no-pie -o hello hello.o
