.model small
.stack 100h
.data

 a db ?
 rem db ?
 
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
    
    mul a
    
    mov ah,0
    mov bl,10
    div bl
    mov rem,ah
    
    mov dl,al
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,rem
    add dl,48
    mov ah,2
    int 21h
    
    
    main endp
 end main