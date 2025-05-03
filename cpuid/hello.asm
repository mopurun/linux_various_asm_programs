global main

;Declare used libc functions
extern exit
extern puts
extern scanf
extern printf

section .text

main:

mov eax,0
cpuid
push edx
push ecx
push ebx
push dword msg1
call printf
add esp, 16



push dword 0
call exit
add esp, 4
ret

section .data


msg1 : db "ebx:%u,ecx:%u,edx:%u", 0xA, 0


section .bss
