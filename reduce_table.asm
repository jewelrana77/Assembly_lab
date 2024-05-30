.model small
.stack 100h
.data

msg1 db 'enter the number : $'
msg2 db 10,13, '$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9h
    int 21h
    
    mov ah,1h
    int 21h
    
    mov ch,0ah
    mov cl,0h
    
    cmp al,3ah
    sub al,30h   ;30h==0
    mov bh,al
    mov bl,1h
   
   print:
   
   mov dx,offset msg2
    mov ah,9h
    int 21h
    
   mov dl,bh
   add dl,30h
   mov ah,2
   int 21h
   
   mov dl,'*'
   mov ah,2
   int 21h
   
   
   
   mov al,bl
   mul bh
    
   aam
    
   push ax
   
   mov ah,0h
   mov al,bl
   aaa
   
   mov cl,ah
   mov bl,al
   
   mov dl,cl
   add dl,30h
   mov ah,2
   int 21h
   
   mov dl,bl
   add dl,30h
   mov ah,2
   int 21h
   
   output:
   
   mov dl,'='
   mov ah,2
   int 21h
   
   pop ax
   
   mov dh,al
   
   
   mov dl,ah
   add dl,30h
   mov ah,2
   int 21h
   
   mov dl,dh
   add dl,30h
   mov ah,2
   int 21h
   
   inc bl
   dec ch
   cmp ch,0h
   jne print
  
  quittable:
  mov ah,4ch
  int 21h
   
   
   
   mov ah,4ch
   int 21h
   
   
   
   
    
   main endp
end main