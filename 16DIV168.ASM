;division of 16/8 bit
.model small
.data
    num1 dw 1632H  
    num2 db 27H   
    que  db 0
    rem  db 0
.code
    mov dx,@data
    mov ds,dx
    mov ax,num1
    div num2
    mov rem,ah
    mov que,al
ends
end
