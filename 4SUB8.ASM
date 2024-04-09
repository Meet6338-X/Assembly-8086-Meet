.model small
.data
        num1 db 70
        num2 db 1
        res  db 0
.code
        mov ax,@data
        mov ds,ax

        mov al,num1
        sub al,num2
        mov res,al
 ends
end
