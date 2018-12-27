
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
                    
.model small
.stack 100h
.data
    msg db "Enter first digit: $"
    msg2 db "Enter second digit: $"
    msg3 db "SUM=: $;
    
    a db 0
    b db 0
    c db 0
    
    .code
        move ax, @data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
ret




