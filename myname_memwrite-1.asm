;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; =================================================================
;; hello_memwrite.asm       Written by Shin seung cheol
;;===================================================================
;;
;; Print "Hello" by directly writing video memory
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ===================================================================
;                     Constants
; =================================================================

%include  "colors.asm"
%include  "ascii_codes.asm"

%include "init_segment_registers.asm"

main:

   mov byte [ypos], 8 
   mov byte [xpos], 0
   call print_hello
   
end_loop:
       jmp end_loop
       
print_hello:

     mov bl, GREEN
     mov al, CHAR_s
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_H
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_i
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_n
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_s
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_e
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_u
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_n
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_g
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_c
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_h
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_e
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_o
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_l
     call memwrite_print_char
     add byte [ypos], 1
     mov bl, GREEN
     mov al, CHAR_SPACE
     call memwrite_print_char
     add byte [ypos], 1
     ret
     
;;=================================================================
;     MEMORY WRITE PRINT CHAR
; =================================================================

memwrite_print_char:
   mov ah, bl
   mov cx, ax
   movzx ax, byte [ypos]
   mov dx, 160
   mul dx
   movzx bx, byte [ypos]
   shl bx,1
   mov di,0
   add di, ax
   add di, bx
   
   mov ax, cx
   stosw
   
   ret
   
;=================================================================
;                  Variables in Main Memory
;=================================================================

xpos db 0
ypos db 0

;================================================================
;                 Fill Boot Sector to 512 bytes
;===============================================================

times 510-($-$$) db 0
dw 0AA55h
   
   
   
   
     
       
