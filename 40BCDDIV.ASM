.model small
.data
    num1 db 27H
    num2 db 3H
    rem  db ?
    quo  db 0
.code
    mov ax, @data
    mov ds, ax
    mov al, num1
up: 
    sub al, num2
    das
    inc quo
    cmp al, num2
    jnc up
    mov rem, al
    ends
end
