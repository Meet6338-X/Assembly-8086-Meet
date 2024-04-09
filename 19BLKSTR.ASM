.model small
.data
        num1 db 1,2,3,4,6
        num2 db 5 dup(0)
.code
        mov ax,@data
        mov ds,ax
        mov es,ax
        mov si,offset num1
        mov di,offset num2
        mov cx,5
   next:
        movsb
        loop next
   ends
   end
