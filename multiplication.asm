.model small
.stack 100h
.data
a db ?

msg1 db 10,13,"multiplication value: $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al
    
    mov ah,1
    int 21h
    sub al,48
    
    
   
    
    mul a   ;a=a*al
    
    aam
    
    
    
    
    mov bx,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,2 
    mov dl,bh
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
     
   
    
    
    main endp
end main