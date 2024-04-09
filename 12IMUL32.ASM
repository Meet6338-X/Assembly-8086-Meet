;unsigned MUltiplication of 32 bit 
.model small
.data
    num1 dw -1111H
    num2 dw 2222H
    res  dw 0
.code
    mov ax,@data
    mov ds,ax

    mov ax,word ptr num1
    imul word ptr num2
    mov res,ax

    mov ax,word ptr num1+2
    imul word ptr num2+2
    mov word ptr res+2,ax
ends
end