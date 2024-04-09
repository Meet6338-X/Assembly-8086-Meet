.model small
.data
    num db 32H
    ones db 0
.code
    mov dx,@data
    mov ds,dx
    mov cx,8

    mov al,num
    call onecount
onecount PROC
up: ror al,01
    jnc next
    inc ones
next:
    loop up
    ret
onecount endp
    ends
    end
    