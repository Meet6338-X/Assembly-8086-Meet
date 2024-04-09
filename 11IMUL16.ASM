;unsigned MUltiplication of 16 bit 
.model small
.data
    num1 dw -11H
    num2 dw 33H
    res  dw 0
.code
    mov ax,@data
    mov ds,ax

    mov ax,num1
    imul num2
    mov res,ax
ends
end