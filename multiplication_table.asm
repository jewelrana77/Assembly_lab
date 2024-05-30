.model small
.stack 100h
.data
msg db 10,13,"enter the value: $"

.code
.
main proc
    mov ax,@data
    mov ds,ax
    
    mov  dx,offset msg     ;enter the value show
    mov ah,9h
    int 21h
    
    mov ah,1h          ;input
    int 21h
    
    mov ch,0ah          ;check the table end
    mov cl,0h
    
    cmp al,3ah ;compare end
    sub al,30h           ; al=al-30
    mov  bh,al              ;bh=al
    mov bl,1h                     ;bl=1h
    
    tableloop:
    mov dl,0dh
    mov ah,2h
    int 21h
    
    mov dl,0ah
    mov ah,2h
    int 21h
    
    mov dl,bh
    add dl,30h
    mov ah,2
    int 21h
    
    mov dl,'*'
    mov ah,2h
    int 21h
    
    mov al,bl
    mul bh ;bh=bh*al
    
    aam
    
    push ax
    
    mov ah,0h
    mov al,bl
    aaa
    
    mov cl,ah
    mov bl,al
    
    mov dl,cl
    add dl,30h
    mov ah,2h
    int 21h
    
    
    mov dl,bl
    add dl,30h
    mov ah,2h
    int 21h
    
    
  outputtable:
  mov dl,'='
  mov ah,2h
  int 21h
  
  pop ax
  
  mov dh,al
  mov dl,ah
  add dl,30h
  mov ah,2h
  int 21h
  
  mov dl,dh
  add dl,30h
  mov ah,2h
  int 21h
  
  
  inc bl
  dec ch
  cmp ch,0h
  jne tableloop
  
  quittable:
  mov ah,4ch
  int 21h
  
    
    main endp
end main