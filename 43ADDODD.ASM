.model small
.data
    array dw 1632H,1657H,1658H,1656H,1609H,1611H,1620H,1627H,1646H,1624H
    odd_no dw 0
    even_no dw 0
.code
    mov ax,@data
    mov ds,ax
    mov cx,10
    mov si,offset array
up: mov ax,[si]
    ror ax,01
    jnc exit
    rol ax,01
    add odd_no,ax
exit: add si, 2  
    loop up
    ends
    end
