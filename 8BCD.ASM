.model small
add_BCD macro num1,num2,res
        mov ax,0
        mov al,num1
        add al,num2
        daa
        mov res,al
        endm

sub_BCD macro num1,num2,res
        mov ax,0
        mov al,num1
        sub al,num2
        das
        mov res,al
        endm

mul_BCD macro num1,num2,res
        local up
        mov ax,0
        mov cx,0
        mov cl,num2
     up:add al,num1
        daa
        loop up
        mov res,ax
        endm

div_BCD macro num1,num2,quo,rem
        local up
        mov ax,0

        mov al,num1
up:     sub al,num2
        das
        inc ah
        cmp al,num2
        jnc up
        mov quo,ah
        mov rem,al
        endm

.data
        num1    db      9
        num2    db      3
        res_add db      0
        res_sub db      0
        res_mul dw      0
        res_quo db      0
        res_rem db      0
.code
        mov ax,@data
        mov ds,ax

        add_BCD num1,num2,res_add
        sub_BCD num1,num2,res_sub
        mul_BCD num1,num2,res_mul
        div_BCD num1,num2,res_quo,res_rem

        mov ah,4ch
        int 21h

        ends
        end