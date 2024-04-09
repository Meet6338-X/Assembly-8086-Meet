.model small
.data
    array_S db  32H,27H,09H,20H,11H
    bigop   db  0
.code
    mov ax,@data
    mov ds,ax

    mov cx,4
    mov si,offset array_S
    mov al,[si]

up: 
    cmp al,[si+2]
    jnc dn 
    mov al,[si+2]

dn: 
    add si, 2
    loop up
    mov bigop,al
ends
end