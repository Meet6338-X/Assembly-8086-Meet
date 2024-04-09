;count positive nos
.model small
.data
    array dw -1632H,1657H,-1658H,1656H,-1609H,1611H,-1620H,-1627H,1646H,-1624H
    count_p db 0
.code
    mov dx,@data
    mov ds,dx
    mov cx,10
    mov si,offset array
up: mov ax,[si]
    rol ax,01
    jc dn
    inc count_p
dn: add si,2
    loop up
   ends
end