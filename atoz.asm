.model small
.stack 100h
.data
 m db 'small letter a to z : $'
 .code
 main proc
    mov ax,@data
    mov ds,ax    
    lea dx,m    
    mov ah,9
    int 21h
    
    mov ah ,2
    int 21h
    
    mov cx,26
    mov dx,97
    print:
    mov ah,2
    int 21h
    inc dx
    loop print
    
    main endp
 end main