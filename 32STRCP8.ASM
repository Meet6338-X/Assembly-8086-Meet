;copy string

.model small
.data
    str_s db 'Computer$'
    str_d db 10 dup(0)
.code
    mov ax,@data
    mov ds,ax

    mov si,offset str_s
    mov di,offset str_d
next:
    mov al,[si]
    cmp al,'$'
    je exit
    mov [di],al
    inc si 
    inc di
    jmp next
exit:
   ends
   end