;MUltiplication of 8 bit 
.model small
.data
    num1 db 5H
    num2 db 3H
    res  db 0
.code
    mov ax,@data
    mov ds,ax

    mov al,num1
    mul num2
    mov res,al
ends
end