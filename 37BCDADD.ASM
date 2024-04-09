.model small
.data
    num1    dw  1632H
    num2    dw  1627H
    res     dw  0
    msb     db  0
.code
    mov ax,@data
    mov ds,ax

    mov al,byte ptr num1
    add al,byte ptr num2
    daa 
    mov byte ptr res,al

    mov al,byte ptr num1+1
    add al,byte ptr num2+1
    daa 
    mov byte ptr res+1,al

    jnc exit
    inc msb
exit:
    mov ah,4CH
    int 21H
    ends 
    end