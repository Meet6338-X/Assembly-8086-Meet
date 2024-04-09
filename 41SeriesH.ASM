.model small
.data
    array dw 1609H,1611H,1620H,1627H,1632H
    sum   dw 0
    msb   db 0
.code
    mov ax,@data
    mov ds,ax
    mov cx,5
    mov si,offset array
up: 
    mov ax,[si]
    add sum,ax
    jnc dn
    inc msb
dn: 
    add si,2
    loop up
    mov ah,4ch
    int 21h
    ends
end
