org 100h

segment .data
pmsg: db 0dh,0ah,'Printer status $'
m1: db 0dh,0ah,'Reserved $'
m2: db 0dh,0ah,'Not reserved $'
m3: db 0dh,0ah,'I/O error$'
m4: db 0dh,0ah,'Printer is selected $'
m5: db 0dh,0ah,'Acknowledge $'
m6: db 0dh,0ah,'Out of time $'
m7: db 0dh,0ah,'Printer is busy $'
m8: db 0dh,0ah,'Out of paper $'
mtab: dw m1,m2,m3,m4,m5,m6,m7,m8

segment .text
mov dx,pmsg
mov ah,09h
int 21h

mov ah,02h ; ah = 02 = ah = 0000 0010
mov dx,0 ; dx = 0 
int 17h ; associtated with Pinters connected to the system

mov si,mtab

again: shr ah,01 ; ah = 0000 0010 ;  ah=  0000 0001  ; cf = 0
          push ax ; 
          jnc next ; jump if carry flag is CF = 0 to next as condition is true 
          mov dx,[si]
          mov ah,09h
          int 21h
next: pop ax
        add si,2 
        loop again
        mov ah,4ch
        int 21h