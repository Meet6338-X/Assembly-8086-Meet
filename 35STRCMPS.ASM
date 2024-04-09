.model small
printf macro str
        mov ah,09h
        mov dx,offset str
        int 21h
        endm
.data
        str_s   db      'Computer$'
        str_d   db      'computer$'
        len_s   db      0
        len_d   db      0
        msg_e   db      'Strings are Equal......$'
        msg_ne  db      'Strings are Not Equal..$'
.code
        mov ax,@data
        mov ds,ax
        mov es,ax
        mov si,offset str_s
  next: mov al,[si]
        cmp al,'$'
        jz exit
        inc len_s
        inc si
        jmp next
  exit:
        mov si,offset str_d
 next1: mov al,[si]
        cmp al,'$'
        jz exit1
        inc len_d
        inc si
        jmp next1
 exit1:
        mov cl,len_s
        cmp cl,len_d
        jnz exit2

        mov si,offset str_s
        mov di,offset str_d
up:     cmpsb
        jnz exit2
        dec cl
        jnz up
        printf msg_e
        jmp exit3

 exit2:
        printf msg_ne
 exit3:
        mov ah,4ch
        int 21h
        ends
        end