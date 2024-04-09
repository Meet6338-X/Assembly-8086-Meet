.model small
.data
num1    db      64H
num2    db      5H
res     db      0
.code
        mov     ax,@data
        mov     ds,ax

        mov     al,num1
        add     al,num2
        mov     res,al
ends
end