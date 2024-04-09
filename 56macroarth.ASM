.model small
add_m macro a,b,c 
    mov ax,a
    add ax,b
    mov c,ax
    endm
sub_m macro a,b,c 
    mov ax,a 
    sub ax,b
    mov c,ax
    endm
mul_m macro a,b,c,d
    mov ax,a 
    mul b
    mov c,ax
    mov d,dx
    endm
div_m macro a,b,c,d 
    mov ax,a 
    div b
    mov c,al 
    mov d,ah
    endm
.data
    num1 dw 1632H
    num2 dw 1627H
    res_a dw 0
    res_s dw 0
    res_ma dw 0
    res_md dw 0
    d_quo db 0
    d_rem db 0
.code
    mov ax,@data
    mov ds,ax

    add_m num1,num2,res_a
    sub_m num1,num2,res_s
    mul_m num1,num2,res_ma,res_md
    div_m num1,num2,d_quo,d_rem
end