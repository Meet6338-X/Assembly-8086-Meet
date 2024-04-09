.model small
.data
    array_S db  32H,27H,20H,11H,09H
    smallop db  0
.code
    mov ax,@data
    mov ds,ax

    mov cx,4
    mov si,offset array_S
    mov al,[si]
up: 
    cmp al,[si+1]
    jc dn 
    mov al,[si+1]
dn: 
    inc si
    loop up
    mov smallop,al    
ends
end 