.model small
.stack 100h
.data
msg1 db 'enter string : $'
msg2 db 'reverse string: $'


.code
main proc
mov ax,@data
mov ds,ax

mov cx,0
input:
mov ah,1
int 21h

cmp al,0dh
je newline
push ax
inc cx
jmp input

newline:
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

reverse:
pop dx
int 21h
loop reverse





mov ah,4ch
int 21h

main endp
end main


