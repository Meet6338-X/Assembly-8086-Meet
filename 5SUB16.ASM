.model small
.data
        num1 dw 1632H
        num2 dw 1627H
        res  dw 0
.code
        mov ax,@data
        mov ds,ax

        mov ax,num1
        sub ax,num2
        mov res,ax
 ends
end
