section .data
    sector_size dw 512

section .bss
    sector resb 512

section .text
    global _start
_start:
    xor ax, ax
    mov di, sector
    mov cx, sector_size
    rep stosb

    mov di, sector
    mov al, 0xFF
    stosb

    mov ah, 0x4c
    int 0x21
