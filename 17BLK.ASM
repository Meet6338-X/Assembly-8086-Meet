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
   next:
        mov ax,[si]
        mov [di],ax
        add si,2
        add di,2
        loop next
   ends
   end

