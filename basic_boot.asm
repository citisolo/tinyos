; Our code
jmp $

; Magic numbers
times 510 - ($ - $$) db 0
dw 0xAA55
