.model small
printf macro msg
     mov ah, 09h
     mov dx,offset msg
     int 21h
     endm

.data
        str_s db 'Shivamx$'
        str_d db 20 dup('$')
        len_s db 0
        msg_s db 10,13,'Source String : $',10,13
        msg_r db 10,13,'String after reverse : $',10,13 
.code
        mov ax,@data
        mov ds,ax
        mov si, offset str_s
        mov di, offset str_d

        next:
                mov al,[si]
                cmp al,'$'
                jz exit
                inc si
                inc len_s
                jmp  next
         exit:
               dec si
               mov al,[si]
               mov [di],al
               inc di
               dec len_s
               jnz exit

               printf msg_s
               printf str_s
               printf msg_r
               printf str_d

               mov ah,4ch
               int 21h
               ends
               end 

                     
