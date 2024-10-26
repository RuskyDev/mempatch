section .text
    org 0x7C00

_start:
    jmp loop_start

loop_start:
    jmp loop_start

times 510 - ($ - $$) db 0
dw 0xAA55
