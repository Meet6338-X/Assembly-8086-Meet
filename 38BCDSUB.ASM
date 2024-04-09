.model small
.data
    num1    dw  1632H
    num2    dw  1627H
    res     dw  0
.code
    mov ax,@data
    mov ds,ax

    mov al,byte ptr num1
    sub al,byte ptr num2
    das 
    mov byte ptr res,al

    mov al,byte ptr num1+1
    sbb al,byte ptr num2+1
    das 
    mov byte ptr res+1,al
    
    ends 
    end