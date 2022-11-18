org 100h

segment .data
msg:db 13,10,"Octate equivalent :$"

segment .text
mov dx,msg
mov ah,09h
int 21h

bin_dec :db 100
bin_array :db 0
mov ax , 0
mov cl , 0
mov si, bin_array
mov al, byte[bin_dec]
mov bl,08h

back : mov ah,00h
div bl
mov [si],ah
cmp al,0
jz exit
inc cl
inc si
jmp back

exit :inc cl
disp:mov al,byte[si]
add al,30h
mov dl,al
mov ah,02
int 21h
dec si
dec cl
jnz disp

mov ah,4ch
int 21h
