org 100h

section.text

start:
mov dx,myname  
mov ah,9
int 0x21

mov ax,0x4c00
int 0x21

myname: db 'shinseungcheol',13,10,'$' 


