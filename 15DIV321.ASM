;division of 32/16 bit
.model small
.data
    num1 dd 11111111H  
    num2 dw 2222H   
    que  db 0
    rem  db 0
.code
    mov dx,@data
    mov ds,dx
    mov es,dx

    mov dx,0

    mov ax,word ptr num1
    mov dx,word ptr num1+2
    div num2
    mov rem,dx
    mov que,ax
ends
end
