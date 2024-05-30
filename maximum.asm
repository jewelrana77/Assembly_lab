.model small
.stack 100h


.code
 main proc
    mov ah,1
    int 21h
    mov dl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    cmp dl,bh           ;dl=destination and bh=source
         jl level1       ;ji=minimum value level1 level1=bh
         cmp dl,cl
         jl level2       ;level2=cl
    level1:
         cmp bh ,cl
         jg out1    ;out1=bh
         jmp out2    ;out2=
       
       out1:
       mov ah,2
       mov dl,bh
       int 21h
       
       out2:
       mov ah,2
       mov dl,cl
       int 21h
       jmp exit
       
   level2:
        cmp bl,cl
        jg out3
        jmp out4
        
        out3:
        mov ah,2
        mov dl,bl
        int 21h
        jmp exit
        
        out4:
        mov ah,2
        mov dl,cl
        int 21h
        jmp exit   
       
       
       exit:
       mov ah,4ch
       int 21h
       main endp
 end main
    
    
    