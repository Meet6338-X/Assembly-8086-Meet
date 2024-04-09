.model small
.data
        num1 dw 1632H,1620H,1611H,1609H,1627H
        num2 dw 5 dup(0)
.code
        mov ax,@data
        mov ds,ax
        mov si,offset num1
        mov di,offset num2
        mov cx,5
        add si,8
        add di,4
   next:
        mov ax,[si]
        mov [di],ax
        sub si,2
        sub di,2
        loop next
   ends
   end 