;division of 16 bit
.model small
.data
    num1 dw -1627H  
    num2 dw 1627H
    que  dw 0
    rem  dw 0
.code
    mov dx,@data
    mov ds,dx
    mov dx,0

    mov ax,num1    
    idiv num2
    mov rem,dx
    mov que,ax
ends
end