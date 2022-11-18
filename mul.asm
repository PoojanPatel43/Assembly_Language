org 100h

segment .data
num1: db 01
num2: db 05
num3: db 02
num4: db 02

msg2: db 0dh,0ah,"Multiplication is:$"






segment .text
mov dx,msg2
mov ah,09h
int 21h
mov al,[num3]
mov bl,[num4]
mul bl
add bl,40h
mov dl,bl
mov ah,02h
int 21h

mov ah,4ch
int 21h
