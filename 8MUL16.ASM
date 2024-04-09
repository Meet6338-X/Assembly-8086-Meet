;MUltiplication of 16 bit 
.model small
.data
    num1 dw 32H
    num2 dw 27H
    res  dw 0
.code
    mov ax,@data
    mov ds,ax

    mov ax,num1
    mul num2
    mov res,ax
ends
end
