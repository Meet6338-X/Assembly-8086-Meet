.model small
.data
    num db 09H
.code
    mov ax,@data
    mov ds,ax
    mov cx,8
    mov ax,0
    mov bl,num
up: ror bl,01
    jc dn
    inc al
dn: loop up
    ends
    end