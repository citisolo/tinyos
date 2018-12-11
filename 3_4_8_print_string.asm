;utility function to print string to console.
print_string:
  pusha
  mov ah, 0x0e
  mov al, [bx]
  mov cx, 0
print_loop:
  cmp al, 0
  je end
  mov al, [bx]
  int 0x10
  inc bx
  mov al, [bx]
  jmp print_loop
end:
  popa
  ret
