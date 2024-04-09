;add two 8-bit BCD Number
.model small
.data
    num1 db 99H
    num2 db 0H
    result dw 0
    msb db 0
.code
    mov ax,@data
    mov ds,ax
    mov al,num1
    add al,num2
    daa
    jnc dn
    inc msb
    dn:
    mov ah,msb
    mov result,ax
    ends
    end