;develop a program to find first n prime numbers
.model small
.data
num db 37h
pr db 0h
npr db 0h
.code
mov ax, @data
mov ds, ax
mov al, num
mov bl, 02h
mov bh,00h
mov dx,0000h
mov ah,00h

up:div bl 
cmp ah,00h
jne next
inc bh
next: cmp bh, 02h
je nprime
inc bl
mov ax, 0000h
mov dx, 0000h
mov al, num
cmp bl, num
jbe up

prime: 
inc pr
jmp exit

nprime: 
inc npr

exit:
mov ah, 4ch
int 21h
ends
end