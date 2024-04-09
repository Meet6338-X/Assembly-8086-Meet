.model small
.data
    array_S dw  -1632H,-1627H,-1609H,1620H,1611H
    smallop dw  0
.code
    mov ax,@data
    mov ds,ax
    mov cx,4
    mov si,offset array_S
    mov ax,[si]
up: 
    cmp ax,[si+2]
    jle dn 
    mov ax,[si+2]
dn: 
    add si,2
    loop up
    mov smallop,ax
ends
end