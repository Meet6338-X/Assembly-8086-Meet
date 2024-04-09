;count positive and negative numbers
.model small
.data
    array dw -1632H,1657H,-1658H,1656H,-1609H,1611H,-1620H,-1627H,1646H,-1624H
    count_p db 0
    count_n db 0 ; counter for negative numbers
.code
    mov dx,@data
    mov ds,dx
    mov cx,10
    mov si,offset array
up: mov ax,[si]
    rol ax,01
    jnc dn
    inc count_n
    jmp next
dn: 
    inc count_p
next:
    add si,2
    loop up
   ends
end