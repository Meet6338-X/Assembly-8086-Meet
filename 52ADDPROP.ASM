;Addition Procedure
.model small
.data
        num1    dw      1620H
        num2    dw      1609H
        res     dw      0
.code
        mov     ax,@data
        mov     ds,ax
        call add_p
add_p PROC
        mov     bx,num1
        add     bx,num2
        mov     res,bx
        ret 
add_p endp
 ends
end