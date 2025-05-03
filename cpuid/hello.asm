global main

;Declare used libc functions
extern exit
extern printf

section .text

main:

mov eax,0
cpuid
push ebx
push edx
push ecx
push dword msg1
call printf
add esp, 16



push dword 0
call exit


section .data


msg1 : db "ecx:0x%x,edx:0x%x,ebx:0x%x", 0xA, 0


section .bss