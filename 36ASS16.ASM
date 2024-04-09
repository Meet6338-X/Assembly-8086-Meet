.model small
.data
    array_S dw 1632H,1627H,1609H,1620H,1611H
.code
    mov ax,@data
    mov ds,ax
    mov bx,5
up1:mov cx,4
    mov si,offset array_S
up :mov ax[si]
    cmp ax,[si+2]
    jc next
    xchg ax,[si+2]
    xchg ax,[si]
next:add si,2
    loop up
    dec bx
    jnz up1
    ends
    end
    