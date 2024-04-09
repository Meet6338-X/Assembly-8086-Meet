;y = a^2 + B^2 + C^2
.model small
sqr macro aa 
    mov ah,0
    mov al,aa
    mul al
 endm
addm macro aa1,bb1
    mov ax,aa1
    mov bx,bb1
    add ax,bx
 endm
.data
    a db 3
    b db 5
    c db 7
    y dw 0
    aa dw 0
    bb dw 0
    cc dw 0
.code
    mov ax,@data
    mov ds,ax

    sqr a
    mov aa,ax

    sqr b
    mov bb,ax

    sqr c
    mov cc,ax

    addm aa,bb
    mov aa,ax
    addm aa,cc
    mov y,ax

    ends
    end