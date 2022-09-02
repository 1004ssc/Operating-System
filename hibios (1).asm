org 100h

section .text

start:

mov bs,0
mov al, 'H'
mov ah,0x0e
int 0x10

mov al, 'e'
mov ah, 0x0e
int 0x10

mov al, 'l'
mov ah, 0x0e
int 0x10

mov al, 'l'
mov ah, 0x0e
int 0x10

mov al, 'o'
mov ah, 0x0e
int 0x10

mov ax,0x4c00
int 0x21

