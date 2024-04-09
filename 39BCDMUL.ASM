.model small
.data
    num1    dw  32H
    num2    dw  3H 
    res     dw  0
.code
    mov ax,@data
    mov ds,ax
    mov cx,num1
    mov bx,0
up: 
    mov bl,byte ptr num1
    add bl,byte ptr num2
    daa
    mov byte ptr res,bl

    mov bh,bl
    mov bl,byte ptr num1+1
    adc bl,byte ptr num2+1
    daa
    mov byte ptr res+1,bl
    mov bx,res
    loop up
    ends
    end
