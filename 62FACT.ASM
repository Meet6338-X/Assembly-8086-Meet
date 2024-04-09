;factorical using Proc
.model small
.data
        num     db 5
        Fact    dw 1
.code
        mov ax,@data
        mov ds,ax
                
        mov ax,0
        call factoro
        mov ah,4ch
        int 21h
factoro Proc
                mov al,1
  next:         mul num
                dec num
                cmp num,0
                jnz next
                mov Fact,ax
                ret
endp

ends
end
