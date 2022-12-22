section .data

msg db 'Hello World!',0
len equ $-msg

true_msg db '👩',0
true_len equ $-true_msg

false_msg db 'FALSO!',0
false_len equ $-false_msg

section .text

global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, true_msg
    mov edx, true_len
    cmp ecx, msg
    jz true
    jmp false

true:
    int 0x80
    jmp end

false:
    mov ecx, false_msg
    mov edx, false_len
    int 0x80

end:
    mov eax, 1
    xor ebx, ebx
    int 0x80
