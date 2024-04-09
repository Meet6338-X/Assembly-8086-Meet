.model small
    project macro str1,str2
      local up,next,dn,exit
      mov si,offset str1
      mov di,offset str2
   up:mov al,[si]
      cmp al,'$'
      je exit
      cmp al,'Z'
      jle dn
      sub al,20H
      mov [di],al
      jmp next
   dn:
      add al,20H
      mov [di],al
 next:inc si
      inc di
      jmp up
 exit:
    endm
.data
     str1 db 'HeLLoWorLd $'
     str2 db 10 dup('$')
.code
      mov ax,@data
      mov ds,ax
      project str1,str2
      ends
      end
