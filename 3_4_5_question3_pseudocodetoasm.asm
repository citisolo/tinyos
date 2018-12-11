;
; Program to convert pseudo-code to asm
; if (bx  <= 4) {
; mov al, ’A’
; } else if (bx < 40) {
; mov al, ’B’
; } else {
; mov al, ’C’
; }
[org 0x7c00]
mov bx, 30

cmp bx, 4        ; if (bx <= 4)
jle print_a
cmp bx, 40       ; else if (bx < 40)
jl  print_b
jmp print_c

print_a:
  mov al, 'A'
  jmp end
print_b:
  mov al, 'B'
  jmp end
print_c:
  mov al, 'C'

end:
  mov ah, 0x0e
  int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
