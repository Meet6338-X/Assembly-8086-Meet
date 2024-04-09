.model small
.data
        num1 dw 1632H,1627H,1611H,1609H,1620H
        num2 dw 5 dup(0)
.code
        mov dx,@data
        mov ds,dx

        mov cx,5

        mov si,offset num1
        mov di,offset num2
        add si,10
        add di,10
   next:
        mov ax,[si]
        mov [di],ax
        sub si,2
        sub di,2
        loop next
   ends
   end