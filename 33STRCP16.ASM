;copy string 16 bit

.model small
.data
    str_s dw 'Shivam$'
    str_d dw 6 dup(0)
.code
    mov ax,@data
    mov ds,ax

    mov si,offset str_s
    mov di,offset str_d
next:
    mov ax,[si]
    cmp ax,'$'
    je exit
    mov [di],ax 
    inc si 
    inc di
    jmp next
exit:
   ends
   end
   