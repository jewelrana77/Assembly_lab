.model small
.stack 100h
.data
ms db 0AH,0DH,"enter the number: $"
space db "  $"
.code

    main proc
        mov ax,@data
        mov ds,ax
        
        mov dx,offset ms
        mov ah,9h
        int 21h
        
        mov ah,01h
        int 21h
        
        mov ch,0ah
        mov cl,0h
        
        cmp al, 3ah
        ;sub al,30h
        mov bh,al
        mov bl,01h
        int 21h
        
        mov ah,0AH
        mov ah,oDHh
        int 21h
        
    ;tableloop:
        mov ah,02h    
        mov dl,bh
        int 21h
        