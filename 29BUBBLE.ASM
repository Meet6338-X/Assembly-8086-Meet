;Bubble Sort 8 bit
.model small
.data
    array_S db 32H,27H,09H,20H,11H
.code
    mov ax,@data
    mov ds,ax

    mov bx,5
next:
    mov cx,4
    mov si,offset array_S

up:
    mov al,[si]
    cmp al,[si+1]
    jc dn
    xchg al,[si+1]
    xchg al,[si]
dn:
    inc si
    loop up
    dec bx
    jnz next
ends
end