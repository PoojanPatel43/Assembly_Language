org 100h
segment .data

msg1: db 0dh,0ah,"Name: Poojan G Patel: $"
msg2: db 0dh,0ah,"PRN=1132190244: $"
msg3: db 0dh,0ah,"Class-SYBsc(CS) : $"
msg4: db 0dh,0ah,"Div A: $"

segment .text
mov dx,msg1
mov ah,09h
int 21h

segment .text
mov dx,msg2
mov ah,09h
int 21h

segment .text
mov dx,msg3
mov ah,09h
int 21h

segment .text
mov dx,msg4
mov ah,09h
int 21h

mov ah,4ch
int 21h