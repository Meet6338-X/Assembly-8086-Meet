;strlen
;$ represents 0 or null

.model small
.data
    str_s   db  'Shivam$'
    Len_s   db   0
.code
    mov ax,@data
    mov ds,ax
    mov si,offset str_s
next:
    mov al,[si]
    cmp al,'$'
    je exit
    inc Len_s
    inc si
    jmp next
exit:
    ends
    end