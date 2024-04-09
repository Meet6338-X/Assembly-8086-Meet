.model small
.data
    num dw 1620H
    zero db 0
    ones db 0
.code
    mov dx,@data
    mov ds,dx
    mov cx,8
    mov ax,num
up: ror ax,01
    jnc dn
    inc ones
    jmp next
dn: inc zero
next:
    loop up
    ends
    end