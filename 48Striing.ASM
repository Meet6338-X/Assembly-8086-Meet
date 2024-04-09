.model small
.data
    str1 db 'Meet$'
    len_s db 0
.code
    mov ax,@data
    mov ds,ax

    mov si,offset str1
up:
    mov al,[si]
    cmp al,'$'
    je exit
    inc si
    inc len_s
    jmp up
exit:
    mov dx,len_s
    ends
    end