
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h

.code
main proc
    
    
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    int 21h
    sub al, 48
    mov ah,0
    
    
    div bl
    
    
    mov dx,ax
    add dx,48
    
    mov ah,2
    int 21h

ret




