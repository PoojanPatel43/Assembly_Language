org 100h
segment .data
num: db 01h,02h,03h,08h,09h,03h
msg1: db 0dh,0ah, "Largest No. is $"

segment .text
mov dx,msg1
mov ah,09h
int 21h

mov bp,num
mov si,0
mov cl,04
mov bl,[bp+si]

back:cmp[bp+si+1],bl
jnb chk
mov bl,[bp+si+1]

chk:inc si
loop back
add bl,30h
mov dl,bl
mov ah,02h
int 21h

mov ah,4ch
int 21h
