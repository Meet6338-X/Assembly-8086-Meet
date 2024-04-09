.model small
.data
    array_S dw  632H,627H,609H,620H,611H
    smallop dw  0
.code
    mov ax,@data
    mov ds,ax

    mov cx,4
    mov si,offset array_S
    mov ax,[si]

up: 
    cmp al,[si+2]
    jc dn 
    mov ax,[si+2]

dn: 
    add si, 2
    loop up
    mov smallop,ax
ends
end