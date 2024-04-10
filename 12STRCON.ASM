.model small
printf macro str
        mov ah,09h
        mov dx,offset str
        int 21h
        endm

.data
        arr_s   db      'Meet $'
        arr_d   db      'Shah$'
        len_s   db      0
        len_d   db      0
        msg_b   db      'Result = $'
.code
        mov ax,@data
        mov ds,ax

        mov si,offset arr_s
        mov di,offset arr_d
 next:
        mov al,[si]
        cmp al,'$'
        jz exit
        inc len_s
        inc si
        jmp next
 exit:
        mov al,[di]
        mov [si],al
        cmp al,'$'
        jz exit1
        inc si
        inc di
        jmp exit
exit1:
        printf msg_b
        printf arr_s
        mov ah,4ch
        int 21h
        ends
        end
