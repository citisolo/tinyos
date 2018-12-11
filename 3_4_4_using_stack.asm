;
; A simple boot sector program that demonstrates the stack
;

mov ah, 0x0e

mov bp, 0x8000   ; Set the base of the stack a little above where BIOS
mov sp, bp       ; loads our boot sector to prevent it overwriting bios in mem
push 'A'
push 'B'
push 'C'

pop bx
mov al, bl
int 0x10

pop bx
mov al, bl
int 0x10

mov al, [0x7ffe]

int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
