;MUltiplication of 32 bit 
.model small
.data
    num1 dd 16321632H
    num2 dd 16271627H
    res  dq 0
.code
    mov ax,@data
    mov ds,ax

    mov ax,word ptr num1
    mul word ptr num2
    mov word ptr res,ax

    mov ax,word ptr num1+2
    mul word ptr num2+2
    mov word ptr res,ax
ends
end