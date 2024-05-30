.model small
.stack 100h
.data
str db 50 dup ('$')

msg1 db 'enter string: $'
pal  db 10,13,'palindrome string $'
npal db 10,13,'not palindrome string $'


.code

main proc
mov ax,@data
mov ds,ax

mov si,offset str

input:
mov ah,1
int 21h
cmp al,13
je here
mov str[si],al
inc si
jmp input

here:
mov di,si
dec di

check:
mov si,offset str
mov al,str[si]
mov bl,str[di]

cmp al,bl
jne notpalindrome

cmp si,di
jng palindrome

inc si
dec di
jmp check



palindrome:
mov dx,offset pal
mov ah,9
int 21h
jmp exit


notpalindrome:
mov dx,offset npal
mov ah,9
int 21h
jmp exit


exit:
mov ah,4ch
int 21h

main endp
end main
