;write ALP to  Check D5 bit of number in BL
.model small
.data
    num db 32H
.code
    mov ax,@data
    mov ds,ax
    mov cx,8
    mov bl,num
up: 
    ror bl,01
    loop up
    jc dn
    mov al,0
    jmp exit
dn:
    mov al,1
exit:
    ends
    end