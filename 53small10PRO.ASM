.model small
.data
    array_S dw  1632H,1657H,1658H,1656H,1609H,1611H,1620H,1627H,1646H,1624H
    smallop dw  0
.code
    mov ax,@data
    mov ds,ax

    mov cx,9
    mov si,offset array_S

    call smallpro
    mov smallop,ax

smallpro PROC
    mov ax,[si]
up: 
    cmp al,[si+2]
    jc dn 
    mov ax,[si+2]
dn: 
    add si, 2
    loop up
smallpro endp
ends
end