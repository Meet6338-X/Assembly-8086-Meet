.model small
.data
        n1      dd       16321627H
        n2      dd       16271632H
        res     dq       0
.code
        mov ax,@data
        mov ds,ax

        mov ax,word ptr n1
        add ax,word ptr n2
        mov word ptr res,ax

        mov ax,word ptr n1+2
        adc ax,word ptr n2+2
        mov word ptr res+2,ax
 ends
end
