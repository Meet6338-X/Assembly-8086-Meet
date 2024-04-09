.model small
.data
    num1 db 60H,70H,80H,90H,10H,20H,30H,40H,50H,9H
    largeop db 0
.code
    mov ax,@data
    mov ds,ax

    mov cx,10
    mov si,offset num1
    mov al,[si]
    call largeprop
largeprop PROC
up:
    cmp al,[si+1]
    jnc dn
    mov al,[si+1]
dn:
    inc si
    mov largeop,al
    loop up
    ret
  largeprop  endp 
    ends
    end

