;
; A simple boot sector program that demonstrates addressing.
;
[org 0x7c00]
mov ah, 0x0e ; int 10/ah = 0eh -> scrolling teletype BIOS routine

; First attempt
mov al, the_secret
int 0x10

mov al, [the_secret]
int 0x10

mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10

mov al, [0x7c1d]
int 0x10


jmp $

the_secret:
  db "X"

; Magic numbers
times 510 - ($ - $$) db 0
dw 0xAA55
