.model small
.data
        arr_S   db      1,2,3,4,5H
        arr_d   db      5 dup(0)
.code
        mov ax,@data
        mov ds,ax
        mov es,ax

        mov cx,5
        mov si,offset arr_S
        mov di,offset arr_d
     up:
        movsb
        loop up

        mov ah,4ch
        int 21h
        
        ends
        end