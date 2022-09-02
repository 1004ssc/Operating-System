org 100h

section.text

start:
mov dx,hello  
mov ah,9
int 0x21

mov ax,0x4c00
int 0x21

hello: db 'Hello DOS',13,10,'$' 
