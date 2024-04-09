;division of 8 bit
.model small
.data
    num1 db -32H  
    num2 db 32H   
    que  db 0
    rem  db 0
.code
    mov dx,@data
    mov ds,dx
 
    mov al,num1    
    idiv num2
    mov rem,ah
    mov que,al
ends
end
 